#!/usr/bin/env bash

set -euo pipefail
umask 022

archive_url="${CSCI591_ARCHIVE_URL:-https://msu.github.io/csci-591-7/csci591-site.tar.gz}"
checksum_url="${archive_url}.sha256"
version_url="${CSCI591_VERSION_URL:-${archive_url%/*}/deploy-version.txt}"

: "${CSCI591_DEST_DIR:?Set CSCI591_DEST_DIR to the absolute server directory for /revelle/csci591}"

case "$CSCI591_DEST_DIR" in
  /*/www/csci591)
    ;;
  *)
    echo "Refusing unexpected destination: $CSCI591_DEST_DIR" >&2
    echo "CSCI591_DEST_DIR must be an absolute path ending in /www/csci591" >&2
    exit 64
    ;;
esac

dest_parent=$(dirname -- "$CSCI591_DEST_DIR")
dest_name=$(basename -- "$CSCI591_DEST_DIR")

if [[ ! -d "$dest_parent" ]]; then
  echo "Destination parent does not exist: $dest_parent" >&2
  exit 66
fi

lock_file="${CSCI591_LOCK_FILE:-${dest_parent}/.${dest_name}.deploy.lock}"
if command -v flock >/dev/null 2>&1; then
  exec 9>"$lock_file"
  if ! flock -n 9; then
    echo "Another course-site deployment is already running"
    exit 0
  fi
fi

download_dir=$(mktemp -d)
stage_dir=""
backup_dir=""

cleanup() {
  rm -rf -- "$download_dir"

  if [[ -n "${stage_dir:-}" && -e "$stage_dir" ]]; then
    rm -rf -- "$stage_dir"
  fi

  if [[ -n "${backup_dir:-}" && -e "$backup_dir" ]]; then
    if [[ ! -e "$CSCI591_DEST_DIR" ]]; then
      mv -- "$backup_dir" "$CSCI591_DEST_DIR"
    else
      rm -rf -- "$backup_dir"
    fi
  fi
}
trap cleanup EXIT

curl -fsSL --retry 3 --connect-timeout 15 --max-time 30 \
  "$version_url" -o "$download_dir/deploy-version.txt"

if [[ -f "$CSCI591_DEST_DIR/deploy-version.txt" ]] && \
   cmp -s "$download_dir/deploy-version.txt" "$CSCI591_DEST_DIR/deploy-version.txt"; then
  echo "Course site is already current"
  exit 0
fi

stage_dir=$(mktemp -d "${dest_parent}/.${dest_name}.new.XXXXXX")
backup_dir="${dest_parent}/.${dest_name}.previous.$$"

curl -fsSL --retry 3 --connect-timeout 15 --max-time 120 \
  "$archive_url" -o "$download_dir/csci591-site.tar.gz"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 120 \
  "$checksum_url" -o "$download_dir/csci591-site.tar.gz.sha256"

(
  cd "$download_dir"
  sha256sum -c csci591-site.tar.gz.sha256
)

while IFS= read -r member; do
  case "$member" in
    /*|../*|*/../*|*/..)
      echo "Unsafe archive member: $member" >&2
      exit 65
      ;;
  esac
done < <(tar -tzf "$download_dir/csci591-site.tar.gz")

tar -xzf "$download_dir/csci591-site.tar.gz" -C "$stage_dir"

if [[ ! -f "$stage_dir/index.html" || ! -f "$stage_dir/deploy-version.txt" ]]; then
  echo "Downloaded archive is not a complete course site" >&2
  exit 65
fi

chmod -R a+rX "$stage_dir"

if [[ -e "$CSCI591_DEST_DIR" ]]; then
  mv -- "$CSCI591_DEST_DIR" "$backup_dir"
fi

mv -- "$stage_dir" "$CSCI591_DEST_DIR"
stage_dir=""

if [[ -e "$backup_dir" ]]; then
  rm -rf -- "$backup_dir"
fi

echo "Deployed course site version $(<"$CSCI591_DEST_DIR/deploy-version.txt")"
