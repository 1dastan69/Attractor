SELECT

    a.id id_a,

    a.fruit fruit_a,

    b.id id_b,

    b.fruit fruit_b

FROM

    basket_a a

FULL OUTER JOIN basket_b b ON a.fruit = b.fruit;

insert into basket_b values (6, 'Drama');
WHERE b.id IS NULL;

