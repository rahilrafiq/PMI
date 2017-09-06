CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `warehouse_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


CREATE TABLE `item_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE `item_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type_id` int(11) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `product_unit` varchar(45) DEFAULT NULL,
  `qbp` int(11) DEFAULT NULL,
  `moq` int(11) DEFAULT NULL,
  `reorder_point` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_type_fk_idx` (`item_type_id`),
  CONSTRAINT `item_type_fk` FOREIGN KEY (`item_type_id`) REFERENCES `item_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



CREATE TABLE `item_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `office_id` int(11) DEFAULT NULL,
  `office_name` varchar(45) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `warehouse_name` varchar(45) DEFAULT NULL,
  `In_Stock` int(11) DEFAULT NULL,
  `Is_Available` int(11) DEFAULT NULL,
  `Is_Sold` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_item_idx` (`item_id`),
  CONSTRAINT `fk_item` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


CREATE TABLE `product_sales` (
  `id` int(11) NOT NULL,
  `product_detail_id` int(11) DEFAULT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `In_Tranit` tinyint(4) DEFAULT NULL,
  `Is_Shipped` tinyint(4) DEFAULT NULL,
  `Is-Active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



