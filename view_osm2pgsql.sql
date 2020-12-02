/* create a view on osm2pgsql schema (including tags hstore) */
CREATE OR REPLACE VIEW max_view AS
SELECT
    way as geometry,
    ref,
    tags->'max_weight' as maxweight,
    tags->'max_height' as maxheight,
    tags->'max_width' as maxwidth,
    tags->'max_length' as maxlength,
    tags->'max_axleload' as maxaxleload,
    tags->'hgv' as hgv,
    tags->'goods' as goods,
    tags->'hazmat' as hazmat,
    highway as type
FROM
    planet_osm_line
WHERE
    highway IS NOT NULL;
