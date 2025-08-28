
INSERT INTO "user" (email, salt, password, role, firstname, lastname)
VALUES 
('admin@example.com', 'salt1', 'hashed_pwd1', 'admin', 'Alice', 'Admin'),
('staff@example.com', 'salt2', 'hashed_pwd2', 'staff', 'Bob', 'Staff'),
('tech@example.com', 'salt3', 'hashed_pwd3', 'technician', 'Carol', 'Tech'),
('intern@example.com', 'salt4', 'hashed_pwd4', 'intern', 'Dave', 'Intern'),
('guest@example.com', 'salt5', 'hashed_pwd5', 'guest', 'Eve', 'Guest');


INSERT INTO "building" (name, description, room_count, street_number, street_name, postal_code, city, country, latitude, longitude, created_at)
VALUES
('Bâtiment A', 'Bâtiment administratif et de cours', 20, '27 ter', 'Rue du Progrès', '93100', 'Montreuil', 'France', 48.851784, 2.420545, NOW()),
('Bâtiment C', 'Bâtiment de cours', 37, '27 ter', 'Rue du Progrès', '93100', 'Montreuil', 'France', 48.851784, 2.420545, NOW());

INSERT INTO "map" (building_id, file_name, floor, path, width, length)
VALUES 
(1, 'batA_RDC.png', 0, '/code/app/maps/batA_RDC.png', 4488, 3172),
(1, 'batA_etg1.png', 1, '/code/app/maps/batA_etg1.png', 4488, 3172),
(2, 'batC_RDC.png', 0, '/code/app/maps/batC_RDC.png', 4488, 3172);

INSERT INTO "room" (name, description, floor, building_id, area, shape, capacity, start_at, end_at)
VALUES 
('A003', 'Salle de classe', 0, 1, 36.4, '[[1253.95, 2754.36], [1273.95, 3492.61], [1173.95, 3592.64], [777.95, 3656.67], [769.95, 3600.65], [751.95, 2768.36]]', 30, NOW(), NOW() + INTERVAL '6 months'),
('A004', 'Salle de classe', 0, 1, 29.8, '[[1298.35, 2132.17], [1304.35, 2756.39], [752.35, 2764.39], [734.35, 2126.17]]', 27, NOW(), NOW() + INTERVAL '6 months'),
('A005', 'Salle de classe', 0, 1, 32.6, '[[1240.35, 1522.23], [1250.35, 1844.33], [1297.35, 1843.33], [1296.35, 2122.43], [734.35, 2120.43], [718.35, 1370.17], [922.35, 1366.17], [924.35, 1388.18], [1090.35, 1386.18], [1088.35, 1518.22]]', 29, NOW(), NOW() + INTERVAL '6 months'),
('A006', 'Salle de classe', 0, 1, 35.2, '[[1692.38, 273.09], [1582.38, 1130.38], [1127.38, 1057.33], [1169.38, 702.21], [1143.38, 701.21], [1191.38, 298.08], [1269.38, 204.04]]', 32, NOW(), NOW() + INTERVAL '6 months'),
('A007', 'Salle de classe', 0, 1, 50, '[[2310.75, 372.22], [2296.75, 460.25], [2428.75, 484.26], [2424.75, 608.31], [2326.75, 598.3], [2274.75, 890.4], [2278.75, 1222.51], [1812.75, 1224.51], [1822.75, 1148.49], [1674.75, 1148.49], [1590.75, 1136.48], [1700.75, 274.19]]', 47, NOW(), NOW() + INTERVAL '6 months'),
('A008', 'Salle de classe', 0, 1, 47.9, '[[2514.75, 1356.12], [2490.75, 2072.12], [1682.75, 2074.12], [1680.75, 1452.12], [1818.75, 1450.12], [1820.75, 1356.12], [2194.75, 1350.12], [2194.75, 1440.12], [2326.75, 1440.12], [2334.75, 1350.12]]', 46, NOW(), NOW() + INTERVAL '6 months'),
('A106', 'Salle de classe', 1, 1, 36.4, '[[2914, 2137], [2967, 2625], [2541, 2670], [2491, 2169]]', 32, NOW(), NOW() + INTERVAL '6 months'),
('A105bis', 'Salle de classe', 1, 1, 31.8, '[[2968, 2631], [3014, 3060], [2587, 3107], [2543, 2675]]', 29, NOW(), NOW() + INTERVAL '6 months'),
('A105', 'Salle de classe', 1, 1, 33, '[[3015, 3064], [3063, 3509], [2633, 3555], [2589, 3112]]', 28, NOW(), NOW() + INTERVAL '6 months'),
('A111', 'Salle de classe', 1, 1, 51.5, '[[2147, 2285.13], [2186, 2742.32], [1505, 2741.16], [1515.25, 2283.03]]', 49, NOW(), NOW() + INTERVAL '6 months'),
('A112', 'Salle de classe', 1, 1, 51.6, '[[1510, 2283.11], [1501, 2740.3], [989.5, 2740.15], [846.25, 2668.57], [833, 2627.06], [841.25, 2279.28]]', 48, NOW(), NOW() + INTERVAL '6 months'),
('A113', 'Salle de classe', 1, 1, 30.2, '[[619, 2277.96], [546, 2763.87], [171, 2717.88], [241, 2275.96]]', 26, NOW(), NOW() + INTERVAL '6 months'),
('Amphithéâtre', 'Amphithéâtre', 0, 2, 58.2, '[[2185.18, 2407], [2192.35, 3176], [1366.35, 3192], [1362.35, 3080], [1306.35, 3074], [1310.35, 2408]]', 110, NOW(), NOW() + INTERVAL '6 months'),
('C008', 'Salle de classe', 0, 2, 28.5, '[[1132.35, 1973.83], [1134.35, 2379.76], [340.35, 2389.76], [338.35, 1961.83]]', 27, NOW(), NOW() + INTERVAL '6 months'),
('C009', 'Salle de classe', 0, 2, 28.4, '[[1134.35, 2391.85], [1140.35, 2805.77], [344.35, 2815.77], [338.35, 2391.85]]', 28, NOW(), NOW() + INTERVAL '6 months'),
('C010', 'Salle de classe', 0, 2, 28.4, '[[1141.15, 2813.82], [1141.15, 3223.75], [351.15, 3243.72], [343.15, 2821.8]]', 28, NOW(), NOW() + INTERVAL '6 months'),
('C011', 'Salle de classe', 0, 2, 24.3, '[[1794.38, 3193.92], [1801.38, 3473.87], [1880.38, 3584.85], [1321.69, 3933.4], [1320.09, 3315.99], [1363.34, 3315.49], [1364.69, 3200.5]]', 24, NOW(), NOW() + INTERVAL '6 months'),
('C012', 'Salle de classe', 0, 2, 28.6, '[[1142.75, 3233.7], [1140.75, 3653.63], [354.75, 3675.62], [352.75, 3251.7]]', 29, NOW(), NOW() + INTERVAL '6 months'),
('C013', 'Salle de classe', 0, 2, 35.9, '[[1142.75, 3663.7], [1136.75, 4023.64], [752.75, 4265.6], [366.75, 4287.59], [354.75, 3687.7]]', 32, NOW(), NOW() + INTERVAL '6 months');

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