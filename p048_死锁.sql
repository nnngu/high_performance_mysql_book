# 事务 1
START TRANSACTION;
UPDATE StockPrice SET close = 45.50 WHERE stock_id = 4 and date = '2002-05-01';
UPDATE StockPrice SET close = 19.80 WHERE stock_id = 3 and date = '2002-05-02';
COMMIT;

# 事务 2
START TRANSACTION;
UPDATE StockPrice SET high = 20.12 WHERE stock_id = 3 and date = '2002-05-02';
UPDATE StockPrice SET high = 47.20 WHERE stock_id = 4 and date = '2002-05-01';
COMMIT;

/*
	如果凑巧，两个事务都执行了第一条 UPDATE 语句，更新了一行数据，同时也锁定了该行数据，接着
每个事务都尝试去执行第二条 UPDATE 语句，却发现该行已经被对方锁定，然后两个事务都等待对方释放锁，同时
又持有对方需要的锁，则陷入死循环。
*/
