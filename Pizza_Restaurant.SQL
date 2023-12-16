CREATE TABLE pizzamenu (
 menuid INT,
  menuname TEXT,
  price INT,
  pizzasize TEXT
  );

INSERT INTO pizzamenu VALUES
(011,'Chicken Run', 199, 'R'),
(012,'Chicken Run', 259, 'L'),
(021,'Sea You', 269, 'R'),
(022,'Sea You', 299, 'L'),
(003,'Veggie Wakie', 159, 'L');

.mode box
  select * from pizzamenu;

CREATE TABLE membership (
 memberid INT UNIQUE,
  firstname TEXT,
  lastname TEXT,
  memberlevel TEXT
  );

INSERT INTO membership VALUES
(1212, 'Jiaqi', 'Ma', 'Gold'),
(0224, 'Chengxin', 'Ding', 'Silver'),
(0403, 'Yaxuan', 'Song', 'Gold'),
(1604, 'Zhenyuan', 'Zhang', 'Bronze'),
(2309, 'Yaowen', 'Liu', 'Bronze'),
(1608, 'Haoxiang', 'Yan', 'VVIP'),
(1506, 'Junlin', 'He', 'Silver');

.mode box
  select * from membership;

CREATE TABLE orderlist (
  orderdate VARCHAR(255),
  memberid INT,
  menuid INT
);

INSERT INTO orderlist VALUES
('2023-02-24', 1212, 022),
('2023-03-04', 2309, 011),
('2023-06-14', 1608, 021),
('2022-12-12', 0304, 003),
('2022-11-23', 2402, 022),
('2022-11-23', 2402, 012),
('2022-11-23', 2402, 003);

.mode box
select * from orderlist;


SELECT *
FROM pizzamenu
JOIN orderlist ON pizzamenu.menuid = orderlist.menuid
WHERE pizzamenu.menuid = 022;



.mode box
  SELECT
    memberid,
    lastname,
    memberlevel
  FROM membership
  WHERE memberlevel = 'VVIP'
  ORDER BY memberid;

SELECT
COUNT(*) AS all_menu,
SUM(price) AS total_price,
AVG(price) AS avg_price,
MIN(price) AS cheapest,
MAX(price) AS premium
FROM pizzamenu;

 SELECT *
FROM membership
JOIN orderlist USING(memberid)
   JOIN pizzamenu USING(menuid);


