# Automated Vulnerability Discovery

## Introduction

This is a 3-credit graduate course on automated vulnerability discovery taught by Prof. Matt Revelle.

The class meets in Gianforte Hall 210 at TR 1215&#8211;1330.

## Office Hours

My office is at Gianforte Hall 360D and my regular office hours are:

- TBD
<!-- - M: 1430&#8211;1600 -->


Please feel free to schedule an appointment with me outside of those hours.

## Course Description

We rely on computer software programs for a significant portion of our daily lives. While software brings many conveniences, the inherit complexity of computer systems cultivates various types of errors which can be exploited to achieve unintended effects. Latent errors abound in shipped software and their repercussions are often not fully appreciated by the software authors. In this course, we will learn about and use several different techniques for uncovering vulnerabilities in software.

## Major Topics

### Vulnerability Research
Vulnerability research is the task of identifying and analyzing vulnerabilities in computer systems. In practice, vulnerability research often involves both manual and automated components. In order to make use of automated vulnerability discovery tools, we will introduce and use disassemblers and debuggers to manually identify and understand vulnerabilities in example programs. Given a newly discovered vulnerability, we will learn how to develop a proof of vulnerability which demonstrates successful use of the vulnerability to achieve an effect.

### Binary Analysis
In the scope of this course, binary analysis refers to the application of vulnerability discovery techniques to programs that have been transformed from a source representation to an executable or library file containing instructions for execution on a CPU or virtual machine. Binary analysis is critical to vulnerability discovery since source code for commercial-of-the-shelf (COTS) software is frequently unavailable. Additionally, decisions made by the compiler can impact whether a software bug is an actual vulnerability and whether that vulnerability can be exercised. We will make use of software reverse engineering tools to review compiled programs. Our focus will be on C and C++ programs compiled for any of the major operating systems. We will review the structure of executable file formats and function control-flow graphs.

### Program Analysis
Program analysis is the task of automatically identifying certain properties of a program. In this course, we are focused on identifying properties that indicate possible vulnerabilities or undefined behavior. We will consider both static and dynamic program analysis techniques which may include: fuzzing, symbolic execution, data-flow analysis using abstract interpretation.

## Learning Outcomes

By the end of this course, students should:

- Be able to recognize standard vulnerability classes in software programs.
- Understand the strength and limitations of standard vulnerability discovery techniques.
- Know how to use and adapt existing automated vulnerability discovery tools.

## Means of Assessment

- Assignments (60%)
- Paper review (10%)
- Course project (30%)
    - Proposal (5%)
    - Report (15%)
    - Presentation (10%)

## Communication

Canvas will be used for course announcements and Discord will be used for discussions outside of class. Please ask any general course questions in the course Discord channel. This will provide an opportunity for both other classmates to answer and for the response to be shared with all.

Use this link to join the server: [https://discord.gg/EZtTd43kgk](https://discord.gg/EZtTd43kgk).

I can also be reached by email: matthew.revelle@montana.edu. Please only send emails from your official MSU email address. More information about your student email accounts can be found here: [https://www.montana.edu/email/](https://www.montana.edu/email/).

While I am often able to respond sooner, please understand that sometimes I will be unable to respond to Discord messages and emails until the next business day.

## Course Schedule

### Classes

{% include 'includes/table.md' %}

### <a name="assignments"></a>Assignments
Name | Description | Posted Date | Due Date
--- | --- | --- | ---
[Assignment 01: Software Vulnerabilities](assignments/01.md) | Write programs with vulnerabilities. | Sep 03 | Sep 17
Assignment 02: Fuzzing | Build a fuzzer for a target program. | Sep 24 | Oct 15
Assignment 03: Symbolic Execution | Build a basic symbolic execution engine. | Oct 20 | Nov 03
Assignment 04: Data-Flow Analysis | Write data-flow analyses. | Nov 17 | Dec 10

### <a name="course-project"></a>Course Project

Students will work in groups on a [semester-long course project](project.md).

### <a name="paper-review"></a>Paper Review

Each student will [review and present a paper](paper_review.md) to the class.

## Groups
The assignments and course project will be done as groups.

A few guidelines on how groups in our class will work:

- Each group should contain three or four members
- Group memberships can be different for different assignments, but this is not required
- Initial group membership and any membership changes must be shared with me
- The active group memberships at the time an assignment is released must be used for that assignment
- Course project proposals will list all members of the course project group; this list is not expected to change

Each group member is expected to contribute equally to every course assignment. Please let me know if a group member is not contributing equally. Individual members will be asked questions during presentations; failure to demonstrate mastery of the material will result in a lower assignment grade for that individual.

<!-- ### Finding Vulnerabilities (Week 2) -->
<!-- Find vulnerabilities in program binaries using reverse engineering tools. Students will identify different classes of vulnerabilities in programs. -->

<!-- ### Developing a Proof of Vulnerability (Week 4) -->
<!-- Given a potential vulnerability, craft a program input that exercises the vulnerability and demonstrates an effect. Students will write a proof of vulnerability for different classes of vulnerabilities. -->

<!-- ### Fuzzing for Crashes (Week 6) -->
<!-- Fuzzing can be used to find software bugs that result in crashing the target program. Different approaches can be used to generate inputs and many different inputs can trigger the same bug. Triaging and deduplicating these crashes is an important step in identifying any underlying vulnerability. Students will conduct experiments using fuzzers to produce program crashes. -->

<!-- ### Symbolic Execution for Input Generation (Week 8) -->
<!-- Symbolic execution permits the execution of a program with the inclusion of symbolic variables, rather than only concrete variables. Symbolic execution can be used to find inputs which will match the values of certain conditional branches. Students will use symbolic execution to recover input constraints. -->

<!-- ### Data-flow Analysis (Week 10) -->
<!-- Certain functions or code patterns may indicate a potential vulnerability, but only if a particular path of execution through the program is possible. Students will develop data-flow queries that check for vulnerable paths from a source (starting points) to a sink (end point). -->

<!-- ### Final Project (Week 14) -->
<!-- Students will propose a project that they will work on in small groups. Projects will involve using or extending existing tools or bulding new tools for automated vulnerability discovery. -->

## Reference Material
We will refer to research papers, technical reports of vulnerabilities, and technical documentation of vulnerability discovery tools.

Some relevant links are provided below.

### Books
- [The Fuzzing Book](https://www.fuzzingbook.org)
- [Program Analysis (an Appetizer)](https://arxiv.org/abs/2012.10086)

### Articles
- [Understanding SMT solvers: An Introduction to Z3](https://de-engineer.github.io/SMT-Solvers/)
- [A deep dive into an NSO zero-click iMessage exploit](https://googleprojectzero.blogspot.com/2021/12/a-deep-dive-into-nso-zero-click.html)

### Tools
- [The LibAFL Fuzzing Library](https://aflplus.plus/libafl-book/)
- [Z3 SMT solver](https://www.microsoft.com/en-us/research/project/z3-3/)
- [angr documentation](https://docs.angr.io/en/latest/)
- [CodeQL documentation](https://codeql.github.com/docs/)

## Exams
There are no written examinations. In lieu of written examinations there will be oral examination components included in the evaluation of assignments and paper reviews.

Every group member is expected to be prepared to answer questions demonstrating understanding of their assignment submission and reviewed paper.

## Grading Scale
- 93+: A
- 90+: A-
- 87+: B+
- 83+: B
- 80+: B-
- 77+: C+
- 73+: C
- 70+: C-
- 67+: D+
- 63: D
- 60: D-

## Collaboration Policy
Students are encouraged to discuss course material and collaborate at a high level.

When it comes to assignments, you may:

- Share ideas with other students in the class.
- Help other students troubleshoot problems.
- Give hints or provide textbook page numbers/slide numbers to students seeking help.

You may **not**:

- Share your code and solutions with other students not in your group.
- Submit solutions that your group did not write.
- Modify another group's solution and claim it as your own.

## Generative AI Policy
In this course, you are encouraged to use generative AI to summarize course material and search for answers to specific questions. All uses of generative AI are permitted. However, I **strongly** recommend you review and ensure you understand any generated code use in assignments. Submitting and presenting code you do not understand will result in failing the oral examination components of the assignments.

When requesting help from the instructor or TA, please be open about your use of generative AI. This helps us understand which portions of the project code you have not written.

## Late Assignment Policy
Assignments are due end-of-day in the [Anywhere on Earth (AoE)](https://time.is/Anywhere_on_Earth) time zone for the posted due date. Before Nov 3, Mountain Time is 6 hours behind AoE; after Nov 3, Mountain Time is 5 hours behind AoE. If an assignment is due end-of-day Oct 30 AoE, then it is due Oct 31, 5:59 AM Mountain Time. If it is due end-of-day Nov 10 AoE, then it is due Nov 11, 4:59 AM Mountain Time.

Assignments can be submitted up to 48 hours after the deadline but will receive a late penalty.

Time | Penalty
--- | ---
<= 24 hours | 25%
<= 48 hours | 50%
> 48 hours | 100% (no credit)

## Academic Misconduct
Academic integrity is critical in education and scientific research.

Please contact the instructor immediately if you believe you have mistakenly acted in a way that could be considered academic misconduct. The instructor can help you determine if a violation has occurred and then appropriately manage any violation.

If the instructor discovers academic misconduct on their own, it will be reported to the Dean of Students.

All students should be familiar with the [Code of Student Conduct](https://www.montana.edu/policy/student_conduct/). This document defines academic misconduct and the most pertinent sections are included below for reference.

**Cheating**—giving, using, or attempting to use unauthorized materials, information, notes, study aids, or other devices in any academic exercise including unauthorized communication of information. Examples of cheating include copying from another student's paper, receiving unauthorized assistance during a quiz, test, or examination, using books, notes, or other devices such as calculators unless authorized, acquiring without authorization copies of tests or examinations before the scheduled exercise, copying reports, laboratory work, computer programs, or files from other students.

**Plagiarism**—presenting the work of another as one's own without proper acknowledgment. Examples of plagiarism include submitting as one's own work the work of another student, a ghostwriter, or a commercial writing service, directly quoting from a source without acknowledgment, paraphrasing or summarizing another's work without acknowledging the source, or using facts, figures, graphs, charts, or information without acknowledging the source. Plagiarism may occur orally or in writing and may involve computer programs and files, research designs, distinctive figures of speech, ideas and images, or any other information that belongs to another person and is not acknowledged as such. Inadvertent or unintentional misuse or appropriation of another's work (such as relying heavily on source material that is not expressly acknowledged) is considered plagiarism. It is also considered Plagiarism when collaborating on work with the knowledge that the collaboration is not authorized or will not be reported.

**Facilitating academic misconduct**—giving assistance or attempting to assist another in the commitment of academic misconduct.
