CREATE TABLE Hotel (
                       Hotel_id INT PRIMARY KEY,
                       Name VARCHAR(100) NOT NULL
);

CREATE TABLE Room (
                      Room_id INT PRIMARY KEY,
                      Room_number INT NOT NULL,
                      numberofbedrooms INT NOT NULL
);

CREATE TABLE Booking (
                         Booking_id INT PRIMARY KEY,
                         Hotel_id INT,
                         Room_id INT,
                         booked VARCHAR(10),
                         FOREIGN KEY (Hotel_id) REFERENCES Hotel(Hotel_id),
                         FOREIGN KEY (Room_id) REFERENCES Room(Room_id)
);

INSERT INTO Hotel (Hotel_id, Name) VALUES
                                       (1, 'Taj'),
                                       (2, 'Park');

INSERT INTO Room (Room_id, Room_number, numberofbedrooms) VALUES
    (1, 111, 3);

INSERT INTO Booking (Booking_id, Hotel_id, Room_id, booked) VALUES
    (1, 1, 1, 'yes');