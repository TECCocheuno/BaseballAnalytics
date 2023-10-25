-- baseball_db.sql 

CREATE DATABASE baseball_db;

USE baseball_db;

CREATE TABLE teams (
  team_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  city VARCHAR(50)
);

CREATE TABLE players (
  player_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  position ENUM('infielder', 'outfielder', 'pitcher', 'catcher'),
  batting_avg DECIMAL(3,2),
  home_runs INT,
  rbis INT,
  fielding_pct DECIMAL(3,2),
  errors INT
);

INSERT INTO teams VALUES 
  (1, 'Yankees', 'New York'),
  (2, 'Red Sox', 'Boston');

INSERT INTO players VALUES
  (1, 'Player 1', 'infielder', 0.278, 12, 56, 0.984, 4),
  (2, 'Player 2', 'infielder', 0.299, 8, 63, 0.977, 5),
  (3, 'Player 3', 'infielder', 0.312, 10, 48, 0.968, 7),
  (4, 'Player 4', 'infielder', 0.226, 2, 29, 0.991, 1),
  (5, 'Player 5', 'infielder', 0.276, 15, 57, 0.983, 5),
  (6, 'Player 6', 'infielder', 0.254, 6, 42, 0.989, 2),
  (7, 'Player 7', 'infielder', 0.230, 4, 35, 0.979, 6),    
  (8, 'Player 8', 'infielder', 0.203, 1, 19, 0.997, 0),
  (9, 'Player 9', 'infielder', 0.240, 10, 49, 0.972, 8),
  (10, 'Player 10', 'infielder', 0.287, 7, 44, 0.984, 4),

  (11, 'Player 11', 'outfielder', 0.295, 9, 62, 0.993, 2), 
  (12, 'Player 12', 'outfielder', 0.280, 5, 47, 0.986, 3),
  (13, 'Player 13', 'outfielder', 0.247, 12, 55, 0.980, 5),
  (14, 'Player 14', 'outfielder', 0.318, 7, 59, 0.997, 1),
  (15, 'Player 15', 'outfielder', 0.279, 8, 49, 0.989, 3),
  (16, 'Player 16', 'outfielder', 0.205, 3, 25, 0.967, 7),
  (17, 'Player 17', 'outfielder', 0.292, 11, 63, 0.981, 4),  
  (18, 'Player 18', 'outfielder', 0.263, 13, 52, 0.990, 2),
  (19, 'Player 19', 'outfielder', 0.274, 6, 44, 0.976, 6),
  (20, 'Player 20', 'outfielder', 0.307, 10, 57, 0.994, 1),  

  (21, 'Player 21', 'pitcher', NULL, NULL, NULL, NULL, NULL),
  (22, 'Player 22', 'pitcher', NULL, NULL, NULL, NULL, NULL),
  (23, 'Player 23', 'pitcher', NULL, NULL, NULL, NULL, NULL),
  (24, 'Player 24', 'pitcher', NULL, NULL, NULL, NULL, NULL),
  (25, 'Player 25', 'pitcher', NULL, NULL, NULL, NULL, NULL),

  (26, 'Player 26', 'catcher', 0.247, 5, 42, 0.990, 2),
  (27, 'Player 27', 'catcher', 0.223, 8, 39, 0.986, 3);

CREATE VIEW batters AS
  SELECT * FROM players
  WHERE position IN ('infielder', 'outfielder', 'catcher');

CREATE VIEW fielders AS  
  SELECT fielding_pct, errors
  FROM players
  WHERE position NOT IN ('pitcher');

-- Additional views and analytics queries