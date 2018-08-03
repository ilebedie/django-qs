FROM postgres

RUN echo 'create user temp;\
create database temp with owner=temp;\
ALTER USER temp CREATEDB;'\
>> /docker-entrypoint-initdb.d/playpilot_init.sql

