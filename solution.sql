-- select users from chicago
select username from syntax_practice where city='chicago';

--select user with usernames that contain the letter a
select username from syntax_practice where username like '%a%'

--insert customer bonuses
INSERT INTO syntax_practice 
(account_balance, transactions_attempted) 
VALUES (0.00, 0)

--update account balance to 10
UPDATE syntax_practice set account_balance= 10;

--select users that have attempt 9 or more transactions
select username from syntax_practice where transactions_attempted >=9;

--Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
select username, account_balance from syntax_practice ORDER BY account_balance ASC LIMIT 3

--Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
select username, account_balance from syntax_practice ORDER BY account_balance DESC LIMIT 3

--Get all users with account balances that are more than $100.
select username from syntax_practice where account_balance >=100

--New record
insert into syntax_practice ( username, city, transactions_completed, transactions_attempted, account_balance) 
VALUES ('helena', 'minneapolis', 88, 90, 100000);

--The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.

DELETE FROM syntax_practice 
where city='miami' or city='phoenix' 
and transactions_completed<5;
