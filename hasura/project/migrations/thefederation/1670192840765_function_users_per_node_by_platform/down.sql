-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE
-- OR REPLACE FUNCTION users_per_node_by_platform(platformid int)
-- RETURNS SETOF count_by_date AS $$
-- SELECT
--   date,
--   CEIL(AVG(users_total)) as count
-- from
--   thefederation_stat
-- WHERE
--   platform_id = platformid
--   AND date > NOW() - INTERVAL '1 year'
-- group by
--   date $$ LANGUAGE sql STABLE;
