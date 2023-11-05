DROP TABLE IF EXISTS files;
CREATE TABLE files (
  FileID int(10) unsigned NOT NULL AUTO_INCREMENT,
  FileExtension varchar(255) DEFAULT NULL,
  BlurHash varchar(255) DEFAULT NULL,
  Status char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (FileID)
);



DROP TABLE IF EXISTS user;
CREATE TABLE `user` (
  UserID int(10) unsigned NOT NULL AUTO_INCREMENT,
  UserName varchar(255) DEFAULT NULL,
  Password varchar(255) DEFAULT NULL,
  PRIMARY KEY (UserID)
); 

DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `UserID` int(10) unsigned NOT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Gender` char(1) NOT NULL DEFAULT '',
  `Image` longblob,
  `ImageString` varchar(255) DEFAULT '',
  `Status` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`UserID`),
  CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;