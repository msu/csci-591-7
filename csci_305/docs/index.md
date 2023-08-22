# Concepts of Programming Languages

## Introduction

Programming language concepts are reviewed in CSCI 305 using a combination of three approaches. In this course you will:

* Study formal descriptions, abstractions, and features of programming languages
* Develop and build a project in a functional programming language
* Design and implement an interpreter for an object-oriented programming language

## Course Outcomes

By the end of this course, students should be able to:

* Describe a programming language in terms of syntax, semantics, and other characteristic features
* Formally define the syntax and semantics of a programming language
* Understand scope and lifetime as it pertains to programming constructs
* Understand the differences and similarities of the object-oriented and functional programming paradigms
* Design and implement a programming language

## Communication

Discord will be used for course announcements and discussions outside of class. Please ask any general course questions in the course Discord channel. This will provide an opportunity for the instructor, TA, or other classmates to answer and for the response to be shared with all.

The instructor and TA can also be reached by email.

## Books

Three books will be used as references in this course, all of them should be available to you for free.

The primary textbook is:

- _Programming Languages: Principles and Paradigms_ by Maurizio Gabbrielli and Simone Martini (2010)
    - [https://link.springer.com/book/10.1007/978-1-84882-914-5](https://link.springer.com/book/10.1007/978-1-84882-914-5)
    - Use the "Access via your institution" link on the page to access the book PDF.

We will additionally use two books which are available for free online:

- The community-updated version of _Real World Haskell_
    - [https://github.com/tssm/up-to-date-real-world-haskell](https://github.com/tssm/up-to-date-real-world-haskell)
- _Learn You a Haskell for Great Good!_ by Miran Lipovača
    - [http://learnyouahaskell.com/chapters](http://learnyouahaskell.com/chapters)
- _Crafting Interpreters_ by Robert Nystrom (2021)
    - [https://craftinginterpreters.com/contents.html](https://craftinginterpreters.com/contents.html)

These books are available in print, but please note that only the older, original version of _Real World Haskell_ is available in print.

## Equipment

A computer with a Haskell development environment is needed for this course. [Visual Studio Code](https://code.visualstudio.com) with the [Haskell extension](https://marketplace.visualstudio.com/items?itemName=haskell.haskell) is the recommended code editor. The Glasgow Haskell Compiler and Haskell Language Server should both be installed using [GHCup](https://www.haskell.org/ghcup/). Additional setup instructions will be shared at the beginning of the course.

Labs that involve collaborative programming will occasionally be held during class meetings. Students with laptops should bring them to those labs. If you do not have a laptop, the instructor or TA will help ensure you are grouped with a student who does have a laptop.

## Content

Lecture slides and reading assignments can be found in the class schedule table. The worksheets and project assignments tables will link to Brightspace quizzes or Gradescope assignments.

## Course Schedule

Please note the schedule is likely to evolve over the semester.

### Classes

Name | Type | Reading | Date
--- | --- | --- | ---
Course Introduction	| Lecture |	CI 3 | 2023 Aug 23 (W)
Haskell Introduction | Lecture | RWH 1,2 | 2023 Aug 25 (F)
Representing Code | Lab | RWH 3,4 | 2023 Aug 28 (M)
Syntax, Semantics, and Defining PLs | Lecture | PLPP 2.1–2.3 | 2023 Aug 30 (W)
Parsing Expressions | Lab |  | 2023 Sep 01 (F)
Labor Day |  |  | 2023 Sep 04 (M)
Syntax, Semantics, and Defining PLs | Lecture | PLPP 2.4–2.8 | 2023 Sep 06 (W)
Abstract Machines | Lecture | PLPP 1.1–1.2.2 | 2023 Sep 08 (F)
Abstract Machines | Lecture | PLPP 1.2.3–1.4 | 2023 Sep 11 (M)
Haskell Interlude | Lab |  | 2023 Sep 13 (W)
Type Systems and Data Types | Lecture | PLPP 8.1–8.6 | 2023 Sep 15 (F)
Type Systems and Data Types | Lecture | PLPP 8.1–8.6 | 2023 Sep 18 (M)
Data Structures in Haskell | Lab | RWH 13 | 2023 Sep 20 (W)
Names and The Environment | Lecture | PLPP 4, CI 11 | 2023 Sep 22 (F)
Names and The Environment | Lecture | PLPP 4, CI 11 | 2023 Sep 25 (M)
Haskell Topic | Lecture | PLPP 3 | 2023 Sep 27 (W)
Foundations | Lecture | PLPP 3 | 2023 Sep 29 (F)
Memory Management | Lecture | PLPP 5, 8.12 | 2023 Oct 02 (M)
Memory Management | Lecture | PLPP 5, 8.12 | 2023 Oct 04 (W)
Haskell Interlude | Lab |  | 2023 Oct 06 (F)
Midterm Review | Lecture |  | 2023 Oct 09 (M)
Midterm | Exam |  | 2023 Oct 11 (W)
Control Structure | Lecture | PLPP 6 | 2023 Oct 13 (F)
Control Structure | Lecture | PLPP 6 | 2023 Oct 16 (M)
Haskell Interlude | Lab |  | 2023 Oct 18 (W)
Object-Oriented Programming | Lecture | PLPP 10, CI 12 | 2023 Oct 20 (F)
Object-Oriented Programming | Lecture | PLPP 10, CI 12 | 2023 Oct 23 (M)
Object-Oriented Programming | Lecture | PLPP 10, CI 12 | 2023 Oct 25 (W)
Control Abstraction | Lecture | PLPP 7, CI 10 | 2023 Oct 27 (F)
Control Abstraction | Lecture | PLPP 7, CI 10 | 2023 Oct 30 (M)
Type Classes | Lab | RWH 6, LYAH 3 | 2023 Nov 01 (M)
Polymorphism and Data Abstraction | Lecture | PLPP 8.7, 9, CI 13 | 2023 Nov 03 (W)
Polymorphism and Data Abstraction | Lecture | PLPP 8.7, 9, CI 13 | 2023 Nov 06 (F)
Functors and Applicative Functors | Lecture | LYAH 11 | 2023 Nov 08 (W)
Veteran's Day |  |  | 2023 Nov 10 (F)
Functors and Applicative Functors | Lecture | LYAH 11 | 2023 Nov 13 (M)
Higher-Kinded Types | Lecture |  | 2023 Nov 15 (W)
Monoids and Monads | Lecture | LYAH 11, 12, RWH 14, 15 | 2023 Nov 17 (F)
Fall Break |  |  | 2023 Nov 20 (M)
Fall Break |  |  | 2023 Nov 22 (W)
Fall Break |  |  | 2023 Nov 24 (F)
Monoids and Monads | Lecture | LYAH 11, 12, RWH 14, 15 | 2023 Nov 27 (M)
Programming with Classes and Closures | Lab |  | 2023 Nov 29 (W)
History of Programming Languages | Lecture | PLPP 13 | 2023 Dec 01 (F)
Static vs Dynamic Typing | Lecture |  | 2023 Dec 04 (M)
TBA |  |  | 2023 Dec 06 (W)
Final Review |  |  | 2023 Dec 08 (F)
Start of Finals Week |  |  | 2023 Dec 11 (M)


### Exams

Exams will be taken in class and are closed book and closed notes.

See the class schedule for the date of the midterm exam.

### Worksheets

TBA

Name | Posted Date | Due Date
--- | --- | ---

### Project Assignments

Name | Description | Posted Date | Due Date
--- | --- | --- | ---
Representing Code | Use data types to represent the syntax grammar of the Lox language. | 2023 Aug 28 | TBA
Parsing Expressions | Use a parser combinator to parse Lox source code and produce Lox ASTs using previously-defined data types. | 2023 Sep 01 | TBA
Evaluating Expressions | Implement interpreter to handle Lox programs without statements and control flow. | 2023 Sep 06 | TBA
Statements and State | Add statements for defining variables, assigning values to variables, and the print built-in. Incorporate environment and scopes. | 2023 Sep 22 | TBA
Control Flow | Support conditional execution and looping by adding if-statements, while-loops, and for-loops. | 2023 Oct 04 | TBA
Functions | Functions can be defined, called, and may close over lexically-scoped variables (i.e., closures are supported). | 2023 Oct 18 | TBA
Resolving and Binding | Navigate state and scopes to resolve symbols | 2023 Oct 30 | TBA
Classes and Inheritance | Declare classes and create instances. Support class inheritance. | 2023 Nov 13 | TBA

## Labs

Scheduled classes will be used for both lectures and labs. Labs are used for small group discussion and group programming assignments. Lab groups should have between two to four members and at least one member should have a laptop.

## Collaboration Policy

Students are encouraged to discuss course material and collaborate at a high level. All work is submitted and graded as an individual.

There will be group programming assignments where close collaboration between group members is encouraged. For those group programming assignments, there are no restrictions on sharing code within members of your group.

With the exception of group assignments, sharing copies of your worksheets or code with other students and submitting the work of other students is **not** permitted and is academic misconduct.


## Grading

All assignments must be submitted through [Gradescope](https://www.gradescope.com).

Percentage | Item | Description
--- | --- | ---
20% | **Worksheets** | Homework and in-class worksheets will be assigned throughout the course. Worksheets will be weighted according to their expected difficulty level.
40% | **Project** | A course-long project to incrementally build an interpreter for the Lox programming language. The project is broken into many smaller assignments. The assignments will be weighted according to their expected difficulty level.
40% | **Exams** | In-class midterm and final exams will be used to assess your knowledge of topics covered in the course. The midterm and final exams are weighted equally.

## Late Assignment Policy

Assignments can be submitted up to 48 hours after the deadline. All late assignments will be penalized unless you use a late pass. Every student is granted a single late pass which can be used to remove the late submission penalty. Please note that exams are not assignments.

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
