CREATE TABLE one_six (
	_date TIMESTAMP WITHOUT TIME ZONE NOT NULL, 
	team VARCHAR(8) NOT NULL, 
	opponent VARCHAR(13) NOT NULL, 
	w_l VARCHAR(1) NOT NULL, 
	status VARCHAR(7) NOT NULL, 
	pos VARCHAR(2) NOT NULL, 
	_min VARCHAR(5) NOT NULL, 
	fgm INTEGER NOT NULL, 
	fga INTEGER NOT NULL, 
	fg_ DECIMAL(3, 3) NOT NULL, 
	_3pm INTEGER NOT NULL, 
	_3pa INTEGER NOT NULL, 
	_3p_ DECIMAL(3, 3) NOT NULL, 
	ftm INTEGER NOT NULL, 
	fta INTEGER NOT NULL, 
	ft_ DECIMAL(4, 3) NOT NULL, 
	orb INTEGER NOT NULL, 
	drb INTEGER NOT NULL, 
	reb INTEGER NOT NULL, 
	ast INTEGER NOT NULL, 
	stl INTEGER NOT NULL, 
	blk BOOLEAN NOT NULL, 
	pts INTEGER NOT NULL, 
	fic DECIMAL(3, 1) NOT NULL, 
	pf INTEGER NOT NULL, 
	tov INTEGER NOT NULL
);

INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('one_six-01-22 00:00:00', 'Warriors', 'Pacers', 'W', 'Starter', 'PG', '36:49', 11, 19, 0.579, 8, 15, 0.533, 9, 9, 1.000, 2, 8, 10, 12, 1, False, 39, 39.9, 1, 2);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('one_six-01-20 00:00:00', 'Warriors', 'Bulls', 'W', 'Starter', 'PG', '33:45', 8, 18, 0.444, 3, 9, 0.333, 6, 6, 1.000, 1, 6, 7, 11, 2, True, 25, 25.8, 2, 2);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('one_six-01-18 00:00:00', 'Warriors', 'Cavaliers', 'W', 'Starter', 'PG', '28:03', 12, 18, 0.667, 7, 12, 0.583, 4, 4, 1.000, 2, 3, 5, 4, 3, False, 35, 28.8, 3, 1);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('one_six-01-16 00:00:00', 'Warriors', 'Pistons', 'L', 'Starter', 'PG', '36:55', 13, 26, 0.500, 7, 15, 0.467, 5, 6, 0.833, 1, 6, 7, 5, 2, False, 38, 26.3, 1, 2);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('one_six-01-14 00:00:00', 'Warriors', 'Lakers', 'W', 'Starter', 'PG', '29:31', 9, 18, 0.500, 8, 16, 0.500, 0, 0, 0.000, 2, 4, 6, 3, 1, False, 26, 17.0, 3, 3);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('one_six-01-13 00:00:00', 'Warriors', 'Nuggets', 'L', 'Starter', 'PG', '39:48', 13, 25, 0.520, 5, 12, 0.417, 7, 7, 1.000, 2, 3, 5, 9, 3, True, 38, 25.4, 1, 8);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('one_six-01-11 00:00:00', 'Warriors', 'Heat', 'W', 'Starter', 'PG', '37:34', 11, 27, 0.407, 4, 11, 0.364, 5, 6, 0.833, 0, 2, 2, 6, 1, False, 31, 15.0, 2, 1);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('one_six-01-09 00:00:00', 'Warriors', 'Kings', 'W', 'Starter', 'PG', '37:54', 12, 21, 0.571, 8, 14, 0.571, 6, 7, 0.857, 1, 5, 6, 11, 1, True, 38, 31.9, 3, 4);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('one_six-01-08 00:00:00', 'Warriors', 'Trail Blazers', 'W', 'Starter', 'PG', '28:50', 8, 18, 0.444, 4, 11, 0.364, 6, 6, 1.000, 0, 3, 3, 9, 1, False, 26, 20.5, 2, 1);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('one_six-01-05 00:00:00', 'Warriors', 'Lakers', 'W', 'Starter', 'PG', '26:08', 6, 13, 0.462, 4, 8, 0.500, 1, 1, 1.000, 1, 0, 1, 6, 3, False, 17, 12.9, 2, 3);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('one_six-01-04 00:00:00', 'Warriors', 'Hornets', 'W', 'Starter', 'PG', '31:51', 12, 21, 0.571, 5, 10, 0.500, 1, 1, 1.000, 0, 3, 3, 4, 2, False, 30, 18.1, 4, 2);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('one_six-01-02 00:00:00', 'Warriors', 'Nuggets', 'W', 'Starter', 'PG', '14:23', 2, 6, 0.333, 1, 5, 0.200, 0, 0, 0.000, 0, 1, 1, 4, 2, False, 5, 4.8, 1, 2);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-12-28 00:00:00', 'Warriors', 'Kings', 'W', 'Starter', 'PG', '30:22', 7, 16, 0.438, 6, 13, 0.462, 3, 4, 0.750, 0, 14, 14, 10, 2, False, 23, 28.5, 3, 2);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-12-25 00:00:00', 'Warriors', 'Cavaliers', 'W', 'Starter', 'PG', '36:35', 6, 15, 0.400, 1, 4, 0.250, 6, 6, 1.000, 1, 6, 7, 7, 2, False, 19, 15.5, 3, 3);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-12-23 00:00:00', 'Warriors', 'Jazz', 'W', 'Starter', 'PG', '34:13', 5, 14, 0.357, 2, 8, 0.250, 4, 4, 1.000, 1, 4, 5, 9, 3, False, 16, 16.0, 2, 3);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-12-18 00:00:00', 'Warriors', 'Bucks', 'W', 'Starter', 'PG', '39:20', 7, 14, 0.500, 2, 6, 0.333, 10, 11, 0.909, 2, 8, 10, 9, 2, False, 26, 23.4, 2, 6);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-12-16 00:00:00', 'Warriors', 'Suns', 'W', 'Starter', 'PG', '29:35', 10, 14, 0.714, 2, 5, 0.400, 3, 5, 0.600, 0, 2, 2, 7, 1, False, 25, 17.1, 4, 3);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-12-12 00:00:00', 'Warriors', 'Bucks', 'L', 'Starter', 'PG', '35:14', 10, 22, 0.455, 2, 9, 0.222, 6, 7, 0.857, 2, 5, 7, 5, 1, False, 28, 17.6, 2, 2);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-12-11 00:00:00', 'Warriors', 'Celtics', 'W', 'Starter', 'PG', '46:55', 9, 27, 0.333, 6, 13, 0.462, 14, 14, 1.000, 3, 8, 11, 8, 2, False, 38, 21.5, 4, 8);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-12-08 00:00:00', 'Warriors', 'Pacers', 'W', 'Starter', 'PG', '35:39', 11, 23, 0.478, 3, 10, 0.300, 4, 6, 0.667, 0, 7, 7, 10, 3, False, 29, 23.3, 1, 4);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-12-06 00:00:00', 'Warriors', 'Nets', 'W', 'Starter', 'PG', '32:14', 11, 17, 0.647, 5, 9, 0.556, 1, 4, 0.250, 0, 5, 5, 2, 1, False, 28, 15.5, 2, 4);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-12-05 00:00:00', 'Warriors', 'Raptors', 'W', 'Starter', 'PG', '37:51', 14, 24, 0.583, 9, 15, 0.600, 7, 9, 0.778, 1, 1, 2, 7, 0, False, 44, 26.4, 4, 3);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-12-02 00:00:00', 'Warriors', 'Hornets', 'W', 'Starter', 'PG', '30:49', 14, 18, 0.778, 8, 11, 0.727, 4, 4, 1.000, 0, 3, 3, 5, 0, False, 40, 26.3, 2, 5);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-30 00:00:00', 'Warriors', 'Jazz', 'W', 'Starter', 'PG', '37:16', 9, 20, 0.450, 4, 8, 0.500, 4, 4, 1.000, 2, 4, 6, 5, 2, False, 26, 18.5, 2, 2);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-28 00:00:00', 'Warriors', 'Kings', 'W', 'Starter', 'PG', '29:48', 4, 7, 0.571, 3, 6, 0.500, 8, 8, 1.000, 0, 4, 4, 6, 3, False, 19, 21.3, 1, 1);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-27 00:00:00', 'Warriors', 'Suns', 'W', 'Starter', 'PG', '30:39', 11, 20, 0.550, 9, 16, 0.563, 10, 11, 0.909, 1, 5, 6, 8, 2, False, 41, 29.6, 2, 6);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-24 00:00:00', 'Warriors', 'Lakers', 'W', 'Starter', 'PG', '30:10', 10, 21, 0.476, 4, 12, 0.333, 0, 0, 0.000, 0, 4, 4, 9, 2, False, 24, 21.8, 1, 0);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-22 00:00:00', 'Warriors', 'Nuggets', 'W', 'Starter', 'PG', '27:37', 8, 16, 0.500, 3, 8, 0.375, 0, 0, 0.000, 0, 4, 4, 7, 3, False, 19, 16.0, 0, 4);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-20 00:00:00', 'Warriors', 'Bulls', 'W', 'Starter', 'PG', '36:05', 9, 20, 0.450, 3, 11, 0.273, 6, 6, 1.000, 1, 4, 5, 4, 4, False, 27, 14.8, 2, 6);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-19 00:00:00', 'Warriors', 'Clippers', 'W', 'Starter', 'PG', '36:46', 11, 22, 0.500, 6, 14, 0.429, 12, 12, 1.000, 0, 11, 11, 4, 3, False, 40, 26.3, 2, 7);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-17 00:00:00', 'Warriors', 'Raptors', 'W', 'Starter', 'PG', '39:35', 13, 23, 0.565, 5, 10, 0.500, 6, 7, 0.857, 0, 2, 2, 9, 2, False, 37, 22.1, 1, 7);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-14 00:00:00', 'Warriors', 'Nets', 'W', 'Starter', 'PG', '43:44', 13, 31, 0.419, 5, 16, 0.313, 3, 3, 1.000, 0, 3, 3, 6, 1, False, 34, 14.4, 1, 4);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-12 00:00:00', 'Warriors', 'Timberwolves', 'W', 'Starter', 'PG', '37:42', 15, 25, 0.600, 8, 13, 0.615, 8, 8, 1.000, 0, 5, 5, 4, 2, False, 46, 29.5, 3, 3);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-11 00:00:00', 'Warriors', 'Grizzlies', 'W', 'Starter', 'PG', '34:30', 9, 21, 0.429, 3, 10, 0.300, 7, 7, 1.000, 0, 5, 5, 5, 5, True, 28, 19.9, 1, 4);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-09 00:00:00', 'Warriors', 'Pistons', 'W', 'Starter', 'PG', '36:50', 7, 18, 0.389, 3, 7, 0.429, 5, 6, 0.833, 1, 4, 5, 5, 3, False, 22, 12.8, 1, 5);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-07 00:00:00', 'Warriors', 'Kings', 'W', 'Starter', 'PG', '39:08', 8, 18, 0.444, 2, 10, 0.200, 6, 7, 0.857, 1, 5, 6, 3, 2, False, 24, 11.1, 1, 6);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-06 00:00:00', 'Warriors', 'Nuggets', 'W', 'Starter', 'PG', '34:39', 12, 22, 0.545, 8, 16, 0.500, 2, 3, 0.667, 0, 7, 7, 10, 3, True, 34, 31.1, 1, 4);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-04 00:00:00', 'Warriors', 'Clippers', 'W', 'Starter', 'PG', '32:38', 8, 17, 0.471, 7, 11, 0.636, 8, 9, 0.889, 0, 5, 5, 4, 1, False, 31, 22.1, 3, 0);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-11-02 00:00:00', 'Warriors', 'Grizzlies', 'W', 'Starter', 'PG', '28:24', 10, 16, 0.625, 4, 8, 0.500, 6, 6, 1.000, 1, 2, 3, 3, 3, True, 30, 21.3, 2, 3);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-10-31 00:00:00', 'Warriors', 'Pelicans', 'W', 'Starter', 'PG', '35:38', 17, 27, 0.630, 8, 14, 0.571, 11, 11, 1.000, 0, 4, 4, 9, 4, False, 53, 41.1, 3, 2);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-10-30 00:00:00', 'Warriors', 'Rockets', 'W', 'Starter', 'PG', '27:24', 9, 15, 0.600, 4, 9, 0.444, 3, 4, 0.750, 0, 7, 7, 6, 1, False, 25, 21.5, 4, 1);
INSERT INTO one_six (_date, team, opponent, w_l, status, pos, _min, fgm, fga, fg_, _3pm, _3pa, _3p_, ftm, fta, ft_, orb, drb, reb, ast, stl, blk, pts, fic, pf, tov) VALUES ('2015-10-27 00:00:00', 'Warriors', 'Pelicans', 'W', 'Starter', 'PG', '35:37', 14, 26, 0.538, 5, 12, 0.417, 7, 7, 1.000, 3, 3, 6, 7, 2, False, 40, 29.6, 1, 2);
