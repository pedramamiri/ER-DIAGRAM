CREATE TABLE `anställd` (
  `id` int,
  `namn` varchar,
  `lön` int,
  `avdelning-id` int,
  PRIMARY KEY (`id`),
 `avdelning-id` int FOREIGN KEY REFERENCES `avdelning` (id)
);

CREATE TABLE `avdelning` (
  `id` int,
  `namn` varchar,
  `nummer` int,
  `anställd-chef-id` int,
  PRIMARY KEY (`id`),
  `anställd-chef-id` int FOREIGN KEY REFERENCES `anställd` (id)
);

CREATE TABLE `vara` (
  `id` int,
  `namn` varchar,
  `nummer` int,
  `avdelning-id` int,
  `leverantör-id` int,
  PRIMARY KEY (`id`),
  `avdelning-id` int FOREIGN KEY REFERENCES `avdelning` (id),
  `leverantör-id` int FOREIGN KEY REFERENCES `leverantör` (id)
);

CREATE TABLE `leverantör` (
  `id` int,
  `namn` varchar,
  `adress` varchar,
  PRIMARY KEY (`id`)
);

CREATE TABLE `kund` (
  `id` int,
  `namn` varchar,
  `adress` varchar,
  PRIMARY KEY (`id`)
);

CREATE TABLE `order` (
  `id` int,
  `order-nummer` int,
  `order-datum` date,
  `kund-id` int,
  `vara-id` int,
  PRIMARY KEY (`id`),
  `kund-id` int FOREIGN KEY REFERENCES `kund` (id),
  `vara-id` int FOREIGN KEY REFERENCES `vara` (id)
  KEY `FK` (`kund-id`, `vara-id`)
);
