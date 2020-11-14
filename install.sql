-- alter category, product, information
ALTER TABLE `oc_category_description` ADD `meta_h1` VARCHAR(255) NOT NULL AFTER `meta_title`;
ALTER TABLE `oc_product_description` ADD `meta_h1` VARCHAR(255) NOT NULL AFTER `meta_title`;
ALTER TABLE `oc_information_description` ADD `meta_h1` VARCHAR(255) NOT NULL AFTER `meta_title`;

-- create manufacturer description, manufacturer layout
CREATE TABLE `oc_manufacturer_description` (
  `manufacturer_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `oc_manufacturer_to_layout` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;