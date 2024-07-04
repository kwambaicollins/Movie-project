Movie Data Dictionary:

1. Movies Table
This table holds information about movies.
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    ReleaseYear INT,
    Director VARCHAR(255),
    Rating DECIMAL(3, 2)
);

2. Roles Table
This table holds information about different roles in movies.
CREATE TABLE Roles (
    RoleID INT PRIMARY KEY AUTO_INCREMENT,
    RoleName VARCHAR(255) NOT NULL
);

3. MovieRoles Table
This table creates a many-to-many relationship between Movies and Roles.
CREATE TABLE MovieRoles (
    MovieID INT,
    RoleID INT,
    ActorName VARCHAR(255),
    PRIMARY KEY (MovieID, RoleID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);

4. Games Table
This table holds information about games related to movies.
CREATE TABLE Games (
    GameID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Platform VARCHAR(255),
    ReleaseDate DATE,
    MovieID INT,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);

5. Genres Table
This table holds information about different genres.
CREATE TABLE Genres (
    GenreID INT PRIMARY KEY AUTO_INCREMENT,
    GenreName VARCHAR(255) NOT NULL
);

6. MovieGenres Table
This table creates a many-to-many relationship between Movies and Genres.

CREATE TABLE MovieGenres (
    MovieID INT,
    GenreID INT,
    PRIMARY KEY (MovieID, GenreID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

7. Languages Table
This table holds information about different languages.

CREATE TABLE Languages (
    LanguageID INT PRIMARY KEY AUTO_INCREMENT,
    LanguageName VARCHAR(255) NOT NULL
);

8. MovieLanguages Table
This table creates a many-to-many relationship between Movies and Languages.

CREATE TABLE MovieLanguages (
    MovieID INT,
    LanguageID INT,
    PRIMARY KEY (MovieID, LanguageID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (LanguageID) REFERENCES Languages(LanguageID)
);

9. Media Table
This table holds information about different media types related to movies.
CREATE TABLE Media (
    MediaID INT PRIMARY KEY AUTO_INCREMENT,
    MediaType VARCHAR(255) NOT NULL,
    Format VARCHAR(255),
    MovieID INT,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);
