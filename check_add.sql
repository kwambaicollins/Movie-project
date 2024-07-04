ALTER TABLE `stars`
ADD CHECK (gender IN ('male', 'female'))

ALTER TABLE `movies` ADD moviestatus VARCHAR(20)

ALTER TABLE movies
ADD CHECK (moviestatus IN ('upcoming', 'released', 'cancelled'))

ALTER TABLE movies
ADD CHECK (dateadded IS NOT NULL AND dateadded > '1900-01-01')

ALTER TABLE movies ADD CHECK (runningtime > 0)

ALTER TABLE movies ADD CHECK (synopsis IS NOT NULL AND LENGTH(synopsis) > 0)

ALTER TABLE movies ADD CHECK (datedeleted IS NULL OR (datedeleted > '1900-01-01' AND datedeleted >= dateadded))

ALTER TABLE movies ADD CHECK 

ALTER TABLE `directors` ADD CHECK (LENGTH(lastname) > 0)

ALTER TABLE directors ADD CHECK (dateofbirth > '1900-01-01')

ALTER TABLE directors ADD CHECK (LENGTH(mugshot) > 0)

ALTER TABLE directors ADD CHECK (LENGTH(nationality) > 0)

ALTER TABLE directors ADD CHECK (deleted IN (0, 1))

ALTER TABLE directors ADD CHECK (datedeleted IS NULL OR (datedeleted >= dateofbirth))

ALTER TABLE genres ADD CHECK (LENGTH(genrename) > 0)

ALTER TABLE genres ADD CHECK (dateadded >= '1900-01-01')

ALTER TABLE genres ADD CHECK (deleted IN (0, 1))

ALTER TABLE genres ADD CHECK (datedeleted IS NULL OR (datedeleted >= dateadded))

ALTER TABLE languages ADD CHECK (LENGTH(languagename) > 0)

ALTER TABLE `languages` ADD CHECK (dateadded >= '1900-01-01')

ALTER TABLE languages ADD CHECK (datedeleted IS NULL OR (datedeleted >= dateadded))

ALTER TABLE media ADD CHECK (LENGTH(medianame) > 0)

ALTER TABLE media ADD CHECK (dateadded >= '1900-01-01')

ALTER TABLE media ADD CHECK (deleted IN (0, 1))

ALTER TABLE moviecast ADD CHECK (LENGTH(roledescription) > 0)

ALTER TABLE moviecast ADD CHECK (LENGTH(castname) > 0)

ALTER TABLE moviecast ADD CHECK (dateadded >= '1900-01-01')

ALTER TABLE moviecast ADD CHECK (datedeleted IS NULL OR (datedeleted >= dateadded))

ALTER TABLE movielanguages ADD CHECK (dateadded >= '1900-01-01')

ALTER TABLE movielanguages ADD CHECK (deleted IN (0, 1))

ALTER TABLE movielanguages ADD CHECK (datedeleted IS NULL OR (datedeleted >= dateadded))

ALTER TABLE nationalities ADD CHECK (LENGTH(countryname) > 0)

ALTER TABLE objects ADD CHECK (LENGTH(objectid) > 0)

ALTER TABLE objects ADD CHECK (LENGTH(objectname) > 0)

ALTER TABLE `privileges` ADD CHECK (dateadded >= '1900-01-01')

ALTER TABLE `productioncompanies` ADD CHECK (LENGTH(companyname) > 0)

ALTER TABLE `productioncompanies` ADD CHECK (dateadded >= '1900-01-01')

ALTER TABLE `productioncompanies` ADD CHECK (deleted IN (0, 1))

ALTER TABLE productioncompanies ADD CHECK (datedeleted IS NULL OR (datedeleted >= dateadded))

ALTER TABLE ratings ADD CHECK (dateadded >= '1900-01-01')

ALTER TABLE ratings ADD CHECK (dateadded >= '1900-01-01')

ALTER TABLE resolution ADD CHECK (LENGTH(resolutionname) > 0)

ALTER TABLE resolution ADD CHECK (dateadded >= '1900-01-01')

ALTER TABLE resolution ADD CHECK (deleted IN (0, 1))

ALTER TABLE resolution ADD CHECK (datedeleted IS NULL OR (datedeleted >= dateadded))

ALTER TABLE roles ADD CHECK (LENGTH(rolename) > 0)

ALTER TABLE roles ADD CHECK (dateadded >= '1900-01-01')

ALTER TABLE roles ADD CHECK (datedeleted IS NULL OR (datedeleted >= dateadded))

ALTER TABLE stars ADD CHECK (LENGTH(firstname) > 0)

ALTER TABLE stars ADD CHECK (LENGTH(lastname) > 0)

ALTER TABLE stars ADD CHECK (gender IN ('male', 'female'))

ALTER TABLE stars ADD CHECK (dateadded >= '1900-01-01')

ALTER TABLE stars ADD CHECK (datedeleted IS NULL OR (datedeleted >= dateadded))

ALTER TABLE users ADD CHECK (LENGTH(username) > 0)

ALTER TABLE users ADD CHECK (LENGTH(username) > 0)

ALTER TABLE users ADD CHECK (LENGTH(lastname) > 0)

ALTER TABLE users ADD CHECK (LENGTH(PASSWORD) > 0)

ALTER TABLE users ADD CHECK (LENGTH(systemadmin) > 0)

ALTER TABLE users ADD CHECK (LENGTH(addedby) > 0)

ALTER TABLE users ADD CHECK (LENGTH(mobile) > 0)

`movies_database`
