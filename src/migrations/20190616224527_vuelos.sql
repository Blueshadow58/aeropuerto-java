CREATE TABLE vuelos (
  id INT(11) DEFAULT NULL  AUTO_INCREMENT PRIMARY KEY,
  codigo VARCHAR(45),
  fecha DATETIME,
  hora VARCHAR(45),
  estado VARCHAR(45)
  )
ENGINE = InnoDB;
