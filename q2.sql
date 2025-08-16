USE lab2db;
DROP PROCEDURE IF EXISTS GetWatchHistoryBySubscriber;

DELIMITER //

CREATE PROCEDURE GetWatchHistoryBySubscriber(IN sub_id INT)
BEGIN
    SELECT 
        Title AS ShowTitle,
        WatchTime AS MinutesWatched
    FROM WatchHistory
    NATURAL JOIN Shows
    WHERE SubscriberID = sub_id;
END //

DELIMITER ;
