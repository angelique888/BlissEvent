CREATE TABLE User (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Date DATETIME
);

CREATE TABLE Event (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Image VARCHAR(255),
    Category VARCHAR(255),
    Title VARCHAR(255) NOT NULL,
    Description TEXT,
    Detail TEXT,
    Date_start DATETIME,
    Date_end DATETIME,
    Price DECIMAL(10, 2)
);

CREATE TABLE Notification (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Description TEXT,
    Date DATETIME,
    Event_id INT,
    FOREIGN KEY (Event_id) REFERENCES Event(Id)
);

CREATE TABLE Ticket (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Price DECIMAL(10, 2),
    Date DATETIME,
    Event_id INT,
    User_id INT,
    FOREIGN KEY (Event_id) REFERENCES Event(Id),
    FOREIGN KEY (User_id) REFERENCES User(Id)
);

CREATE TABLE EventUser (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Event_id INT,
    User_id INT,
    FOREIGN KEY (Event_id) REFERENCES Event(Id),
    FOREIGN KEY (User_id) REFERENCES User(Id)
);

CREATE TABLE UserNotification (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    User_id INT,
    Notification_id INT,
    FOREIGN KEY (User_id) REFERENCES User(Id),
    FOREIGN KEY (Notification_id) REFERENCES Notification(Id)
);

CREATE TABLE Media (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Type VARCHAR(50),
    Url VARCHAR(255),
    Date DATETIME
);

CREATE TABLE MediaEvent (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Media_id INT,
    Event_id INT,
    FOREIGN KEY (Media_id) REFERENCES Media(Id),
    FOREIGN KEY (Event_id) REFERENCES Event(Id)
);

CREATE TABLE MediaUser (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Media_id INT,
    User_id INT,
    FOREIGN KEY (Media_id) REFERENCES Media(Id),
    FOREIGN KEY (User_id) REFERENCES User(Id)
);