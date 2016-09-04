

mysql -u root -e "CREATE DATABASE main;"

mysql -u root -e "USE main;"

mysql -u root -e "CREATE TABLE walmart (store INT, department INT, date DATE, weekly_sales INT, is_holiday INT);"

load data local infile 'train.csv' into table walmart \
 fields terminated by ',' \
 lines terminated by '\n' \
 (store, department, date, weekly_sales, is_holiday)
