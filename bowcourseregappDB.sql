--
-- File generated with SQLiteStudio v3.4.4 on Wed Dec 6 18:12:06 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Courses
DROP TABLE IF EXISTS Courses;

CREATE TABLE IF NOT EXISTS Courses (
    CourseID          INTEGER PRIMARY KEY,
    CourseCode        TEXT,
    CourseName        TEXT,
    CourseDescription TEXT,
    CourseFee         NUMERIC,
    Term              INTEGER,
    Program           TEXT,
    StartDate         TEXT,
    EndDate           TEXT
);

INSERT INTO Courses (
                        CourseID,
                        CourseCode,
                        CourseName,
                        CourseDescription,
                        CourseFee,
                        Term,
                        Program,
                        StartDate,
                        EndDate
                    )
                    VALUES (
                        1,
                        'PR111',
                        'Project Management',
                        'This course introduces the fundamental principles necessary for successful management of software projects.',
                        1500,
                        1,
                        'Diploma',
                        '2023-09-01',
                        '2023-12-20'
                    );

INSERT INTO Courses (
                        CourseID,
                        CourseCode,
                        CourseName,
                        CourseDescription,
                        CourseFee,
                        Term,
                        Program,
                        StartDate,
                        EndDate
                    )
                    VALUES (
                        2,
                        'PR333',
                        'Advanced Project Management 1',
                        'This course builds upon the fundamental principles necessary
for successful management of software projects learned in Project Management - PR111 and PR222. Learners will also explore the different project management methodologies in place to manage projects of different scope.',
                        500,
                        1,
                        'Post Diploma',
                        '2023-09-01',
                        '2023-12-20'
                    );

INSERT INTO Courses (
                        CourseID,
                        CourseCode,
                        CourseName,
                        CourseDescription,
                        CourseFee,
                        Term,
                        Program,
                        StartDate,
                        EndDate
                    )
                    VALUES (
                        3,
                        'C++111',
                        'C++ Programming Fundamentals ',
                        'Learners analyze basic software and technology problems and develop a good programming style and logical thinking to write structured instruction that addresses those problems.',
                        1500,
                        2,
                        'Diploma',
                        '2023-09-01',
                        '2023-12-20'
                    );

INSERT INTO Courses (
                        CourseID,
                        CourseCode,
                        CourseName,
                        CourseDescription,
                        CourseFee,
                        Term,
                        Program,
                        StartDate,
                        EndDate
                    )
                    VALUES (
                        10,
                        'C++111',
                        'Computer Maintenance',
                        'Learners analyze basic software and technology problems and develop a good programming style and logical thinking to write structured instruction that addresses those problems.',
                        300,
                        1,
                        'Certificate',
                        '2023-11-15',
                        '2023-11-23'
                    );

INSERT INTO Courses (
                        CourseID,
                        CourseCode,
                        CourseName,
                        CourseDescription,
                        CourseFee,
                        Term,
                        Program,
                        StartDate,
                        EndDate
                    )
                    VALUES (
                        12,
                        'COMPM1111',
                        'Computer Maintenance',
                        'Learners explore the internet of things through  the construction of simple interfaces between computers and the devices they control.',
                        2000,
                        3,
                        'Diploma',
                        '2023-09-01',
                        '2023-12-20'
                    );

INSERT INTO Courses (
                        CourseID,
                        CourseCode,
                        CourseName,
                        CourseDescription,
                        CourseFee,
                        Term,
                        Program,
                        StartDate,
                        EndDate
                    )
                    VALUES (
                        13,
                        'COMPM1111',
                        'Computer Maintenance',
                        'Learners explore the internet of things through the construction of simple interfaces between computers and the devices they control.',
                        1000,
                        2,
                        'Certificate',
                        '2023-09-01',
                        '2023-12-20'
                    );

INSERT INTO Courses (
                        CourseID,
                        CourseCode,
                        CourseName,
                        CourseDescription,
                        CourseFee,
                        Term,
                        Program,
                        StartDate,
                        EndDate
                    )
                    VALUES (
                        14,
                        'C++111',
                        'Computer Maintenance',
                        'Learners explore the internet of things through the construction of simple interfaces between computers and the devices they control.',
                        1000,
                        2,
                        'Post Diploma',
                        '2023-11-16',
                        '2023-11-25'
                    );


-- Table: Enrolment
DROP TABLE IF EXISTS Enrolment;

CREATE TABLE IF NOT EXISTS Enrolment (
    EnrolmentID   INTEGER PRIMARY KEY,
    UserID        INTEGER NOT NULL,
    CourseID      INTEGER NOT NULL,
    EnrolmentDate TEXT,
    FOREIGN KEY (
        UserID
    )
    REFERENCES Users (UserID),
    FOREIGN KEY (
        CourseID
    )
    REFERENCES Courses (CourseID) 
);

INSERT INTO Enrolment (
                          EnrolmentID,
                          UserID,
                          CourseID,
                          EnrolmentDate
                      )
                      VALUES (
                          4,
                          1,
                          13,
                          '2023-11-22'
                      );


-- Table: Feedback
DROP TABLE IF EXISTS Feedback;

CREATE TABLE IF NOT EXISTS Feedback (
    FeedbackID INTEGER PRIMARY KEY,
    FullName   TEXT,
    Email      TEXT,
    Subject    TEXT,
    ContactNo  NUMERIC,
    Message    TEXT
);

INSERT INTO Feedback (
                         FeedbackID,
                         FullName,
                         Email,
                         Subject,
                         ContactNo,
                         Message
                     )
                     VALUES (
                         1,
                         'Mike Shinoda',
                         'mike.s@gmail.com',
                         'Course Inquiry',
                         8251239877,
                         'Time and Schedule of SODV1201'
                     );

INSERT INTO Feedback (
                         FeedbackID,
                         FullName,
                         Email,
                         Subject,
                         ContactNo,
                         Message
                     )
                     VALUES (
                         2,
                         'Nestle Juco',
                         'n.juco463@mybvc.ca',
                         'Course Feedback',
                         15872887331,
                         'Course was relevant to the program.'
                     );

INSERT INTO Feedback (
                         FeedbackID,
                         FullName,
                         Email,
                         Subject,
                         ContactNo,
                         Message
                     )
                     VALUES (
                         3,
                         'Avril Lavigne',
                         'april@gmail.com',
                         'Feedback',
                         15872887331,
                         'Program phasing was properly scheduled.'
                     );

INSERT INTO Feedback (
                         FeedbackID,
                         FullName,
                         Email,
                         Subject,
                         ContactNo,
                         Message
                     )
                     VALUES (
                         4,
                         'John Doe',
                         'Doe@Yahoo.com',
                         'Inquiry',
                         15872887444,
                         'Testing Feedback and Inquiry Form.'
                     );


-- Table: Users
DROP TABLE IF EXISTS Users;

CREATE TABLE IF NOT EXISTS Users (
    UserID      INTEGER PRIMARY KEY,
    FirstName   TEXT,
    LastName    TEXT,
    Email       TEXT,
    Phone       NUMERIC,
    Address     TEXT,
    Gender      TEXT,
    DateofBirth TEXT,
    Department  TEXT,
    Program     TEXT,
    Username    TEXT,
    Password    TEXT,
    PasswordChk TEXT
);

INSERT INTO Users (
                      UserID,
                      FirstName,
                      LastName,
                      Email,
                      Phone,
                      Address,
                      Gender,
                      DateofBirth,
                      Department,
                      Program,
                      Username,
                      Password,
                      PasswordChk
                  )
                  VALUES (
                      1,
                      'Nestle',
                      'Juco',
                      'nrjuco@yahoo.com',
                      8255587624,
                      '65 Everwillow Close, SW, Calgary',
                      'Male',
                      '1982-04-22',
                      'Software Development',
                      'Diploma',
                      'Nestle',
                      '1111',
                      '1111'
                  );

INSERT INTO Users (
                      UserID,
                      FirstName,
                      LastName,
                      Email,
                      Phone,
                      Address,
                      Gender,
                      DateofBirth,
                      Department,
                      Program,
                      Username,
                      Password,
                      PasswordChk
                  )
                  VALUES (
                      2,
                      'Felix',
                      'Crampatanta',
                      'felixc@yahoo.com',
                      8139947586,
                      '123 Main St., SW, Calgary',
                      'Male',
                      '1984-01-01',
                      'Software Development',
                      'Post Diploma',
                      'Felix',
                      '2222',
                      '2222'
                  );

INSERT INTO Users (
                      UserID,
                      FirstName,
                      LastName,
                      Email,
                      Phone,
                      Address,
                      Gender,
                      DateofBirth,
                      Department,
                      Program,
                      Username,
                      Password,
                      PasswordChk
                  )
                  VALUES (
                      3,
                      'Jess',
                      'Wilkinson',
                      'jessw@yahoo.com',
                      8657459988,
                      '101 2nd St., SE, Calgary',
                      'Female',
                      '1990-11-24',
                      'Software Development',
                      'Certificate',
                      'Jess',
                      '3333',
                      '3333'
                  );

INSERT INTO Users (
                      UserID,
                      FirstName,
                      LastName,
                      Email,
                      Phone,
                      Address,
                      Gender,
                      DateofBirth,
                      Department,
                      Program,
                      Username,
                      Password,
                      PasswordChk
                  )
                  VALUES (
                      4,
                      'Nestle',
                      'Juco',
                      'admin@yahoo.com',
                      9876543210,
                      '65 Everwillow Close, SW, Calgary',
                      'Male',
                      '1982-04-22',
                      'Software Development',
                      'Admin',
                      'Nestle',
                      'admin',
                      'admin'
                  );

INSERT INTO Users (
                      UserID,
                      FirstName,
                      LastName,
                      Email,
                      Phone,
                      Address,
                      Gender,
                      DateofBirth,
                      Department,
                      Program,
                      Username,
                      Password,
                      PasswordChk
                  )
                  VALUES (
                      5,
                      'Felix',
                      'Crampatanta',
                      'felixc@yahoo.com',
                      8139947586,
                      '123 Main St., SW, Calgary',
                      'Male',
                      '1984-01-01',
                      'Software Development',
                      'Admin',
                      'Felix',
                      'admin',
                      'admin'
                  );

INSERT INTO Users (
                      UserID,
                      FirstName,
                      LastName,
                      Email,
                      Phone,
                      Address,
                      Gender,
                      DateofBirth,
                      Department,
                      Program,
                      Username,
                      Password,
                      PasswordChk
                  )
                  VALUES (
                      6,
                      'Jess',
                      'Wilkinson',
                      'jessw@yahoo.com',
                      8657459988,
                      '101 2nd St., SE, Calgary',
                      'Female',
                      '1990-11-24',
                      'Business Administration',
                      'Admin',
                      'Jess',
                      'admin',
                      'admin'
                  );

INSERT INTO Users (
                      UserID,
                      FirstName,
                      LastName,
                      Email,
                      Phone,
                      Address,
                      Gender,
                      DateofBirth,
                      Department,
                      Program,
                      Username,
                      Password,
                      PasswordChk
                  )
                  VALUES (
                      7,
                      'Admin',
                      'Admin',
                      'admin@yahoo.com',
                      1234567890,
                      '1 Admin St.',
                      'Male',
                      '1989-06-20',
                      'Software Development',
                      'Admin',
                      'Admin',
                      'admin',
                      'admin'
                  );

INSERT INTO Users (
                      UserID,
                      FirstName,
                      LastName,
                      Email,
                      Phone,
                      Address,
                      Gender,
                      DateofBirth,
                      Department,
                      Program,
                      Username,
                      Password,
                      PasswordChk
                  )
                  VALUES (
                      8,
                      'Troy',
                      'Lee',
                      'troy@hotmail.com',
                      5463217987,
                      '12 5th Ave., SE, Calgary',
                      'Male',
                      '1995-11-21',
                      'Entertainment Arts',
                      'Diploma',
                      'Troy',
                      '1234',
                      '1234'
                  );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
