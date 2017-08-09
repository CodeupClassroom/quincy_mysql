-- run this with the following command:
-- mysql -u vagrant -p < update_demo.sql

USE codeup_test_db;

-- UPDATE table_name
-- SET column1 = 'value1', column2 = 'value2', ...
-- WHERE columnA = 'valueA';

-- showing current sales
select sales
from albums;

UPDATE albums
SET sales = sales * 10;

select sales
from albums;