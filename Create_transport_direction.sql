-- ===========================================================================================
--
--  FILENAME
--      Create_transport_directionsql
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

drop table if exists chassis.transport_direction;

create table if not exists chassis.transport_direction
(
    id uuid primary key default (uuid_generate_v4()),
    name varchar,
    description varchar
)

insert into chassis.transport_direction (name, description)
    values ('Incoming', 'External feed coming into Chassis'),
           ('OutGoing', 'Feed going out from Chassis to external destination');
