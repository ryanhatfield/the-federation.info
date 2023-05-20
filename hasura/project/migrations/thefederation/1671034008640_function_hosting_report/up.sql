CREATE OR REPLACE FUNCTION hosting_report()
RETURNS SETOF hosting_report_t AS $$
    SELECT n.country, SUM(s.users_total) as total, COUNT(n.id) as count, SUM(s.users_half_year) as actives
    FROM thefederation_node as n LEFT JOIN thefederation_stat as s ON n.id = s.node_id
    WHERE n.blocked = false
        AND n.last_success >= NOW() - INTERVAL '30 days'
        AND s.date >= NOW()
    GROUP BY n.country
$$ LANGUAGE sql STABLE;