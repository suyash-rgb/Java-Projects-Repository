
Keep Database name : training_institution

CREATE TABLE `admin` (
  `adminID` varchar(20) NOT NULL,
  `adminPassword` varchar(15) NOT NULL
);

INSERT INTO `admin` (`adminID`, `adminPassword`) VALUES
('admin@gmail.com', 'admin@123');


CREATE TABLE `admissionrequest` (
  `requestID` int NOT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `courseID` int DEFAULT NULL,
  `instituteID` varchar(20) NOT NULL,
  `requestDate` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `rejected` tinyint(1) NOT NULL
);

CREATE TABLE `course` (
  `courseID` int NOT NULL,
  `courseName` varchar(20) NOT NULL,
  `price` int NOT NULL,
  `seats` int NOT NULL,
  `filledseats` int NOT NULL DEFAULT '0'
);

CREATE TABLE `course_institute` (
  `courseID` int NOT NULL,
  `instituteID` varchar(20) NOT NULL
);

CREATE TABLE `faculty` (
  `facultyID` int NOT NULL,
  `facultyName` varchar(20) NOT NULL,
  `instituteID` varchar(20) NOT NULL,
  `courseID` int NOT NULL
);

CREATE TABLE `feedback` (
  `feedbackID` int NOT NULL,
  `userID` varchar(20) NOT NULL,
  `instituteID` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `feedbackDate` date NOT NULL
);

CREATE TABLE `institute` (
  `instituteID` varchar(20) NOT NULL,
  `instituteName` varchar(50) NOT NULL,
  `institutePassword` varchar(15) NOT NULL,
  `startDate` date NOT NULL,
  `address` varchar(100) NOT NULL
);

CREATE TABLE `student` (
  `userID` varchar(20) NOT NULL,
  `emailID` varchar(20) NOT NULL,
  `studentName` varchar(40) NOT NULL,
  `qualification` varchar(20) NOT NULL,
  `studentPassword` varchar(15) NOT NULL,
  `number` varchar(13) NOT NULL,
  `address` varchar(100) NOT NULL
);

CREATE TABLE `student_course` (
  `userID` varchar(20) NOT NULL,
  `courseID` int NOT NULL
);

ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

ALTER TABLE `admissionrequest`
  ADD PRIMARY KEY (`requestID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `courseID` (`courseID`),
  ADD KEY `instituteID` (`instituteID`);

ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`);

ALTER TABLE `course_institute`
  ADD KEY `courseID` (`courseID`),
  ADD KEY `instituteID` (`instituteID`);

ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyID`),
  ADD KEY `courseID` (`courseID`),
  ADD KEY `instituteID` (`instituteID`);

ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackID`),
  ADD KEY `instituteID` (`instituteID`),
  ADD KEY `userID` (`userID`);

ALTER TABLE `institute`
  ADD PRIMARY KEY (`instituteID`);

ALTER TABLE `student`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `emailID` (`emailID`);

ALTER TABLE `student_course`
  ADD KEY `userID` (`userID`),
  ADD KEY `courseID` (`courseID`);

ALTER TABLE `admissionrequest`
  MODIFY `requestID` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `course`
  MODIFY `courseID` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `faculty`
  MODIFY `facultyID` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `feedback`
  MODIFY `feedbackID` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `admissionrequest`
  ADD CONSTRAINT `admissionrequest_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `student` (`userID`),
  ADD CONSTRAINT `admissionrequest_ibfk_2` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  ADD CONSTRAINT `admissionrequest_ibfk_3` FOREIGN KEY (`instituteID`) REFERENCES `institute` (`instituteID`);

ALTER TABLE `course_institute`
  ADD CONSTRAINT `course_institute_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  ADD CONSTRAINT `course_institute_ibfk_2` FOREIGN KEY (`instituteID`) REFERENCES `institute` (`instituteID`);

ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  ADD CONSTRAINT `faculty_ibfk_2` FOREIGN KEY (`instituteID`) REFERENCES `institute` (`instituteID`);

ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`instituteID`) REFERENCES `institute` (`instituteID`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `student` (`userID`);

ALTER TABLE `student_course`
  ADD CONSTRAINT `student_course_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `student` (`userID`),
  ADD CONSTRAINT `student_course_ibfk_2` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`);
COMMIT;
