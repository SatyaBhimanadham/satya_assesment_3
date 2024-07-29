CREATE DATABASE Assesment_3

CREATE TABLE Subject_
(
	subject_id INT NULL,
	subtitle VARCHAR(20)
)

CREATE TABLE Book
(
	bookId int NULL,
	title VARCHAR(20),
	price int NULL,
	volume int,
	author varchar(20),
	publishDate DATE,
	subjectId int NULL
)

INSERT INTO Subject_ VALUES
(201,'Maths'),
(202,'English'),
(203,'Science'),
(204,'Social'),
(205,'GK')

INSERT INTO Book VALUES
(101, 'Sas', 230, 1, 'Satya', '2017-04-01', 201),
(102, 'Bas', 240, 2, 'Bhavani', '2018-03-10', 202),
(103, 'Las', 250, 3, 'Nikhil', '2015-04-11', 203),
(104, 'Was', 260, 1, 'Teja', '2019-08-03', 204),
(105, 'Ras', 270, 2, 'Dev', '2020-01-02', 205),
(106, 'Das', 280, 3, 'Bhargav', '2024-01-12', 201),
(107, 'Gas', 210, 1, 'Meghana', '2017-07-11', 202),
(108, 'Has', 240, 2, 'Swapna', '2019-06-08', 203),
(109, 'Kas', 260, 3, 'Sravya', '2018-07-07', 204),  
(110, 'Bas', 270, 1, 'Divya', '2015-03-06', 205),
(111, 'Sas', 200, 2, 'Satya', '2017-04-01', 201),
(112, 'Las', 280, 3, 'Divya', '2020-05-05', 202),
(113, 'Gas', 260, 1, 'Teja', '2016-03-03', 203),
(114, 'Has', 240, 2, 'Dev', '2021-01-01', 204),
(115, 'Was', 210, 3, 'Nikhil', '2022-09-04', 205);

--3
SELECT b.bookId,b.title,b.price,b.volume,b.author,b.publishDate,s.subject_id,s.subtitle
FROM Book b INNER JOIN Subject_ s ON b.subjectId = s.subject_id;
--4
SELECT * FROM Book WHERE publishDate BETWEEN 'YYYY-MM-DD' AND 'YYYY-MM-DD';
--5
SELECT author,COUNT(*) AS number_of_books FROM Book GROUP BY author;
--6
SELECT subjectId,COUNT(*) AS number_of_subjectid FROM Book GROUP BY subjectId;
--7
SELECT publishDate,COUNT(*) AS number_of_books FROM Book where publishDate> year('2000') GROUP BY publishDate;
--8
UPDATE Book SET price = 300, volume = 4 WHERE bookId = 115;
--10
delete from Book where bookId = 112;
--12
select b.bookId, b.title, b.price, b.volume, b.author, b.publishDate, s.subtitle as subject from Book b
JOIN Subject_ s ON b.subjectId = s.subject_id Order by s.subtitle ASC;
--14
select bookId, title, price, volume, author, publishDate, subjectId from Book 
where price = (select MIN(price) from Book);
--15
select COUNT(*) AS numberOfBooks from Book b
JOIN Subject s on b.subjectId = s.subject_id
where s.subtitle = 'Maths';
--16
select b.bookId, b.title, b.price, b.volume, b.author, b.publishDate, s.subtitle as subject from Book b
JOIN Subject_ s on b.subjectId = s.subject_id 
where s.subtitle IN ('Science', 'Maths', 'English');











