实现从表t
__________________
 |   NAME    |   AGE    | 
|==================| 
| Ace      |    23    | 
| May      |    15    | 
| Ann      |    21    | 
| May      |    38    | 
| Ace      |    77    | 
| Ann      |    35    | 
|==================|
变成以下的效果
___________________
 |   NAME    |   AGE    | 
|==================| 
| Ace      |    77    | 
| Ace      |    23    | 
| May      |    38    | 
| May      |    15    | 
| Ann      |    35    | 
| Ann      |    21    | 
|==================|
实现的sql语句如下:
select t.* from t join (
	select name, max(age) as orderMax from t group by name
	) as result on result.name=t.name order by result.orderMax desc , t.name, t.age desc