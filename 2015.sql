insert into CUSTOMER values(1,'ajay','khaple','udgir',413517,'om','degloor road','ajaykhaple99@gmail.com');
insert into CUSTOMER values(2,'akshay','khaple','udgir',413517,'om','latur road','akshaykhaple99@gmail.com');
insert into CUSTOMER values(3,'vaibhav' ,'thombare','latur',452186,'sai','degloor road','vvt@gmail.com');
insert into CUSTOMER values(4,'shubham','kharose','umarga',485216,'sai','hyderabad road','shubhamkharose@gmail.com');
insert into CUSTOMER values(5,'ganesh','kathar','aurangabad',413617,'ganesh','beed road','ganeshkathar98@gmail.com');


insert into EMPLOYEE values(11,'shubham','patil','sangali',460460,'shub','hyderabad road','shubhampatil@gmail.com');
insert into EMPLOYEE values(12,'shiva','patil','nanded',460480,'shiva','hyderabad road','shivapatil@gmail.com');
insert into EMPLOYEE values(13,'jaydeep','patil','sangola',461460,'jd','miraj road','jaydeeppatil@gmail.com');
insert into EMPLOYEE values(14,'piyush','kadam','solapur',450450,'sairam','bangalore road','piyushkadam01@gmail.com');
insert into EMPLOYEE values(15,'vaibhav','mulik','satara',540460,'shivaji','kolhapur road','vaibhavmulik78@gmail.com');

insert into ORDER1 values  (21,'25 feb 2017',11,1,'28 feb 2017','01 march 2017');
insert into ORDER1 values  (22,'15 feb 2017',12,2,'25 feb 2017','04 march 2017');
insert into ORDER1 values  (23,'25 jan 2017',13,3,'30 jan 2017','30 jan 2017');
insert into ORDER1 values  (24,'12 feb 2017',14,4,'15 feb 2017','25 feb 2017');
insert into ORDER1 values  (25,'25 march 2017',11,5,'28 feb 2017','01 march 2017');


insert into part values(31,'cooler',10000,45);
insert into part values(32,'washing machine',30000,05);
insert into part values(33,'mobile',15000,100);
insert into part values(34,'shoes',1500,200);
insert into part values(14,'watch',650,2000);
insert into part values(12,'laptop',55000,20);
insert into part values(15,'pendrive',300,222);


insert into CUSTOMER_PHONE values(1,8888290010);
insert into  CUSTOMER_PHONE values(2,8565471234);
insert into  CUSTOMER_PHONE values(3,7852149632);

insert into ORDER_PART values(21,31,45);
insert into ORDER_PART values(22,32,05);
insert into ORDER_PART values(23,33,10);


1.select FIRST_NAME,LAST_NAME
from CUSTOMER
order by FIRST_Name , LAST_NAME;

2.select part_name
from part
order by part_no;

3.select part_name
from part
order by price desc;


4select part_no,part_name,price*1.055 as new_price from part;



6.select First_name
from customer
where customer_no=(select customer_no
                    from )

12.select *
  from part
  where part_no=(select part_no
                    from order_part
                    where order_no=21);
                    
                    
  7.select customer_name
  from customer
  where customer_no=(select customer_no
                        from customer as c,order1 as o,part as p
                        where  p.part_name='cooler' or p.part_name='laptop';)
                  
                  
  6.part1=cooler
    part2=laptop
    
    '
    (select customer_name 
    from customer
    where  customer_no=(select customer_no
                          from order1
                          where order_no=(select order_no
                                            from order_part
                                            where part_no)=(select part_no
                                                              from part
                                                              where part_name='cooler' or part_name='laptop'))));



13.

select first_name,last_name
from customer 
where customer_no=(select customer_no
                    from order1
                    where actual_ship_date=expexted_ship_date);



16.
select customer_name
from customer as c
where customer no=(select customer_no
                    from order1
                    )

  
