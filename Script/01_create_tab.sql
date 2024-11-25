---Script per creare le tabelle nel database MySQL

---Nota: I dati per queste tabella devono essere importati da 'data/clean_train\test\gendersubmission.csv'

CREATE TABLE `train` (
  `PassengerId` int NOT NULL,
  `Survived` tinyint DEFAULT NULL,
  `Pclass` int DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Sex` varchar(20) DEFAULT NULL,
  `Age` decimal(5,2) DEFAULT NULL,
  `SibSp` int DEFAULT NULL,
  `Parch` int DEFAULT NULL,
  `Ticket` varchar(50) DEFAULT NULL,
  `Fare` float DEFAULT NULL,
  `Cabin` varchar(50) DEFAULT NULL,
  `Embarked` char(1) DEFAULT NULL,
  PRIMARY KEY (`PassengerId`)

CREATE TABLE `test` (
  `PassengerId` int NOT NULL,
  `Pclass` int DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Sex` varchar(20) DEFAULT NULL,
  `Age` float DEFAULT NULL,
  `SibSp` int DEFAULT NULL,
  `Parch` int DEFAULT NULL,
  `Ticket` varchar(50) DEFAULT NULL,
  `Fare` float DEFAULT NULL,
  `Cabin` varchar(50) DEFAULT NULL,
  `Embarked` char(1) DEFAULT NULL,
  PRIMARY KEY (`PassengerId`)

  CREATE TABLE `gendersubmission` (
  `PassengerId` int NOT NULL,
  `Survived` tinyint DEFAULT NULL,
  PRIMARY KEY (`PassengerId`)