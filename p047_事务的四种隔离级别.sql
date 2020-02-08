/*
READ UNCOMMITED(未提交读)  (脏读)
	事务中的修改，即使没有提交，对其他事务也都是可见的。在实际应用中很少使用。

READ COMMITED(提交读)  (不可重复读)
	一个事务开始时，只能看见已提交的事务所做的修改。这个级别也叫做不可重复读，
因为两次执行同样的查询，可能会得到不一样的结果。

REPEATABLE READ(可重复读)
	可重复读解决了脏读的问题。该级别保证了在同一个事务中多次读取同样记录的结果
是一致的。但无法解决幻读问题，所谓幻读，指的是当某个事务在读取某个范围的记录时，
另外一个事务又在该范围内插入了新的记录，当之前的事务再次读取该范围的记录时，会
产生幻行。
	可重复读是 MySQL 的默认事务隔离级别。

SERIALIZABLE(可串行化)
	SERIALIZABLE 是最高的隔离级别。SERIALIZABLE 会在读取的每一行数据上都加锁，
所以可能导致大量的超时和锁争用的问题。实际应用中很少用这个隔离级别。

*/


/*
隔离级别				脏读可能性	不可重复读可能性		幻读可能性	加锁读
READ UNCOMMITTED	yes			yes					yes			no
READ COMMITTED		no			yes					yes			no
REPEATABLE READ		no			no					yes			no
SERIALIZABLE 		no			no					no			yes
*/















