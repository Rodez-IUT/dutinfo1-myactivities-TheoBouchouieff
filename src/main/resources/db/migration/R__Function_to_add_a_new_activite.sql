CREATE OR REPLACE FUNCTION add_activity_with_title(title varchar(200)) RETURNS bigint AS $$
	INSERT INTO activity(id, title)
	VALUES (nextval('id_generator'), add_activity_with_title.title)
	returning id;
$$ LANGUAGE SQL;