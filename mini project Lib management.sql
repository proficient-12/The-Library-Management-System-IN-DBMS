CREATE DATABASE LIB;
USE LIB;
CREATE TABLE Books (
   BookID INT PRIMARY KEY AUTO_INCREMENT,
   Title VARCHAR(100) NOT NULL,
   Author VARCHAR(50),
   Publisher VARCHAR(50),
   Quantity INT
);
CREATE TABLE Members (
   MemberID INT PRIMARY KEY AUTO_INCREMENT,
   MemberName VARCHAR(100) NOT NULL,
   MobileNo VARCHAR(15),
   Address VARCHAR(150)
);
CREATE TABLE Issue_Return (
   TransactionID INT PRIMARY KEY AUTO_INCREMENT,
   BookID INT,
   MemberID INT,
   IssueDate DATE,
   ReturnDate DATE,
   Status VARCHAR(20),   -- Issued / Returned
   FOREIGN KEY (BookID) REFERENCES Books(BookID),
   FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
INSERT INTO Books (Title, Author, Publisher, Quantity)
VALUES 
('DBMS Concepts', 'Korth', 'McGraw Hill', 5),
('Python Basics', 'Guido', 'O\'Reilly', 3),
('AI Revolution', 'Andrew Ng', 'Pearson', 4);

INSERT INTO Members (MemberName, MobileNo, Address)
VALUES 
('Praveen Kumar', '9876543210', 'Delhi'),
('Puneet Kaur', '9876500000', 'Chandigarh');
INSERT INTO Issue_Return (BookID, MemberID, IssueDate, Status)
VALUES (1, 2, '2025-10-09', 'Issued');
UPDATE Issue_Return
SET ReturnDate = '2025-10-15', Status = 'Returned'
WHERE TransactionID = 1;
UPDATE Issue_Return
SET ReturnDate = '2025-10-15', Status = 'Returned'
WHERE TransactionID = 1;
SELECT*FROM Issue_Return, Books, Members;




