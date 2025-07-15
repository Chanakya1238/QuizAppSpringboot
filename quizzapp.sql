-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: quizzapp
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_title` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `right_answer` varchar(255) DEFAULT NULL,
  `difficulty_level` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'What is a class in Java?','A function','An object','A data structure','A loop','An object','Easy','java'),(2,'What does OOP stand for?','Object-Oriented Programming','Object Ordering Process','Operating Overloaded Pointers','Order of Operations','Object-Oriented Programming','Easy','java'),(3,'What is a list in Python?','A type of loop','A built-in function','A data structure','An object','A data structure','Easy','python'),(4,'Which data structure uses First-In-First-Out (FIFO) order?','Stack','Queue','Array','LinkedList','Queue','Medium','python'),(5,'What is a constructor?','A member of a class','A loop in Python','A data type','A special method','A special method','Medium','java'),(6,'Which sorting algorithm has the worst-case time complexity of O(n^2)?','Merge Sort','Quick Sort','Insertion Sort','Bubble Sort','Bubble Sort','Hard','python'),(7,'In Java, what is used to create an instance of a class?','Class','Method','Object','Constructor','Constructor','Easy','java'),(8,'Which keyword is used to define a variable that won?t be reassigned?','static','final','constant','immutable','final','Easy','java'),(9,'What is the output of 4 ^ 3 in Python?','7','64','81','12','64','Easy','python'),(10,'What does the term \"polymorphism\" refer to in programming?','Using multiple inheritance','Ability to take multiple forms','Manipulating data','Using multiple programming languages','Ability to take multiple forms','Medium','java'),(11,'What is the purpose of the \"self\" parameter in Python class methods?','It refers to the current instance of the class','It is used to call parent class methods','It is a keyword for loops','It is a data type','It refers to the current instance of the class','Medium','python'),(12,'Which of the following is not a primitive data type in Java?','int','boolean','char','string','string','Medium','java'),(13,'What is the time complexity of a binary search?','O(n)','O(log n)','O(n^2)','O(1)','O(log n)','Medium','python'),(14,'What keyword is used to inherit a class in Python?','extends','inherits','super','class','class','Easy','python'),(15,'Which type of loop is ideal for situations where the number of iterations is known?','for loop','while loop','do-while loop','until loop','for loop','Easy','java'),(16,'What is the purpose of \"import\" in Python?','To export data','To create a backup','To include external modules','To print output','To include external modules','Easy','python'),(17,'In Java, which access modifier provides the widest visibility?','public','private','protected','package-private','public','Easy','java'),(18,'What is a lambda function in Python?','A function that uses the \"lambda\" keyword','A function with multiple return values','A function with no parameters','An anonymous inline function','An anonymous inline function','Medium','python'),(19,'What is a linked list?','A type of array','A linear data structure','A collection of objects','A group of classes','A linear data structure','Medium','java'),(20,'Which operator is used to concatenate strings in Python?','&','+','*','++','+','Easy','python'),(21,'What does JVM stand for?','Java Virtual Machine','Just Virtual Memory','JavaScript Virtual Machine','Java Version Manager','Java Virtual Machine','Easy','java'),(22,'In Python, what is the main difference between a tuple and a list?','Tuples are mutable, lists are not','Lists are ordered, tuples are not','Tuples can store mixed data types, lists cannot','Lists have a fixed size, tuples do not','Tuples can store mixed data types, lists cannot','Medium','python'),(23,'What is the purpose of the \"finally\" block in a try-catch-finally statement?','To handle exceptions','To define a fallback value','To execute code regardless of exceptions','To terminate the program','To execute code regardless of exceptions','Medium','java'),(24,'What is a dictionary in Python?','A sorted collection of elements','A data structure used for searching','An ordered sequence of elements','A key-value store','A key-value store','Easy','python'),(25,'Which keyword is used to define a subclass in Java?','child','extends','inherits','subclass','extends','Easy','java'),(26,'What is the purpose of the \"pass\" statement in Python?','To stop the execution of a loop','To indicate an empty code block','To raise an exception','To terminate the program','To indicate an empty code block','Easy','python'),(27,'What is 247+3','1203','333','523','250','250t','Easy','Python'),(28,'What is Spring Boot?','A Java framework','A Python library','A database system','An operating system','A Java framework','Easy','java'),(29,'Where are you from','A','B','C','D','D','Medium','Place');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_seq`
--

DROP TABLE IF EXISTS `question_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_seq`
--

LOCK TABLES `question_seq` WRITE;
/*!40000 ALTER TABLE `question_seq` DISABLE KEYS */;
INSERT INTO `question_seq` VALUES (51);
/*!40000 ALTER TABLE `question_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'JQuiz'),(2,'JQuiz'),(3,'Java quiz 1'),(4,'Java quiz 1'),(5,'Java quiz 1'),(6,'Java quiz 1'),(7,'Python quiz 1'),(8,'C   quiz 1'),(9,'Java quiz 2'),(10,'Place1'),(11,'Place1'),(12,'Place1'),(13,'Java3'),(14,'Place 2'),(15,'Java4'),(16,'Java5'),(17,'Place5');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_questions`
--

DROP TABLE IF EXISTS `quiz_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_questions` (
  `quiz_id` int NOT NULL,
  `questions_id` bigint DEFAULT NULL,
  KEY `FKcgp9e1c6ww3t383aui4w8feae` (`quiz_id`),
  KEY `FKpmfvwer12y1nrjc0efm04dq16` (`questions_id`),
  CONSTRAINT `FKcgp9e1c6ww3t383aui4w8feae` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_questions`
--

LOCK TABLES `quiz_questions` WRITE;
/*!40000 ALTER TABLE `quiz_questions` DISABLE KEYS */;
INSERT INTO `quiz_questions` VALUES (1,25),(1,19),(1,2),(1,5),(1,7),(2,17),(2,1),(2,23),(2,5),(2,25),(3,17),(3,2),(3,10),(3,19),(3,1),(4,19),(4,25),(4,1),(4,2),(4,10),(5,12),(5,17),(5,28),(5,25),(5,23),(6,23),(6,15),(6,21),(6,7),(6,1),(7,18),(7,26),(7,20),(7,6),(7,11),(9,10),(9,19),(9,17),(9,8),(9,23),(10,29),(11,29),(12,29),(13,15),(13,21),(13,1),(13,12),(13,19),(14,29),(15,2),(15,12),(15,15),(15,17),(15,21),(16,1),(16,19),(16,23),(16,5),(16,17),(17,29);
/*!40000 ALTER TABLE `quiz_questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-15 10:27:05
