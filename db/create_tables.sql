BEGIN;

CREATE TABLE IF NOT EXISTS `barometric_readings` (
  `reading_id` INTEGER PRIMARY KEY,
  `temperature_c` double NOT NULL,
  `temperature_f` double NOT NULL,
  `barometric_pressure` varchar(20) NOT NULL,
  `altitude` varchar(20) NOT NULL,
  `dateMeasured` date NOT NULL,
  `hourMeasured` datetime NOT NULL,
  `timeBlock` int(128) NOT NULL
);

CREATE TABLE IF NOT EXISTS `temp_humidity` (
  `dht_id` INTEGER PRIMARY KEY,
  `reading_id` int(20) NOT NULL,
  `temperature_c` double NOT NULL,
  `temperature_f` double NOT NULL,
  `humidity` varchar(20) NOT NULL,
  `dateMeasured` date NOT NULL,
  `hourMeasured` datetime NOT NULL,
  `timeBlock` int(128) NOT NULL,
  FOREIGN KEY (`reading_id`) REFERENCES barometric_readings(`reading_id`)
);

COMMIT;