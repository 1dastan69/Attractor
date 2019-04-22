CREATE database Terminal;

CREATE TABLE public."File"
(
    id integer NOT NULL,
    filename text,
    path text,
    size numeric,
    type text,
    PRIMARY KEY (id)
)
----------------------------------------------------------------------
CREATE TABLE public.command
(
    id integer NOT NULL,
    code varchar(50) not null,
    description varchar(50) not null,
    PRIMARY KEY (id)
)
--------------------------------------------------------------------------
CREATE TABLE public.log
(
    id integer NOT NULL,
    commandid integer,foreign key(id) references Command(id),
    datetime timestamp,
    PRIMARY KEY (id)
)
drop table log
select * from public."File"

------------------------------------------------------------------------

INSERT INTO public.log(
    id, commandid, datetime)
    VALUES (nextval('sql_log_id'), 1, '2019-01-01 00:00:01');
    select * from public.log

    INSERT INTO public.command(
    id, code, description)
    VALUES (nextval('sql_command_id'), 'brain', 'math');
    select * from public."command"

    INSERT INTO public."File"(
    id, filename, path, size, type)
    VALUES (nextval('sql_file_id'), 'Com', 'desktop', 1000, 'MG');
    select * from public."File"
-----------------------------------------------------------------------
