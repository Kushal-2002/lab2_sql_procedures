USE lab2db;
DROP PROCEDURE IF EXISTS SendWatchTimeReport;

DELIMITER //

CREATE PROCEDURE SendWatchTimeReport()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE sid INT;

    DECLARE cur CURSOR FOR SELECT SubscriberID FROM Subscribers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO sid;
        IF done THEN
            LEAVE read_loop;
        END IF;

        IF EXISTS (SELECT 1 FROM WatchHistory WHERE SubscriberID = sid) THEN
            CALL GetWatchHistoryBySubscriber(sid);
        END IF;
    END LOOP;
    CLOSE cur;
END //

DELIMITER ;
