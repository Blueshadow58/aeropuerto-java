CREATE TABLE pasajes (
id INT(11) DEFAULT NULL AUTO_INCREMENT PRIMARY KEY,  
pasajeroID INT ,
vueloID INT,

FOREIGN  KEY (pasajeroID) references pasajeros(id),
 FOREIGN  KEY (vueloID) references vuelos(id)
 )
ENGINE = InnoDB;