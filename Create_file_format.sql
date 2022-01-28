-- ===========================================================================================
--
--  FILENAME
--      Create_file_format.sql
--
--  DATE CREATED
--      January 28, 2022  8:35 AM
--
--  CREATED BY
--      chammer@CarsForSale.local
--
--  DESCRIPTION
--
--  CHANGE LOG
--
-- ===========================================================================================

-- Check for schema
create schema if not exists chassis;

drop table if exists  chassis.file_format

create table if not exists chassis.file_format
(
    id uuid primary key default (uuid_generate_v4()),
    name varchar,
    description varchar
)