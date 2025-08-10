select * from ponno;


alter table ponno 
            add column email VARCHAR(30) DEFAULT 'default@mail.com' not NULL;


alter table ponno
        drop column email;

alter table ponno
        rename column price to dame;



alter table ponno
        alter column "name" type VARCHAR(50);


alter table ponno   
        add column discount INTEGER default 1;
alter table ponno   
        drop column discount;

alter table ponno        
        alter column discount set not NULL;


alter table ponno
        ADD constraint unique_ponno_discount UNIQUE(discount);
alter table ponno
        DROP constraint unique_ponno_discount;
