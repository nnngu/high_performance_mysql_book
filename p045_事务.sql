START TRANSACTION;
SELECT balance FROM checking WHERE customer_id = 10233276;
UPDATE checking SET balance = balance - 200.00 WHERE customer_id = 10233276;
UPDATE savings SET balance = balance + 200.00 WHERE customer_id = 10233276;
COMMIT;

# 事务的四个特征：ACID
# A 原子性：整个事务中的所有操作要么全部提交成功，要么全部失败回滚
# C 一致性：数据库总是从一个一致性状态转换到另一个一致性状态
# I 隔离性：一个事务所做的修改在最终提交以前，对其他事务是不可见的。
# D 持久性：一旦事务提交，则其所做的修改就会永久保存到数据库中。
