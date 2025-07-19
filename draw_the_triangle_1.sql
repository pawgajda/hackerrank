DELIMITER $$
CREATE PROCEDURE PrintLoop()
BEGIN
    DECLARE P INTEGER;
    SET P = 20;
    
    WHILE P > 0 DO
        SELECT REPEAT("* ", P);
        SET P = P - 1;
    END WHILE;
END $$

DELIMITER ;

CALL PrintLoop();
