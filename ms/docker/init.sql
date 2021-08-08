GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'test';
FLUSH PRIVILEGES;



-- organizations definition

CREATE TABLE `organizations` (
     `organization_id` varchar(100) NOT NULL,
     `name` text DEFAULT NULL,
     `contact_name` text DEFAULT NULL,
     `contact_email` text DEFAULT NULL,
     `contact_phone` text DEFAULT NULL,
     PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- licenses definition

CREATE TABLE `licenses` (
    `license_id` varchar(100) NOT NULL,
    `organization_id` varchar(100) NOT NULL,
    `description` text DEFAULT NULL,
    `product_name` text NOT NULL,
    `license_type` text NOT NULL,
    `comment` text DEFAULT NULL,
    PRIMARY KEY (`license_id`),
    KEY `licenses_FK` (`organization_id`),
    CONSTRAINT `licenses_FK` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;