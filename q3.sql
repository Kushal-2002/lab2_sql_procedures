USE lab2db;
DROP PROCEDURE IF EXISTS AddSubscriberIfNotExists;

DELIMITER //

CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    DECLARE nextID INT;

    IF NOT EXISTS (SELECT 1 FROM Subscribers WHERE SubscriberName = subName) THEN
        SELECT IFNULL(MAX(SubscriberID), 0) + 1 INTO nextID FROM Subscribers;
        INSERT INTO Subscribers (SubscriberID, SubscriberName, SubscriptionDate)
        VALUES (nextID, subName, CURDATE());
    END IF;
END //

DELIMITER ;
