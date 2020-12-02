/* create a view on imposm schema */
CREATE OR REPLACE VIEW max_view AS
SELECT
    *
FROM
    osm_roads;
