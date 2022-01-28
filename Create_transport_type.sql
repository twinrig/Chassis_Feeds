-- ===========================================================================================
--
--  FILENAME
--      Create_transport_type.sql
--
--  DATE CREATED
--      January 27, 2022  9:50 AM
--
--  CREATED BY
--      chammer
--
--  DESCRIPTION
--
--  CHANGE LOG
--
-- ===========================================================================================

-- Check for schema
create schema if not exists chassis;


drop table if exists chassis.transport_type;

create table if not exists chassis.transport_type
(
    id uuid primary key default (uuid_generate_v4()),
    name varchar,
    description varchar
)

insert into chassis.transport_type (name, description)
    values ('ftp','Uses the File Transfer Protocol (RFC 959)'),
           ('sftp','Uses the SSH File Transfer Protocol (RFC 4251 Et al.)');
