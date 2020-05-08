BEGIN;

TRUNCATE
  users,
  events;
  -- RESTART IDENTITY CASCADE;

INSERT INTO users (username, fullname, password)
VALUES
  ('dunder', 'Dunder Mifflin', 'password'),
  ('deboop', 'Bodeep Deboop', 'bo-password'),
  ('bloggs', 'Charlie Bloggs', 'charlie-password'),
  ('smith', 'Sam Smith', 'sam-password'),
  ('lexlor', 'Alex Taylor', 'lex-password'),
  ('wippy', 'Ping Won In', 'ping-password');

INSERT INTO events (parent_name, title, description, address, time_of_event, type)
VALUES
  ('Madie','Weekend Picnic', 'I am having a picnic this weekend','Culver city park 300 Jefferson blvd, Culver City, CA 90232.', '2020-05-10 13:30:00','outdoor-activities' ),
  ('Meek','Play Date', 'Welcome to our playdate this Friday', 'Central Park, 110 Central Park S. New York, NY 10019.', '2020-05-15 14:45:00', 'music-dance'),
  ('Jasmine','Tutoring', 'I need someone to tutor my 8 year old son', 'Little Library, 209 Pacific Palisades, Santa Monica, CA90405.','2020-05-20 17:00:00', 'tutoring');


COMMIT;
