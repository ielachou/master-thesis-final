DROP TABLE IF EXISTS trips_mdb cascade;
CREATE TABLE trips_mdb (
		line_ref text NOT NULL,
		vehicle_ref text not null,
		trip tgeompoint
	);

INSERT INTO trips_mdb (
    line_ref,
	vehicle_ref,
    trip
)
SELECT 
    line_ref, 
    vehicle_ref, 
    tgeompoint_seq(array_agg(tgeompoint_inst(point_geom, recorded_at_time) ORDER BY recorded_at_time))
FROM siri_data
GROUP BY line_ref, vehicle_ref

