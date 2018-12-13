INSERT INTO user(username,password, registration, user_group) VALUES('admin', '{noop}admin', CURRENT_TIMESTAMP(), 'ADMIN');
INSERT INTO user(username,password, registration, user_group) VALUES('admin2', '{noop}admin2', DATEADD('MONTH',-2, CURRENT_DATE), 'ADMIN');
INSERT INTO user(username,password, registration, user_group) VALUES('Bela', '{noop}admin', CURRENT_TIMESTAMP(), 'GUARD');
INSERT INTO user(username,password, registration, user_group) VALUES('Jozsi', '{noop}admin', CURRENT_TIMESTAMP(), 'GUARD');

INSERT INTO password(username,password) VALUES('admin2', '{noop}admin2');
INSERT INTO password(username,password) VALUES('admin', '{noop}admin');

INSERT INTO auditlog(user,dateTime,changeType,change) VALUES('admin', CURRENT_TIMESTAMP(),'CREATE','BELA');

INSERT INTO prisonguard(PRISONGUARD_NAME, WORK_PER_DAY, WORK_PER_WEEK) VALUES('Jozsi', 8, 40);
INSERT INTO prisonguard(PRISONGUARD_NAME, WORK_PER_DAY, WORK_PER_WEEK) VALUES('Bela', 8, 40);

INSERT INTO area(name, SECURITY_LEVEL, GUARD_NUMBER) VALUES( 'SUPER_GUARDED', 'Medium', 1);

INSERT INTO prisoncell(space,cell_desc, floor, area_id) VALUES( 4, ' Tagas', 1, 1 );
INSERT INTO prisoncell(space,cell_desc, floor, area_id) VALUES( 1, ' Zarka', -1, 1 );