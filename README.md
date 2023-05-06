# sql
## Assignment
For showcase an assignment

### Task 1
```sql
create table Student_Table(
	Id int not null ,
	Name varchar(255) not null,
	Class_id int not null
);

/*insert into Student_Table values (01, 'John', 301);*/

create table Class_Table(
	Id int not null,
	Name varchar(255) not null,
);


-- insert into Class_Table values (301, 'Database');



select Class_Table.Name as Class, count(Student_Table.Id) as 'Number of Student', 
from Class_Table
left join Student_table 
on Class_Table.Id = Student_Table.Class_id
group by Class;

```
### Task 2
```sql
=IF(C2>89,"A+",IF(C2>74,"A",IF(C2>60,"A-",IF(C2<50,"B",IF(C2>40,"C",IF(C2>33,"D",IF(C2<33,"F")))))))
```
