-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2019 at 06:18 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0




/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `megaglassincdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--
USE master
GO
IF DB_ID('BusinessGT') IS NOT NULL
BEGIN 
DROP DATABASE BusinessGT
DROP LOGIN GTapp
END
GO

CREATE DATABASE BusinessGT
GO
USE BusinessGT;
GO

CREATE TABLE employee (
  employeeID int NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL
) 

--
-- Dumping data for table `employee`
--

INSERT INTO employee (employeeID, first_name, last_name) VALUES
(1, 'bob', 'man'),
(2, 'joe', 'moe'),
(3, 'roe', 'lee'),
(4, 'jeff', 'red'),
(5, 'schmo', 'decker'),
(6, 'tim', 'letter'),
(7, 'guy', 'thomas'),
(8, 'rick', 'james'),
(9, 'james', 'town'),
(10, 'thug', 'rocket'),
(11, 'huli', 'dramdram'),
(12, 'sam', 'thamn'),
(13, 'simon', 'tre'),
(14, 'dre', 'ledder'),
(15, 'devin', 'torrance'),
(16, 'aaron', 'ruiz'),
(17, 'dexter', 'key'),
(18, 'jared', 'key'),
(19, 'robert', 'ruiz'),
(20, 'grat', 'tee');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE newsletter (
  emailaddress varchar(255) NOT NULL
) 

--
-- Dumping data for table `newsletter`
--

INSERT INTO newsletter (emailaddress) VALUES
('a100@beemail.com'),
('b100@beemail.com'),
('c100@beemail.com'),
('d100@beemail.com'),
('e100@beemail.com'),
('f100@beemail.com'),
('g100@beemail.com'),
('h100@beemail.com'),
('i100@beemail.com'),
('j100@beemail.com'),
('k100@beemail.com'),
('l100@beemail.com'),
('m100@beemail.com'),
('n100@beemail.com'),
('o100@beemail.com'),
('p100@beemail.com'),
('q100@beemail.com'),
('r100@beemail.com'),
('s100@beemail.com'),
('t100@beemail.com');

-- --------------------------------------------------------

--
-- Table structure for table `nlvisitor`
--

CREATE TABLE nlvisitor (
  NLvisitor_ID int NOT NULL,
  NLvisitor_fname varchar(60) NOT NULL,
  NLvisitor_lname varchar(60) NOT NULL,
  NLvisitor_email varchar(45) NOT NULL,
  visitor_address varchar(255) NOT NULL,
  employeeID int NOT NULL
) 

--
-- Dumping data for table `nlvisitor`
--

INSERT INTO nlvisitor (NLvisitor_ID, NLvisitor_fname, NLvisitor_lname, NLvisitor_email, visitor_address, employeeID) VALUES
(1, 'Mickey', 'Mouse', 'mickey@mouse.com', '1234 cheesy road APT #101', 1),
(2, 'Trickey', 'Mouse', 'trickey@mouse.com', '1234 cheesy road APT #102', 1),
(3, 'Lickey', 'Mouse', 'lickey@mouse.com', '1234 cheesy road APT #103', 1),
(4, 'Nickey', 'Mouse', 'nickey@mouse.com', '1234 cheesy road APT #104', 1),
(5, 'Dickey', 'Mouse', 'dickey@mouse.com', '1234 cheesy road APT #105', 1),
(6, 'Hickey', 'Mouse', 'hickey@mouse.com', '1234 cheesy road APT #106', 1),
(7, 'Jickey', 'Mouse', 'jickey@mouse.com', '1234 cheesy road APT #107', 1),
(8, 'Kickey', 'Mouse', 'kickey@mouse.com', '1234 cheesy road APT #108', 1),
(9, 'Pickey', 'Mouse', 'pickey@mouse.com', '1234 cheesy road APT #109', 1),
(10, 'Quickey', 'Mouse', 'quickey@mouse.com', '1234 cheesy road APT #109', 1),
(11, 'Rickey', 'Mouse', 'rickey@mouse.com', '1234 cheesy road APT #110', 1),
(12, 'Sickey', 'Mouse', 'sickey@mouse.com', '1234 cheesy road APT #111', 1),
(13, 'Tickey', 'Mouse', 'tickey@mouse.com', '1234 cheesy road APT #112', 1),
(14, 'Wickey', 'Mouse', 'wickey@mouse.com', '1234 cheesy road APT #113', 1),
(15, 'Ayickey', 'Mouse', 'ayickey@mouse.com', '1234 cheesy road APT #114', 1),
(16, 'Yickey', 'Mouse', 'yickey@mouse.com', '1234 cheesy road APT #115', 1),
(17, 'Mickey1', 'Mouse', 'mickey1@mouse.com', '1234 cheesy road APT #116', 1),
(18, 'Mickey2', 'Mouse', 'mickey2@mouse.com', '1234 cheesy road APT #117', 1),
(19, 'Mickey3', 'Mouse', 'mickey3@mouse.com', '1234 cheesy road APT #118', 1),
(20, 'Mickey4', 'Mouse', 'mickey4@mouse.com', '1234 cheesy road APT #119', 1);

-- --------------------------------------------------------

--
-- Table structure for table `qcc`
--

CREATE TABLE qcc (
  emailaddress varchar(255) NOT NULL
) 

--
-- Dumping data for table `qcc`
--

INSERT INTO qcc(emailaddress) VALUES
('a100@beemail.com'),
('b100@beemail.com'),
('c100@beemail.com'),
('d100@beemail.com'),
('e100@beemail.com'),
('f100@beemail.com'),
('g100@beemail.com'),
('h100@beemail.com'),
('i100@beemail.com'),
('j100@beemail.com'),
('k100@beemail.com'),
('l100@beemail.com'),
('m100@beemail.com'),
('n100@beemail.com'),
('o100@beemail.com'),
('p100@beemail.com'),
('q100@beemail.com'),
('r100@beemail.com'),
('s100@beemail.com'),
('t100@beemail.com');

-- --------------------------------------------------------

--
-- Table structure for table `qccvisitor`
--

CREATE TABLE qccvisitor (
  visitor_reason varchar(10) NOT NULL,
  QCCvisitor_ID int NOT NULL IDENTITY,
  visitor_fname varchar(60) NOT NULL,
  visitor_lname varchar(60) NOT NULL,
  visitor_email varchar(45) NOT NULL,
  visitor_msg varchar(255) NOT NULL,
  employeeID int NULL
) 

--
-- Dumping data for table `qccvisitor`
--

INSERT INTO qccvisitor (visitor_reason,  visitor_fname, visitor_lname, visitor_email, visitor_msg, employeeID) VALUES
('Comment(s)',  'Mickey', 'Mouse', 'mickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Trickey', 'Mouse', 'trickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Lickey', 'Mouse', 'lickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Nickey', 'Mouse', 'nickey@mouse.com', 'Hello', 1),
('Comment(s)', 'Dickey', 'Mouse', 'dickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Hickey', 'Mouse', 'hickey@mouse.com', 'Hello', 1),
('Comment(s)', 'Jickey', 'Mouse', 'jickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Kickey', 'Mouse', 'kickey@mouse.com', 'Hello', 1),
('Comment(s)', 'Pickey', 'Mouse', 'pickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Quickey', 'Mouse', 'quickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Rickey', 'Mouse', 'rickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Sickey', 'Mouse', 'sickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Tickey', 'Mouse', 'tickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Wickey', 'Mouse', 'wickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Ayickey', 'Mouse', 'ayickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Yickey', 'Mouse', 'yickey@mouse.com', 'Hello', 1),
('Comment(s)',  'Mickey1', 'Mouse', 'mickey1@mouse.com', 'Hello', 1),
('Comment(s)',  'Mickey2', 'Mouse', 'mickey2@mouse.com', 'Hello', 1),
('Comment(s)',  'Mickey3', 'Mouse', 'mickey3@mouse.com', 'Hello', 1),
('Comment(s)',  'Mickey4', 'Mouse', 'mickey4@mouse.com', 'Hello', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE employee
  ADD PRIMARY KEY (employeeID);

--
-- Indexes for table `newsletter`
--
ALTER TABLE newsletter
  ADD PRIMARY KEY (emailaddress);

--
-- Indexes for table `nlvisitor`
--
ALTER TABLE nlvisitor
  ADD PRIMARY KEY (NLvisitor_ID);

--
-- Indexes for table `qcc`
--
ALTER TABLE qcc
  ADD PRIMARY KEY (emailaddress);

--
-- Indexes for table `qccvisitor`
--
ALTER TABLE qccvisitor
  ADD PRIMARY KEY (QCCvisitor_ID);
  GO
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--


--ALTER TABLE employee
--  MODIFY employeeID int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

----
---- AUTO_INCREMENT for table `nlvisitor`
----
--ALTER TABLE nlvisitor
--  MODIFY NLvisitor_ID int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

----
---- AUTO_INCREMENT for table `qccvisitor`
----
--ALTER TABLE qccvisitor
--  MODIFY QCCvisitor_ID int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
create procedure InsertQCCVisitor
@visitor_reason varchar(10),
@visitor_fname varchar(60),
@visitor_lname varchar(60),
@visitor_email nchar(50),
@visitor_msg nchar(200)
as
INSERT INTO [BusinessGT].[dbo].[qccvisitor]
           ([visitor_reason]
           ,[visitor_fname]
           ,[visitor_lname]
		   ,[visitor_email]
		   ,[visitor_msg])
     VALUES
           (@visitor_reason
		   ,@visitor_fname
		   ,@visitor_lname
           ,@visitor_email
           ,@visitor_msg)
GO
execute InsertQCCVisitor "Question","Mickey","Mouse", "mickey@mouse.com", "Insert using SP from SSMS";

select * from qccvisitor;

CREATE LOGIN [GTApp] WITH PASSWORD='Pa$$w0rd', DEFAULT_DATABASE=[BusinessGT]
go
use BusinessGT
go
CREATE USER [GTApp] FOR LOGIN [GTApp] WITH DEFAULT_SCHEMA=[dbo]
GO
grant execute on InsertQCCVisitor to GTApp
go

SELECT * FROM qccvisitor
