-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE OR REPLACE FUNCTION active_users_ratio()
-- RETURNS SETOF count_by_date AS $$
--     SELECT date, SUM(users_monthly)::float / SUM(users_total) as count from thefederation_stat WHERE node_id IS NOT NULL group by date
-- $$ LANGUAGE sql STABLE;
