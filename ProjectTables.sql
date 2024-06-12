--create database Project 
Use Project


CREATE TABLE [User] (
    ID INT PRIMARY KEY IDENTITY,
    Password varchar(100) not null,
    UserId VARCHAR(100) not null,
);


CREATE TABLE Student (
    StudentId INT PRIMARY KEY IDENTITY,
    UserID INT,
	 ContactNo VarChar(11),
    Name VARCHAR(100),
    FOREIGN KEY (UserID) REFERENCES [User](ID)
);


CREATE TABLE Faculty (
    FacultyId INT PRIMARY KEY IDENTITY ,
    UserID INT,
	 ContactNo VarChar(11),
	 Type varchar(20),
    Name VARCHAR(100),
    FOREIGN KEY (UserID) REFERENCES [User](ID)

);



	CREATE TABLE Department (
  DepartmentID int PRIMARY KEY IDENTITY,  
   DeparmentName varchar(200),
    Description varchar(200)
);

CREATE TABLE Courses (
  CourseID int PRIMARY KEY identity , 
  CourseName varchar(50) NOT NULL,
  Description varchar(200)
);


CREATE TABLE Teacher ( 
	FacultyId int FOREIGN KEY REFERENCES Faculty(FacultyID),
	  CordinatorID int FOREIGN KEY REFERENCES Faculty(FacultyID),
	  TeacherId int primary Key IDENTITY

 
);

CREATE TABLE LabDemostrator (   
  FactaryID int FOREIGN KEY REFERENCES Faculty(FacultyID),
    CordinatorID int FOREIGN KEY REFERENCES Faculty(FacultyID),
	LabDemostratorID integer primary Key  IDENTITY
);

CREATE TABLE Schedule (
  ScheduleID integer PRIMARY KEY  IDENTITY , 
  CourseID integer FOREIGN KEY REFERENCES Courses(CourseID),
  Data varchar(50) NOT NULL, 
  StartingTime time,
  EndingTime time
);

--

CREATE TABLE CourseFaculty (
  CourseID integer FOREIGN KEY REFERENCES Courses(CourseID),
  FacultyID integer FOREIGN KEY REFERENCES Faculty(FacultyID)

);
CREATE TABLE DepartmentCourse (
  CourseID integer FOREIGN KEY REFERENCES Courses(CourseID),
  DepartmentID integer FOREIGN KEY REFERENCES Department(DepartmentID),

);

CREATE TABLE DepartmentFaculty (
  FacultyID integer FOREIGN KEY REFERENCES Faculty(FacultyId),
  DepartmentID integer FOREIGN KEY REFERENCES Department(DepartmentID),

);


CREATE TABLE Transcript (
StudentID integer Primary kEY IDENTITY,
  StundetID integer FOREIGN KEY REFERENCES Student(StudentID),
  CGPA float 

);


CREATE TABLE StudiedCourse (
  StudentID int FOREIGN KEY REFERENCES Student(StudentID),
  CourseID int FOREIGN KEY REFERENCES Courses(CourseID),
  Grade varchar(255),
);

CREATE TABLE StudentCourse (
  StudentID int FOREIGN KEY REFERENCES Student(StudentID),
  CourseID int FOREIGN KEY REFERENCES Courses(CourseID),

);




CREATE TABLE LdaRequest (
  LdaRequestID int PRIMARY KEY IDENTITY,
  CourseID int FOREIGN KEY REFERENCES Courses(CourseID),
  labDemonstrator int FOREIGN KEY REFERENCES LabDemostrator(LabDemostratorId)
);

CREATE TABLE Eligible_LDA (
EligibleLdID INT pRIMARY KEY IDENTITY,
  studentId int FOREIGN KEY REFERENCES Student(StudentId),
  LdaRequestid int FOREIGN KEY REFERENCES LdaRequest(LdaRequestID)
);

CREATE TABLE Selected_LDA (
  SeletedLda int primary key  IDENTITY ,

  eligible int FOREIGN KEY REFERENCES Eligible_LDA(EligibleLdID)
);


CREATE TABLE TaRequest (
  TaRequestID int PRIMARY KEY  IDENTITY,
  CourseID int FOREIGN KEY REFERENCES Courses(CourseID),
  Teacher int FOREIGN KEY REFERENCES Teacher(TeacherId),
  Type Varchar(10)
);


CREATE TABLE Eligible_Ta (
EligibleID INT pRIMARY KEY IDENTITY,
  studentId int FOREIGN KEY REFERENCES Student(StudentId),
  TaRequestid int FOREIGN KEY REFERENCES TaRequest(TaRequestID)
);




CREATE TABLE SelectedTa (
  SeletedTaId integer primary key IDENTITY,
  eligibleid integer FOREIGN KEY REFERENCES Eligible_Ta(EligibleLDID)
);
SELECT * FROM [uSER]






-- insertion  
-- Inserting sample data into [User] table
INSERT INTO [User] (Password, UserId)
VALUES
('password1', '22i-2709'),
('password2', '22i-2102'),
('password3', '21i-2931'),
('password4', '21i-2932'),
('password5', '21i-2933'),
('password6', '21i-2934'),
('password7', '21i-2935'),
('password8', '21i-2936'),
('password9', '21i-2937'),
('password10', '21i-2938'),
('password11', '21i-2939'),
('password12', '21i-2940'),
('password13', '21i-2941'),
('password14', '21i-2942'),
('password15', '21i-2943'),
('password16', '21i-2944'),
('password17', '21i-2945'),
('password18', '21i-2946'),
('password19', '21i-2947'),
('password20', '21i-2948'),
('password21', '21i-2949'),
('password22', '21i-2950'),
('password23', '21i-2951'),
('password24', '21i-2952'),
('password25', '21i-2953'),
('password26', '21i-2954'),
('password27', '21i-2955'),
('password28', '21i-2956'),
('password29', '21i-2957'),
('password30', '21i-2958'),
('password31', '21i-2959'),
('password32', '21i-2960'),
('password33', '21i-2961'),
('password34', '21i-2962'),
('password35', '21i-2963'),
('password36', '21i-2964'),
('password37', '21i-2965'),
('password38', '21i-2966'),
('password39', '21i-2967'),
('password40', '21i-2968'),
('password41', 'Muhammad Khan'),
('password42', 'Ali Ahmed'),
('password43', 'Fatima Riaz'),
('password44', 'Aisha Zia'),
('password45', 'Sanaullah Khan'),
('password46', 'Usman Ali'),
('password47', 'Hina Hassan'),
('password48', 'Nadia Khan'),
('password49', 'Ahmed Siddique'),
('password50', 'Safia Yasir');
select * from [uSER]
INSERT INTO [User] (Password, UserId) VALUES
('password51', 'Muhammad Khan'),
('password52', 'Ali Ahmed'),
('password53', 'Fatima Riaz'),
('password54', 'Aisha Zia'),
('password55', 'Sanaullah Khan'),
('password56', 'Usman Ali'),
('password57', 'Hina Hassan'),
('password58', 'Nadia Khan'),
('password59', 'Ahmed Siddique'),
('password60', 'Safia Yasir'),
('password61', 'Imran Khan'),
('password62', 'Sara Ahmed'),
('password63', 'Farhan Riaz'),
('password64', 'Maria Zia'),
('password65', 'Salman Ali'),
('password66', 'Ayesha Hassan'),
('password67', 'Asad Khan'),
('password68', 'Saba Siddique'),
('password69', 'Fahad Yasir'),
('password70', 'Zainab Khan');

-- Step 1: Drop the Foreign Key Constraint
-- Step 1: Drop the Foreign Key Constraints


-- Inserting sample data into Student table
INSERT INTO Student (UserID, ContactNo, Name) VALUES
(1, '03121234567', 'Muhammad Khan'),
(2, '03012345678', 'Ali Ahmed'),
(3, '03333456789', 'Fatima Riaz'),
(4, '03454567890', 'Aisha Zia'),
(5, '03215678901', 'Sanaullah Khan'),
(6, '03136789012', 'Usman Ali'),
(7, '03007890123', 'Hina Hassan'),
(8, '03318901234', 'Nadia Khan'),
(9, '03429012345', 'Ahmed Siddique'),
(10, '03201234567', 'Safia Yasir'),
(11, '03112345678', 'Hamza Ali'),
(12, '03023456789', 'Ayesha Bashir'),
(13, '03324567890', 'Saima Qureshi'),
(14, '03435678901', 'Abdullah Khan'),
(15, '03226789012', 'Zahra Aslam'),
(16, '03147890123', 'Faisal Amin'),
(17, '03038901234', 'Hassan Mahmood'),
(18, '03309012345', 'Madiha Shah'),
(19, '03411234567', 'Bilal Ahmed'),
(20, '03232345678', 'Rabia Nadeem'),
(21, '03153456789', 'Junaid Khan'),
(22, '03044567890', 'Sadia Ali'),
(23, '03335678901', 'Imran Ahmed'),
(24, '03446789012', 'Ayesha Iqbal'),
(25, '03257890123', 'Saad Raza'),
(26, '03168901234', 'Zoya Khan'),
(27, '03059012345', 'Usama Ali'),
(28, '03341234567', 'Nimra Ashraf'),
(29, '03462345678', 'Farhan Malik'),
(30, '03273456789', 'Sana Jamal'),
(31, '03174567890', 'Arsalan Khan'),
(32, '03065678901', 'Aisha Akhtar'),
(33, '03356789012', 'Ahmed Khan'),
(34, '03477890123', 'Hina Ali'),
(35, '03288901234', 'Zainab Arif'),
(36, '03189012345', 'Ali Rizwan'),
(37, '03071234567', 'Ayesha Yousaf'),
(38, '03362345678', 'Usman Ahmed'),
(39, '03483456789', 'Rabia Bashir'),
(40, '03294567890', 'Yasir Abbas');

-- Inserting sample data into Faculty table
INSERT INTO Faculty (UserID, ContactNo, Type, Name) VALUES
(41, '03129876543', 'Professor', 'Muhammad Khan'),
(42, '03018765432', 'Lecture', 'Ali Ahmed'),
(43, '03337654321', 'Professor', 'Fatima Riaz'),
(44, '03456543210', 'Lecture', 'Aisha Zia'),
(45, '03215432109', 'Professor', 'Sanaullah Khan'),
(46, '03134321098', 'Lecture', 'Usman Ali'),
(47, '03003210987', 'Professor', 'Hina Hassan'),
(48, '03312109876', 'Lecture', 'Nadia Khan'),
(49, '03421098765', 'Professor', 'Ahmed Siddique'),
(50, '03200987654', 'Lecture', 'Safia Yasir');

INSERT INTO Faculty (UserID, ContactNo, Type, Name) VALUES
(51, '03148765432', 'Professor', 'Imran Khan'),
(52, '03057654321', 'Lecture', 'Sara Ahmed'),
(53, '03366543210', 'Professor', 'Farhan Riaz'),
(54, '03475432109', 'Lecture', 'Maria Zia'),
(55, '03284321098', 'Professor', 'Salman Ali'),
(56, '03193210987', 'Lecture', 'Ayesha Hassan'),
(57, '03002109876', 'Professor', 'Asad Khan'),
(58, '03311098765', 'Lecture', 'Saba Siddique'),
(59, '03420987654', 'Professor', 'Fahad Yasir'),
(60, '03239876543', 'Lecture', 'Zainab Khan'),
(61, '03148765432', 'Professor', 'Amir Ahmed'),
(62, '03057654321', 'Lecture', 'Samina Riaz'),
(63, '03366543210', 'Professor', 'Sara Zia'),
(64, '03475432109', 'Lecture', 'Kashif Ali'),
(65, '03284321098', 'Professor', 'Mahnoor Hassan'),
(66, '03193210987', 'Lecture', 'Tariq Khan'),
(67, '03002109876', 'Professor', 'Sadia Siddique'),
(68, '03311098765', 'Lecture', 'Asma Yasir'),
(69, '03420987654', 'Professor', 'Imran Khan'),
(70, '03239876543', 'Lecture', 'Sara Ahmed');



-- Inserting sample data into Department table
-- Inserting sample data into Department table
INSERT INTO Department (DeparmentName, Description) VALUES
('Computer Science', 'Department of Computer Science'),
('Artificial Intelligence', 'Department of Artificial Intelligence'),
('Cyber Security', 'Department of Cyber Security'),
('Data Science', 'Department of Data Science'),
('Information Technology', 'Department of Information Technology');

-- Inserting sample data into Courses table
-- Inserting sample data into Courses table


INSERT INTO Courses (CourseName, Description) VALUES
('Operating Systems', 'Principles of operating systems and system programming'),
('Computer Networks', 'Fundamentals of computer networking and communication protocols'),
('Ethical Hacking', 'Introduction to ethical hacking and penetration testing'),
('Software Testing and Quality Assurance', 'Techniques for testing and ensuring software quality'),
('Parallel and Distributed Computing', 'Fundamentals of parallel and distributed computing systems'),
('Game Development', 'Introduction to game development and game design principles'),
('Programing fundamentals ', 'Applications and protocols for IoT devices and systems'),
('Embedded Systems', 'Design and programming of embedded systems and microcontrollers'),
('Data Base ', 'Processing and analysis of digital signals and audio data'),
('Cloud Security', 'Security measures and practices for cloud computing environments'),
('Computer Computing', 'Techniques for investigating and analyzing digital evidence'),
('Virtual Reality and Augmented Reality', 'Fundamentals of VR and AR technologies and applications'),
('OOP ', 'Applications of informatics in healthcare and medical research'),
('Robotics', 'Introduction to robotics and robotic systems'),
('Quantum Computing', 'Fundamentals of quantum computing principles and algorithms'),
('Bioinformatics', 'Analysis and interpretation of biological data using computational techniques'),
('Human-Computer Interaction', 'Principles of designing user-friendly computer interfaces'),
('Wireless Sensor Networks', 'Design and deployment of wireless sensor networks'),
('Physics', 'Applications of GIS in spatial analysis and mapping'),
('Calculus', 'Techniques for adaptive testing and assessment');


INSERT INTO Teacher (FacultyId, CordinatorID) VALUES
(1, null), (2, 1), (3, 1), (4, 1), (5, null),
(7, null), (6, 7), (8, 7), (9, null), (13, 9),
(14, null), (15, 14), (16, null), (17, 16), (18, null),
(19, 18), (10, null), (11, 10), (20, null), (12, 20);




select * from Faculty
-- Inserting data into LabDemostrator table
INSERT INTO LabDemostrator (FactaryID, CordinatorID) VALUES
(21, null), (22, 21), (23, null), (24, 23), (25, null),
(26, 25), (27, 25), (28, null), (29, 28), (30, null);



-- Inserting data into Schedule table
INSERT INTO Schedule (CourseID, Data, StartingTime, EndingTime) VALUES
(1, 'Monday', '09:00:00', '11:00:00'),
(2, 'Tuesday', '09:30:00', '11:30:00'),
(3, 'Wednesday', '10:00:00', '12:00:00'),
(4, 'Thursday', '10:30:00', '12:30:00'),
(5, 'Friday', '11:00:00', '13:00:00'),
(6, 'Saturday', '11:30:00', '13:30:00'),
(7, 'Sunday', '12:00:00', '14:00:00'),
(8, 'Monday', '12:30:00', '14:30:00'),
(9, 'Tuesday', '13:00:00', '15:00:00'),
(10, 'Wednesday', '13:30:00', '15:30:00'),
(11, 'Thursday', '14:00:00', '16:00:00'),
(12, 'Friday', '14:30:00', '16:30:00'),
(13, 'Saturday', '15:00:00', '17:00:00'),
(14, 'Sunday', '15:30:00', '17:30:00'),
(15, 'Monday', '16:00:00', '18:00:00'),
(16, 'Tuesday', '16:30:00', '18:30:00'),
(17, 'Wednesday', '17:00:00', '19:00:00'),
(18, 'Thursday', '17:30:00', '19:30:00'),
(19, 'Friday', '09:00:00', '11:00:00'),
(20, 'Saturday', '09:30:00', '11:30:00');

select * from Courses
select * from  Faculty
-- Inserting data into CourseFaculty table
INSERT INTO CourseFaculty (CourseID, facultyId) VALUES
(1, 2), (1, 2), (2, 3), (2, 13), (3, 4),
(3, 14), (4, 5), (4, 15), (5, 6), (5, 16),
(6, 7), (6, 17), (7, 8), (7, 18), (8, 9),
(8, 19), (9, 10), (9, 20), (10, 11), (10, 21),
(11, 12), (11, 22), (12, 13), (12, 23), (13, 14),
(13, 24), (14, 15), (14, 25), (15, 16), (15, 26),
(16, 17), (16, 27), (17, 18), (17, 28), (18, 19),
(18, 29), (19, 20), (19, 30), (20, 1), (20, 2),
(1, 3), (1, 13), (2, 4), (2, 14), (3, 5),
(3, 15), (4, 6), (4, 16), (5, 7), (5, 17),
(6, 8), (6, 18), (7, 9), (7, 19), (8, 10),
(8, 20), (9, 11), (9, 1), (10, 12), (10, 2),
(11, 13), (11, 3), (12, 14), (12, 4), (13, 15),
(13, 5), (14, 16), (14, 6), (15, 17), (15, 7),
(16, 18), (16, 8), (17, 19), (17, 9), (18, 20),
(18, 10), (19, 11), (19, 1), (20, 12), (20, 2),
(1, 13), (1, 3), (2, 14), (2, 4), (3, 15),
(3, 5), (4, 16), (4, 6), (5, 17), (5, 7),
(6, 18), (6, 8), (7, 19), (7, 9), (8, 20),
(8, 10), (9, 11), (9, 1), (10, 12), (10, 2);







-- Inserting data into DepartmentFaculty table
-- Inserting data into DepartmentCourse table
INSERT INTO DepartmentCourse (CourseID, DepartmentID) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 1), 
(6, 2), (7, 3), (8, 4), (9, 1), (10, 2),
(11, 3), (12, 4), (13, 1), (14, 2), (15, 3),
(16, 4), (17, 1), (18, 2), (19, 3), (20, 4),
(1, 2), (2, 3), (3, 4), (4, 1), (5, 2), 
(6, 3), (7, 4), (8, 1), (9, 2), (10, 3),
(11, 4), (12, 1), (13, 2), (14, 3), (15, 4),
(16, 1), (17, 2), (18, 3), (19, 4), (20, 1);



-- Inserting data into DepartmentFaculty table
INSERT INTO DepartmentFaculty (FacultyID, DepartmentID) VALUES
(1, 1), (1, 2),
(2, 1), (2, 2),
(3, 1), (3, 2),
(4, 1), (4, 2),
(5, 1), (5, 2),
(6, 1), (6, 3),
(7, 1), (7, 3),
(8, 1), (8, 3),
(9, 1), (9, 3),
(10, 1), (10, 3),
(11, 2), (11, 3),
(12, 2), (12, 3),
(13, 2), (13, 4),
(14, 2), (14, 4),
(15, 2), (15, 4),
(16, 2), (16, 4),
(17, 3), (17, 4),
(18, 3), (18, 4),
(19, 3), (19, 4),
(20, 3), (20, 4);


-- Inserting data into Transcript table
INSERT INTO Transcript (StundetID, CGPA) VALUES
(1, 3.8), (2, 3.5), (3, 3.2), (4, 3.9), 
(5, 3.7), (6, 3.6), (7, 3.4), (8, 3.3),
(9, 3.1), (10, 3.0), (11, 2.9), (12, 2.8),
(13, 2.7), (14, 2.6), (15, 2.5), (16, 2.4),
(17, 2.3), (18, 2.2), (19, 2.1), (20, 2.0),
(21, 3.7), (22, 3.6), (23, 3.4), (24, 3.3),
(25, 3.1), (26, 3.0), (27, 2.9), (28, 2.8),
(29, 2.7), (30, 2.6), (31, 2.5), (32, 2.4),
(33, 2.3), (34, 2.2), (35, 2.1), (36, 2.0),
(37, 3.8), (38, 3.5), (39, 3.2), (40, 3.9);

-- Inserting data into StudiedCourse table
INSERT INTO StudiedCourse (StudentID, CourseID, Grade)
VALUES
(1, 1, 'A'), (2, 1, 'B+'), (3, 2, 'A-'), (4, 2, 'B+'),
(5, 3, 'B'), (6, 3, 'C+'), (7, 4, 'B-'), (8, 4, 'A'),
(9, 5, 'A-'), (10, 5, 'B'), (11, 6, 'C'), (12, 6, 'A-'),
(13, 7, 'A'), (14, 7, 'B'), (15, 8, 'B+'), (16, 8, 'B-'),
(17, 9, 'C'), (18, 9, 'A-'), (19, 10, 'A'), (20, 10, 'B+'),
(21, 11, 'B-'), (22, 11, 'C+'), (23, 12, 'A-'), (24, 12, 'B'),
(25, 13, 'A'), (26, 13, 'B+'), (27, 14, 'C'), (28, 14, 'A-'),
(29, 15, 'B'), (30, 15, 'B+'), (31, 16, 'A-'), (32, 16, 'A'),
(33, 17, 'B+'), (34, 17, 'A-'), (35, 18, 'B-'), (36, 18, 'C'),
(37, 19, 'A'), (38, 19, 'B+'), (39, 20, 'C+'), (40, 20, 'A-'),
(1, 3, 'B-'), (2, 3, 'C+'), (3, 4, 'A-'), (4, 4, 'B'),
(5, 5, 'A'), (6, 5, 'B+'), (7, 6, 'C'), (8, 6, 'A-'),
(9, 7, 'B'), (10, 7, 'B+'), (11, 8, 'A-'), (12, 8, 'A'),
(13, 9, 'B+'), (14, 9, 'A-'), (15, 10, 'B-'), (16, 10, 'C'),
(17, 11, 'A'), (18, 11, 'B+'), (19, 12, 'C+'), (20, 12, 'A-'),
(21, 13, 'A'), (22, 13, 'B+'), (23, 14, 'B-'), (24, 14, 'C'),
(25, 15, 'A-'), (26, 15, 'B'), (27, 16, 'C'), (28, 16, 'A-'),
(29, 17, 'B'), (30, 17, 'B+'), (31, 18, 'A-'), (32, 18, 'A'),
(33, 19, 'B+'), (34, 19, 'A-'), (35, 20, 'B-'), (36, 20, 'C'),
(37, 1, 'A'), (38, 1, 'B+'), (39, 2, 'A-'), (40, 2, 'B+');






-- Inserting data into StudentCourse table

INSERT INTO StudentCourse (StudentID, CourseID) VALUES
(1, 6), (1, 4), (2,15), (2, 6), (3, 7),
(3, 8), (4, 9), (4, 10), (5, 11), (5, 12),
(6, 13), (6, 14), (7, 15), (7, 16), (8, 17),
(8, 18), (9, 19), (9, 20), (10, 1), (10, 2),
(11, 3), (11, 4), (12, 5), (12, 7), (1, 7),
(13, 8), (14, 3), (14, 10), (15, 11), (15, 19),
(16, 13), (16, 14), (17, 15), (17, 16), (18, 17),
(18, 18), (19, 19), (19, 20), (20, 1), (20, 2);





INSERT INTO StudiedCourse (StudentID, CourseID, Grade)
VALUES
(1, 5, 'B'), (2, 5, 'A'), (3, 6, 'B+'), (4, 6, 'A-'),
(5, 7, 'C'), (6, 7, 'B'), (7, 8, 'A-'), (8, 8, 'C+'),
(9, 9, 'B-'), (10, 9, 'A'), (11, 10, 'A'), (12, 10, 'B+'),
(13, 11, 'C+'), (14, 11, 'B-'), (15, 12, 'A-'), (16, 12, 'B'),
(17, 13, 'A'), (18, 13, 'B+'), (19, 14, 'C'), (20, 14, 'B-'),
(21, 15, 'B-'), (22, 15, 'C'), (23, 16, 'B'), (24, 16, 'A'),
(25, 17, 'A-'), (26, 17, 'B+'), (27, 18, 'C'), (28, 18, 'B-'),
(29, 19, 'A-'), (30, 19, 'B+'), (31, 20, 'B+'), (32, 20, 'A-'),
(33, 1, 'A'), (34, 1, 'B+'), (35, 2, 'A-'), (36, 2, 'B+'),
(37, 3, 'B'), (38, 3, 'C+'), (39, 4, 'B-'), (40, 4, 'A');




INSERT INTO StudentCourse (StudentID, CourseID)
VALUES
(1, 11), (1, 12), (2, 13), (2, 14), (3, 15),
(3, 16), (4, 17), (4, 18), (5, 19), (5, 20),
(6, 1), (6, 2), (7, 3), (7, 4), (8, 5),
(8, 6), (9, 7), (9, 8), (10, 9), (10, 10),
(11, 11), (11, 12), (12, 13), (12, 14), (13, 15),
(13, 16), (14, 17), (14, 18), (15, 19), (15, 20),
(16, 1), (16, 2), (17, 3), (17, 4), (18, 5),
(18, 6), (19, 7), (19, 8), (20, 9), (20, 10),
(21, 11), (21, 12), (22, 13), (22, 14), (23, 15),
(23, 16), (24, 17), (24, 18), (25, 19), (25, 20),
(26, 1), (26, 2), (27, 3), (27, 4), (28, 5),
(28, 6), (29, 7), (29, 8), (30, 9), (30, 10),
(31, 11), (31, 12), (32, 13), (32, 14), (33, 15),
(33, 16), (34, 17), (34, 18), (35, 19), (35, 20),
(36, 1), (36, 2), (37, 3), (37, 4), (38, 5),
(38, 6), (39, 7), (39, 8), (40, 9), (40, 10);


-- update 



UPDATE [User]
SET UserId = 'Imran Khan'
WHERe ID =  51 ;

UPDATE [User]
SET UserId = 'Sara Ahmed'
WHERe ID =  52 ;
UPDATE [User]
SET UserId = 'Farhan Riaz'
WHERe ID =  53 ;
UPDATE [User]
SET UserId = 'Maria Zia'
WHERe ID =  54 ;


UPDATE [User]
SET UserId = 'Salman Ali'
WHERe ID =  55 ;

UPDATE [User]
SET UserId = 'Ayesha Hassan'
WHERe ID =  56 ;

UPDATE [User]
SET UserId = 'Asad Khan'
WHERe ID =  57 ;

UPDATE [User]
SET UserId = 'Saba Siddique'
WHERe ID =  58 ;


UPDATE [User]
SET UserId = 'Fahad Yasir'
WHERe ID =  59  ;

UPDATE [User]
SET UserId = 'Zainab Khan'
WHERe ID =  60 ;

UPDATE [User]
SET UserId = 'Amir Ahmed'
WHERe ID =  61 ;

UPDATE [User]
SET UserId = 'Samina Riaz'
WHERe ID =  62 ;
UPDATE [User]
SET UserId = 'Sara Zia'
WHERe ID =  63 ;
UPDATE [User]
SET UserId = 'Kashif Ali'
WHERe ID =  64 ;

UPDATE [User]
SET UserId = 'Mahnoor Hassan'
WHERe ID =  65 ;



UPDATE [User]
SET UserId = 'Tariq Khan'
WHERe ID =  66 ;

UPDATE [User]
SET UserId = 'Sadia Siddique'
WHERe ID =  67 ;

UPDATE [User]
SET UserId = 'Asma Yasir'
WHERe ID =  68 ;


UPDATE [User]
SET UserId = 'Asif Muhammad'
WHERe ID =  69  ;

UPDATE [User]
SET UserId = 'Bilal jilani'
WHERe ID =  70 ;

Update Faculty 
set Name ='Asif Muhammad'
where UserID = 70

Update Faculty 
set Name ='Bilal jilani'
where UserID = 69

-- new creation 

CREATE TABLE LdAttendance (
  AttendanceID int PRIMARY KEY IDENTITY,
  ADate date NOT NULL,
  AStatus varchar(1),
  courseid integer FoREIGN KEY REFERENCES Courses(CourseId),
 LabDemostratorId  integer   FoREIGN KEY REFERENCES LabDemostrator([LabDemostratorID]) 

);


create table LabDemostratorAsisitant  (Ldid   integer  primary key IDENTITY ,
LdaAttendanceId int fOREIGN KEY REFERENCES LdAttendance(AttendanceID),
StudentId integer FOREIGN KEY REFERENCES Student(StudentId));



  create table  Ta_Assesment(
 Ta_Assesmentid  integer  primary key,
  courseid integer FoREIGN KEY REFERENCES Courses(CourseId),
 facultyid integer   FoREIGN KEY REFERENCES Faculty(FacultyId),
 totalAssigments integer );



 
create table TeacherAsisitant  (Taid   integer  primary key IDENTITY ,
Ta_Assesmentid int fOREIGN KEY REFERENCES Ta_Assesment(Ta_Assesmentid),
StudentId integer FOREIGN KEY REFERENCES Student(StudentId));



ALTER TABLE Ta_Assesment
ADD Type VARCHAR(10);


ALTER TABLE Courses
ADD HasLab Varchar(1);

update Courses 
set HasLab = 'Y'
where CourseID = 10
update Courses 
set HasLab = 'Y'
where CourseID = 11
update Courses 
set HasLab = 'Y'
where CourseID = 12
update Courses 
set HasLab = 'Y'
where CourseID = 13
update Courses 
set HasLab = 'Y'
where CourseID = 14
update Courses 
set HasLab = 'Y'
where CourseID = 15
update Courses 
set HasLab = 'Y'
where CourseID = 16
update Courses 
set HasLab = 'Y'
where CourseID = 17
update Courses 
set HasLab = 'Y'
where CourseID = 18
update Courses 
set HasLab = 'Y'
where CourseID = 19




select  c.CourseID  from  Courses c
inner join CourseFaculty cf on c.CourseID = cf.CourseID
inner join Faculty f on cf.FacultyID = f.FacultyId
inner join LabDemostrator ld on ld.FactaryID = f.FacultyId
select 
  
-- qureies 


select * from Faculty
select * from [User]

select * from LabDemostrator
select * from [User]

select distinct  c.CourseName from courses c, Faculty f 
where c.CourseID in (

select cf.CourseID from Courses c 
inner join CourseFaculty cf
on c.CourseID = cf.FacultyID 
inner join Faculty f on cf.FacultyID =f.FacultyId
where f.UserID =  50)

select * from Courses
select * from Courses
select T.FacultyId
from [user] u 
inner join Faculty f on u.ID= f.UserID 
inner join Teacher T on f.FacultyId = T.FacultyId
where u.id = 65;


SELECT * FROM TaRequest

SELECT * FROM [User]

select distinct  f.Name from courses c, Faculty f 
where c.CourseID in (

select cf.CourseID from Courses c 
inner join CourseFaculty cf
on c.CourseID = cf.FacultyID 
inner join Faculty f on cf.FacultyID =f.FacultyId
inner join [User] u on u.ID = f.UserID  and  f.UserID =  50)
select * from Courses


select * from LdaRequest




select * from [User]


select CourseID from Courses 
where CourseName = 'Calculus';


select * from TaRequest
select distinct  c.CourseName , f.Name , u.ID from Teacher   T inner join Faculty f  on t.FacultyId  = f.FacultyId or t.FacultyId = f.FacultyId 
inner join CourseFaculty cf on cf.FacultyID = f.FacultyId inner join [user] u on u.ID = f.UserID inner join Courses c on c.CourseID = cf.CourseID where u.ID = 54

select * from LdaRequest


select * from [User]
select * from [Faculty]

select * from TaRequest

SELECT distinct t.TeacherId  FROM Faculty f inner join Teacher t 
on   f.FacultyId = t.FacultyId  inner join CourseFaculty cf
on cf.FacultyID = f.FacultyId inner join Courses c
on cf.CourseID = c.CourseID
where c.CourseID = 1 AND T.FacultyId =4 


select TaRequestID from TaRequest where CourseID = 1 and Teacher = 2

select * from[User]

select * from LdaRequest
select * from LabDemostrator
select * from Faculty


select ld.LabDemostratorID, f.Name, c.CourseName
from [user] u 
inner join Faculty f on u.ID= f.UserID 
inner join LabDemostrator ld on f.FacultyId = ld.FactaryID
inner join CourseFaculty cf on ld.FactaryID = cf.FacultyID
inner join  courses c on cf.CourseID = c.CourseID 
where u.id = 61;

insert * from Selected
select * from Eligible_Ta
SELECT tr.LabDemostratorID
FROM LabDemostrator tr 
INNER JOIN Faculty f ON tr.FactaryID = f.FacultyId
INNER JOIN CourseFaculty cf ON cf.FacultyID = f.FacultyId
INNER JOIN Courses c ON c.CourseID = cf.CourseID
WHERE c.CourseID = 13 AND f.FacultyId =  23


SELECT distinct t.TeacherId  FROM Faculty f inner join Teacher t 
on   f.FacultyId = t.FacultyId  inner join CourseFaculty cf
on cf.FacultyID = f.FacultyId inner join Courses c
on cf.CourseID = c.CourseID
where c.CourseID = 1 AND T.FacultyId = 2


select distinct s.Name ,  s.StudentId , c.CourseName, f.Name from Student s 
inner join Eligible_Ta ET on Et.studentId = s.StudentId 
inner join TaRequest tr  on  eT.TaRequestid = TR.TaRequestID 
INNER JOIN Teacher t on T.TeacherId = Tr.Teacher 
inner join Faculty F on  T.FacultyId = F.FacultyId 
inner join [User] u on u.UserId = U.UserId
inner join Transcript Trans on Trans.StudentID = s.StudentId
inner join StudiedCourse sc on sc.StudentID = s.StudentId
inner join Courses C on sc.CourseID = c.CourseID
inner join  CourseFaculty cf   on f.FacultyId = cf.CourseID
where U.Id = 40 
select * from Eligible_Ta




SELECT DISTINCT S.Name  , C.CourseName , Et.EligibleLdID , tRANS.CGPA , Sc.Grade,c.CourseID
FROM Courses c
INNER JOIN CourseFaculty cf ON c.CourseID = cf.CourseID
INNER JOIN Faculty f ON cf.FacultyID = f.FacultyId
INNER JOIN [User] u ON f.UserID = u.ID
INNER JOIN Teacher T ON T.FacultyId = f.FacultyId
INNER JOIN TaRequest TR ON TR.CourseID = c.CourseID
INNER JOIN Eligible_Ta ET ON ET.TaRequestid = TR.TaRequestID
INNER JOIN Student S ON ET.studentId = S.StudentId
inner join  Transcript tRANS ON s.StudentId = tRANS.StudentID
inner join StudiedCourse SC on S.StudentId = Sc.StudentID and C.CourseID = sc.CourseID
where u.ID = 41 ; 

select c.CourseName , sc.Grade , s.Name  from StudiedCourse sc
inner join Student S on sc.StudentID = S.StudentId
inner join Courses C on C.CourseID = sc.CourseID
where S.Name in ('Ali Ahmed','Fatima Riaz');

SELECT distinct  Et.EligibleLdID 
FROM Courses c
INNER JOIN CourseFaculty cf ON c.CourseID = cf.CourseID
INNER JOIN Faculty f ON cf.FacultyID = f.FacultyId
INNER JOIN [User] u ON f.UserID = u.ID
INNER JOIN Teacher T ON T.FacultyId = f.FacultyId
INNER JOIN TaRequest TR ON TR.CourseID = c.CourseID
INNER JOIN Eligible_Ta ET ON ET.TaRequestid = TR.TaRequestID
INNER JOIN Student S ON ET.studentId = S.StudentId
INNER JOIN Transcript tRANS ON S.StudentId = tRANS.StudentID
INNER JOIN StudiedCourse SC ON S.StudentId = SC.StudentID AND C.CourseID = SC.CourseID

SELECT  top 1 Et.EligibleLdID , tRANS.CGPA, Sc.Grade
FROM Courses c
INNER JOIN CourseFaculty cf ON c.CourseID = cf.CourseID
INNER JOIN Faculty f ON cf.FacultyID = f.FacultyId
INNER JOIN [User] u ON f.UserID = u.ID
INNER JOIN Teacher T ON T.FacultyId = f.FacultyId
INNER JOIN TaRequest TR ON TR.CourseID = c.CourseID
INNER JOIN Eligible_Ta ET ON ET.TaRequestid = TR.TaRequestID
INNER JOIN Student S ON ET.studentId = S.StudentId
INNER JOIN Transcript tRANS ON S.StudentId = tRANS.StudentID
INNER JOIN StudiedCourse SC ON S.StudentId = SC.StudentID AND C.CourseID = SC.CourseID
where u.ID = 40
order by sc.Grade , tRANS.CGPA

select * from studiedCourse









SELECT 
    f.name AS ForeignKeyName,
    OBJECT_NAME(f.parent_object_id) AS TableName,
    COL_NAME(fc.parent_object_id, fc.parent_column_id) AS ColumnName,
    OBJECT_NAME (f.referenced_object_id) AS ReferencedTableName,
    COL_NAME(fc.referenced_object_id, fc.referenced_column_id) AS ReferencedColumnName
FROM 
    sys.foreign_keys AS f
INNER JOIN 
    sys.foreign_key_columns AS fc ON f.object_id = fc.constraint_object_id
WHERE 
    OBJECT_NAME(f.parent_object_id) = 'LdAttendance';



	CREATE TABLE LdAttendance (
  AttendanceID int PRIMARY KEY IDENTITY,
  ADate date NOT NULL,
  AStatus varchar(1),
   Ldid integer FoREIGN KEY REFERENCES LabDemostratorAsisitant(Ldid)
);

create table LabDemostratorAsisitant  (
Ldid   integer  primary key IDENTITY ,
StudentId integer FOREIGN KEY REFERENCES Student(StudentId),
  courseid integer FoREIGN KEY REFERENCES Courses(CourseId),
  LabDemostratorId  integer   FoREIGN KEY REFERENCES LabDemostrator([LabDemostratorID]) );



  create table  Ta_Assesment(
 Ta_Assesmentid  integer  primary key,
  courseid integer FoREIGN KEY REFERENCES Courses(CourseId),
 facultyid integer   FoREIGN KEY REFERENCES Faculty(FacultyId),
 totalAssigments integer );



 
create table TeacherAsisitant  (Taid   integer  primary key IDENTITY ,
Ta_Assesmentid int fOREIGN KEY REFERENCES Ta_Assesment(Ta_Assesmentid),
StudentId integer FOREIGN KEY REFERENCES Student(StudentId));



---- Hire the best 



----


select et.studentId from Eligible_Ta Et 
inner join TaRequest Tr on Et.TaRequestid = Tr.TaRequestID
inner join Teacher t ON tR.Teacher = T.TeacherId
INNER JOIN Faculty F on T.FacultyId = F.FacultyId
inner join	[User] u on u.ID = 41 and ET.EligibleLdID = 4
	WITH SortedData AS (
    SELECT  
        s.StudentId,
        S.Name,
        C.CourseName,
        ED.EligibleLdID AS eligibleLDid,
        tRANS.CGPA,
        Sc.Grade,
        c.CourseID,
        ROW_NUMBER() OVER (PARTITION BY s.StudentId, C.CourseID ORDER BY
            CASE
                WHEN Sc.Grade = 'A+' THEN 1
                WHEN Sc.Grade = 'A' THEN 2
                WHEN Sc.Grade = 'B+' THEN 3
				WHEN Sc.Grade = 'B' THEN 4
                WHEN Sc.Grade = 'B-' THEN 5
                ELSE 6
            END ASC,
            tRANS.CGPA DESC) AS RowNum
    FROM
        Courses c
        INNER JOIN CourseFaculty cf ON c.CourseID = cf.CourseID
        INNER JOIN Faculty f ON cf.FacultyID = f.FacultyId
        INNER JOIN [User] u ON f.UserID = u.ID
        INNER JOIN LabDemostrator Ld ON Ld.FactaryID = f.FacultyId
        INNER JOIN LdaRequest LDA ON LDA.CourseID = c.CourseID
        INNER JOIN Eligible_LDA ED ON ED.LdaRequestid = LDA.LdaRequestID
        INNER JOIN Student S on ED.studentId = S.StudentId
        INNER JOIN Transcript tRANS ON S.StudentId = tRANS.StudentID
        INNER JOIN StudiedCourse SC ON S.StudentId = SC.StudentID AND C.CourseID = SC.CourseID
		where u.ID = 2)
SELECT DISTINCT
    StudentId,
    Name,
    CourseName,
    eligibleLDid,
    CGPA,
    Grade,
    CourseID
FROM
    SortedData






select * from Student
select * from Courses
select * from Student
select * from Teacher
select * from Faculty
select * from [User]

insert into Selected_Ta (eligible) values (1); 

select *from Selected_Ta
select * from TaRequest
select * from Eligible_Ta


INSERT INTO Eligible_Ta (studentId, TaRequestid) VALUES (2, 2), (3, 2);
select * from TaRequest

select * from [User]


select * from Eligible_Ta

SELECT * FROM SelectedTa
SELECT SeletedTaId FROM SelectedTa 
WHERE eligibleid = 1

CREATE TRIGGER trg_DeleteTeacherAssistant
ON TeacherAsisitant
AFTER DELETE
AS
BEGIN
    INSERT INTO TaRequest (CourseID,Teacher, Type)
    SELECT ta.CourseID,t.TeacherId, ta.Type
    FROM deleted AS d
    JOIN Ta_Assesment AS ta ON ta.Ta_Assesmentid = d.Ta_Assesmentid
    JOIN Teacher AS t ON t.FacultyId = ta.facultyid;
END;



CREATE TRIGGER trg_DeleteLabDemonstratorAssistant
ON LabDemostratorAsisitant
AFTER DELETE
AS
BEGIN
    DECLARE @DeletedLDID INT;
    SELECT @DeletedLDID = Ldid FROM deleted;

    -- Insert a new LDA request for the deleted Lab Demonstrator Assistant
    INSERT INTO LdaRequest (CourseID, labDemonstrator)
    SELECT CourseID, LabDemostratorId
    FROM deleted;

END;


create  nonclustered index hijee on Guests ( Email)

VALUES (100000, 'abab', 4565215, 'dfghj', '2011-10-29');


create nonclustered index tb on Guests(GuestID)

select * from Guests where GuestID=34000

create index lol on Guests (GuestID)

create function id
-- Create the IsHotelFullyBooked function
CREATE FUNCTION dbo.howmanyguest(@HotelID INT,@Date DATE)
RETURNS BIT
AS
BEGIN
    DECLARE @TotalRooms INT;
    DECLARE @OccupiedRooms INT;

    -- Get the total number of rooms in the hotel
    SELECT @TotalRooms = COUNT(*)
    FROM Rooms
    WHERE HotelID = @HotelID;

    -- Get the number of rooms that are occupied on the given date
    SELECT @OccupiedRooms = COUNT(*)
    FROM Reservations
    WHERE RoomID IN (SELECT RoomID FROM Rooms WHERE HotelID = @HotelID)
    AND @Date BETWEEN CheckInDate AND CheckOutDate
    AND Status = 'Confirmed';

    -- If the number of occupied rooms equals the total number of rooms, the hotel is fully booked
    IF @OccupiedRooms >= @TotalRooms
        RETURN 1;
    ELSE
        RETURN 0;
END;
