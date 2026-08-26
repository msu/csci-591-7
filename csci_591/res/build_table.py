import csv
import sys

def main(argv=None):
    if argv is None:
        argv = sys.argv

    dates_path = argv[1]
    classes_path = argv[2]
    out_path = argv[3]

    dates = []
    with open(dates_path, newline='') as dates_file:
        rdr = csv.reader(dates_file, delimiter=',', quotechar='"')
        for row in rdr:
            dates.append(row)

    classes = []
    with open(classes_path, newline='') as classes_file:
        rdr = csv.reader(classes_file, delimiter=',', quotechar='"')
        for row in rdr:
            classes.append(row)

    table_lines = [
        'Date | Topic | Reading \n',
        ' --- | --- | ---\n',
        ]

    idx = 0
    for (date, holiday) in dates:
        if holiday:
            table_lines.append(f'{date} | {holiday} |\n')
        else:
            (topic, links, reading) = classes[idx]
            if links:
                topic = f'{topic} ({links})'
            table_lines.append(f'{date} | {topic} | {reading}\n')
            idx += 1

    # for (date,), (topic, links, reading) in zip(dates, classes):
    #     if links:
    #         topic = f'{topic} ({links})'
    #     table_lines.append(f'{date} | {topic} | {reading}\n')

    with open(out_path, "w") as out_file:
        out_file.writelines(table_lines)

    return 0

if __name__ == '__main__':
    sys.exit(main())
