mysql> show table status like 'answers' \G
*************************** 1. row ***************************
           Name: answers #表名
         Engine: InnoDB #存储引擎
        Version: 10
     Row_format: Dynamic #行的格式。
           Rows: 14 #表的行数
 Avg_row_length: 1170 #平均每行包含的字节数
    Data_length: 16384 #表数据的大小(单位：字节)
Max_data_length: 0 #表数据的最大容量
   Index_length: 32768 #索引的大小
      Data_free: 0 #对于 MyISAM表，表示已分配但目前没有使用的空间。
 Auto_increment: 18 #下一个自增值
    Create_time: 2018-05-08 22:04:21 #表的创建时间
    Update_time: NULL #表的最后修改时间
     Check_time: NULL #使用 CHECK TABLE 命令最后一次检查表的时间
      Collation: utf8mb4_unicode_ci #默认字符集和字符列排序规则
       Checksum: NULL #如果启用，保存的是整个表的实时校验和
 Create_options:  #创建表时指定的其他选项
        Comment:  #该列包含了一些其他的额外信息
1 row in set (0.00 sec)

