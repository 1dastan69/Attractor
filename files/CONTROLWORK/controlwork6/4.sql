CREATE DATABASE Univer;

--------------------------------------------------------------------------------------------------------
CREATE TABLE University (id integer not null primary key,name varchar(50) not null, status text);
CREATE TABLE Department (id integer not null primary key, name varchar(50), universityId int,
        FOREIGN KEY(universityId) REFERENCES University(id));
CREATE TABLE Student (id integer not null primary key, fullname varchar(50), departmentId int,
        FOREIGN KEY(departmentId) REFERENCES Department(id), universityId int,
        FOREIGN KEY(universityId) REFERENCES University(id));

CREATE SEQUENCE public.sq_university_id
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 1000000;
CREATE SEQUENCE public.sq_department_id
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 1000000;
CREATE SEQUENCE public.sq_student_id
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 1000000;
SELECT nextval('public.sq_university_id');
-------------------------------------------------------------------------------------------------------


INSERT INTO University(id, name, status)
        VALUES(nextval('public.sq_university_id'), 'Test','on');

SELECT * FROM University;

CREATE FUNCTION public.trg_insert_university()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    NOT LEAKPROOF
AS $BODY$begin
    NEW.id = nextval('public.sq_university_id');
    return NEW;
end;$BODY$;

ALTER FUNCTION public.trg_insert_university()
    OWNER TO postgres;

CREATE TRIGGER trg_university
    BEFORE INSERT
    ON University
    FOR EACH ROW
    EXECUTE PROCEDURE public.trg_insert_university();


