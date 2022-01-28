-- ===========================================================================================
--
--  FILENAME
--      Create_feed_item.sql
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

-- Check for alter schema
if not exists (select * FROM information_schema.schemata where schema_name = 'chassis')

create schema if not exists chassis;

drop table if exists chassis.feed_item;

create table if not exists chassis.feed_item
(
    id uuid primary key default (uuid_generate_v4()),
    name varchar not null,
    transport_type_id uuid,
    transport_direction_id uuid,


)




Select * from information_schema.schemata where