use Test2;
INSERT INTO Students
VALUES (1, 'Nguyen Quang An', '18','an@yahoo.com');
INSERT INTO Students
VALUES (2, 'Nguyen Cong Vinh', '20','vinh@gmail.com');
INSERT INTO Students
VALUES (3, 'Nguyen Van Quyen', '19','quyen@yahoo.com');
INSERT INTO Students
VALUES (4, 'Pham Thanh Binh', '25','binh@yahoo.com');
INSERT INTO Students
VALUES (5, 'Nguyen Van Tai Em', '30','taiem@yahoo.com');

INSERT INTO Classes
VALUES (1,'C0706L');
INSERT INTO Classes
VALUES (2,'C0708G');

INSERT INTO classstudent
VALUES (1, 1),
       (2, 1),
       (3, 2),
       (4, 2),
       (5, 2);

INSERT INTO Subjects
VALUES (1, 'SQL'),
       (2, 'Java'),
       (3, 'C'),
       (4, 'Visual Basic');

 INSERT INTO Marks
VALUES (8,1,1),  
		(4,2,1),
		(7,1,3),
        (3,1,4),
        (5,2,5),
        (8,3,3),
        (1,3,5);