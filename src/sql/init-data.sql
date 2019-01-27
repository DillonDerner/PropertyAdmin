-- BASIC INSERT DATA
INSERT INTO company
VALUES (1, "Evergreen Properties", "LIMITED LIABILITY COMPANY", "83-0631721",'2018-05-21', '2019-12-31');

INSERT INTO property
VALUES (1, 1, "Watertown 8-Plex", "Watertown", "MN", "55388", "205 Newton Avenue Northeast", "C:\\dev\\javaFX\\PropertyAdmin\\data\\property-images\\1\\image1.png");

INSERT INTO property
VALUES (2, 1, "Riverside Terrace Trailer", "Watertown", "MN", "55388", "77 Riverside Terrace Dr", "C:\\dev\\javaFX\\PropertyAdmin\\data\\property-images\\2\\image1.png");

INSERT INTO unit
VALUES (1, 1, "101", 2, 1),
	   (2, 1, "102", 1, 1),
	   (3, 1, "103", 2, 1),
	   (4, 1, "104", 1, 1),
	   (5, 1, "201", 2, 1),
	   (6, 1, "202", 2, 1),
	   (7, 1, "203", 2, 1),
	   (8, 1, "204", 2, 1),
	   (9, 2, "", 3, 1);
