
INSERT INTO "user" (email, salt, password, role, firstname, lastname)
VALUES 
('admin@example.com', 'salt1', 'hashed_pwd1', 'admin', 'Alice', 'Admin'),
('staff@example.com', 'salt2', 'hashed_pwd2', 'staff', 'Bob', 'Staff'),
('tech@example.com', 'salt3', 'hashed_pwd3', 'technician', 'Carol', 'Tech'),
('intern@example.com', 'salt4', 'hashed_pwd4', 'intern', 'Dave', 'Intern'),
('guest@example.com', 'salt5', 'hashed_pwd5', 'guest', 'Eve', 'Guest');


INSERT INTO "building" (name, description, room_count, street_number, street_name, postal_code, city, country, latitude, longitude, created_at)
VALUES
('Bâtiment A', 'Batiment administratif', 20, '27 ter', 'Rue du Progrès', '93100', 'Montreuil', 'France', 48.851784, 2.420545, NOW()),
('Bâtiment C', 'batiments classes', 37, '27 ter', 'Rue du Progrès', '93100', 'Montreuil', 'France', 48.851784, 2.420545, NOW());

INSERT INTO "map" (building_id, file_name, path, width, length)
VALUES 
(1, 'main_floor.png', '/maps/main_floor.png', 1200, 800),
(2, 'tech_floor.png', '/maps/tech_floor.png', 1000, 750);

INSERT INTO "room" (name, description, floor, building_id, area, shape, capacity, start_at, end_at)
VALUES 
('Room A1', 'Conference Room', 1, 1, 50.0, '[[2385, 2124.9], [2430, 2522.83],[2174, 2522.83],[2141, 2147.9]]', 10, NOW(), NOW() + INTERVAL '6 months'),
('Room B1', 'Workshop', 2, 2, 100.0, '[[50, 50], [50, 150], [150, 150],[150, 50]]', 20, NOW(), NOW() + INTERVAL '6 months');

INSERT INTO "group" (name, description, member_count, start_at, end_at)
VALUES 
('Dev Team', 'Development team group', 5, NOW(), NOW() + INTERVAL '1 year'),
('HR Team', 'Human resources group', 3, NOW(), NOW() + INTERVAL '1 year');

INSERT INTO "user_group" (group_id, user_id)
VALUES 
(1, 1), -- Alice (admin)
(1, 2), -- Bob (staff)
(1, 3), -- Carol (technician)
(2, 4), -- Dave (intern)
(2, 5); -- Eve (guest)

INSERT INTO "event" (name, description, group_id, supervisor)
VALUES 
('Weekly Sync', 'Weekly team meeting', 1, 'Alice Admin'),
('HR Briefing', 'HR onboarding session', 2, 'Eve Guest');

INSERT INTO "event_room" (room_id, event_id, start_at, end_at)
VALUES 
(1, 1, NOW(), NOW() + INTERVAL '1 hour'),
(2, 2, NOW() + INTERVAL '1 day', NOW() + INTERVAL '1 day 2 hours');

INSERT INTO "tag" (name, source_address)
VALUES 
('tag1', '123456789012'),
('tag2', '987654321098');

INSERT INTO "room_tag" (tag_id, room_id, start_at, end_at)
VALUES 
(1, 1, NOW(), NOW() + INTERVAL '3 months'),
(2, 2, NOW(), NOW() + INTERVAL '5 months');