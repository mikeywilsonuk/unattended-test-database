INSERT INTO Product VALUES (1,'Healthcare',100);
INSERT INTO Product VALUES (2,'Travel Insurance',150);
INSERT INTO Product VALUES (3,'Home Insurance',200);

INSERT INTO Member VALUES (1,'123456789','John','Smith');
INSERT INTO Member VALUES (2,'123456788','Timmy','Taylors');
INSERT INTO Member VALUES (3,'123456787','Theakston','Best');
INSERT INTO Member VALUES (4,'123458645','Guiness','Original');
INSERT INTO Member VALUES (5,'164528673','Black','Sheep');

INSERT INTO MemberProduct VALUES (1,to_date('01-03-2023','dd-mm-yyyy'),1,1);
INSERT INTO MemberProduct VALUES (2,to_date('01-06-2023','dd-mm-yyyy'),2,1);
INSERT INTO MemberProduct VALUES (3,to_date('01-03-2023','dd-mm-yyyy'),1,2);
INSERT INTO MemberProduct VALUES (4,to_date('01-03-2023','dd-mm-yyyy'),1,3);
INSERT INTO MemberProduct VALUES (5,to_date('01-03-2023','dd-mm-yyyy'),3,3);
INSERT INTO MemberProduct VALUES (6,to_date('01-07-2023','dd-mm-yyyy'),1,4);
INSERT INTO MemberProduct VALUES (7,to_date('01-11-2023','dd-mm-yyyy'),1,5);
INSERT INTO MemberProduct VALUES (8,to_date('01-03-2023','dd-mm-yyyy'),2,5);

INSERT INTO Payment VALUES (1,to_date('01-03-2022','dd-mm-yyyy'),100,1);
INSERT INTO Payment VALUES (2,to_date('01-03-2021','dd-mm-yyyy'),100,1);
INSERT INTO Payment VALUES (3,to_date('01-06-2022','dd-mm-yyyy'),150,2);
INSERT INTO Payment VALUES (4,to_date('01-03-2022','dd-mm-yyyy'),100,3);
INSERT INTO Payment VALUES (5,to_date('01-03-2021','dd-mm-yyyy'),100,3);
INSERT INTO Payment VALUES (6,to_date('01-03-2022','dd-mm-yyyy'),100,4);
INSERT INTO Payment VALUES (7,to_date('01-03-2021','dd-mm-yyyy'),100,4);
INSERT INTO Payment VALUES (8,to_date('01-07-2022','dd-mm-yyyy'),100,6);
INSERT INTO Payment VALUES (9,to_date('01-07-2021','dd-mm-yyyy'),100,6);
INSERT INTO Payment VALUES (10,to_date('01-07-2020','dd-mm-yyyy'),100,6);
INSERT INTO Payment VALUES (11,to_date('01-11-2022','dd-mm-yyyy'),100,7);
INSERT INTO Payment VALUES (12,to_date('01-03-2022','dd-mm-yyyy'),150,8);
INSERT INTO Payment VALUES (13,to_date('01-03-2021','dd-mm-yyyy'),150,8);