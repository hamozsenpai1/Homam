-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2023 at 12:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `senior`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(40) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `category` varchar(40) NOT NULL,
  `sub_category` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `category`, `sub_category`) VALUES
(1, 'Machine learning -the new ai', 'AI', 'ml'),
(2, 'Machine learning for beginners', 'AI', 'ml'),
(3, 'A First Course in Artificial Intelligence ', 'AI', 'AI'),
(4, 'Artificial Intelligence: learning automation Skills with python', 'AI', 'AI'),
(5, 'Neural Networks and Deep Learning ', 'AI', 'nn'),
(6, 'Neural Networks and Deep Learning: A Textbook', 'AI', 'nn'),
(7, 'Knowledge-Based Systems ', 'AI', 'kbs'),
(8, 'Knowledge-based Expert Systems in chemistry: Artificial Intelligence in Decision Making', 'AI', 'kbs'),
(9, 'Design patterns: Elements of Reusable Object-Oriented Software', 'software', 'designpattren'),
(10, 'Head First Design patterns', 'software', 'designpattren'),
(11, 'Clean Architecture: A Craftsman\'s Guide to Software Structure and Design', 'software', 'designs'),
(12, 'Code Complete', 'software', 'designs'),
(13, 'The Art of Software Testing', 'software', 'Testing'),
(14, 'Lessons Learned in Software Testing', 'software', 'Testing'),
(15, 'Software Quality Assurance', 'software', 'Quality Assurance'),
(16, 'The Future of Software Quality Assurance', 'software', 'Quality Assurance'),
(17, 'Networking All in one for Dummies', 'network', 'network'),
(18, 'Network warrior', 'network', 'network'),
(19, 'Ghost in The Wires: My Adventures as the world most Wanted', 'network', 'ss'),
(20, 'CompTIA Security', 'network', 'ss'),
(21, 'Network Management', 'network', 'nm'),
(22, 'Network Management Know it All', 'network', 'nm'),
(23, 'The Internet and its Protocoks', 'network', 'protocols'),
(24, 'Internet Protocols - Goswami-Hard Cover', 'network', 'protoclos');

-- --------------------------------------------------------

--
-- Table structure for table `exams_questions`
--

CREATE TABLE `exams_questions` (
  `Exams_id` int(40) NOT NULL,
  `user_specialty` varchar(40) NOT NULL,
  `user_id` int(40) NOT NULL,
  `question_id` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(40) NOT NULL,
  `question_name` varchar(300) NOT NULL,
  `answer1` varchar(300) NOT NULL,
  `answer2` varchar(300) NOT NULL,
  `answer3` varchar(300) NOT NULL,
  `answer4` varchar(300) NOT NULL,
  `description` varchar(800) NOT NULL,
  `category` varchar(40) NOT NULL,
  `sub_category` varchar(40) NOT NULL,
  `answer_index` int(10) NOT NULL,
  `Level` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `question_name`, `answer1`, `answer2`, `answer3`, `answer4`, `description`, `category`, `sub_category`, `answer_index`, `Level`) VALUES
(1, 'Software is defined as ___________', ' set of programs, documentation & configuration of data', 'set of programs', 'documentation and configuration of data', ' None of the mentioned', 'Explanation: Software is a collection of programmes; it also includes documentation and data setup to enable the programmes to function. Microsoft windows, excel, word, powerpoint, etc. are a few examples of software.', 'software', 'general_swe', 1, 1),
(2, ' What is Software Engineering?', 'Designing a software', ' Testing a software', ' Application of engineering principles to the design a software', 'None of the above', 'Explanation: Software engineering is the application of engineering principles to the design, development, and support of software and it helps to solve the challenges of low-quality software projects.', 'software', 'general_swe', 3, 1),
(3, ' Who is the father of Software Engineering?', 'Margaret Hamilton', 'Watts S. Humphrey', 'Alan Turing', 'Boris Beizer', 'Explanation: Watts S. Humphrey created the Software Process Program at Carnegie Mellon University’s Institute (SEI) in the 1980s, and served as its director from 1986 through the early 1990s. This program was designed to help participants understand and manage the software developement process.', 'software', 'general_swe', 2, 1),
(4, 'What are the features of Software Code?', ' Simplicity', 'Accessibility', 'Modularity', 'All of the above', 'Explanation: Software code should be written in a clear, succinct, and easy-to-understand way. Simplicity should be preserved in the program code’s organization, implementation, and design. These codes should be constructed in such a way that software components (such as files and functions) are readily available. The software may be broken down into numerous parts to make it easier to comprehend and troubleshoot.', 'software', 'general_swe', 3, 1),
(5, ' ____________ is a software development activity that is not a part of software processes.', 'Validation', 'Specification', 'Development', ' Dependence', 'Explanation: A software dependency is an external independent library that can range in size from a single file to numerous files and directories arranged into packages to accomplish a specified purpose and is an attribute and not an engineering activity for process.', 'software', 'general_swe', 4, 1),
(6, 'Define Agile scrum methodology.', ' project management that emphasizes incremental progress', ' project management that emphasizes decremental progress', 'project management that emphasizes neutral progress', 'project management that emphasizes no progress', 'Explanation: Agile scrum methodology is a style of project management that emphasizes incremental progress. Each iteration is divided into two to four-week sprints, with the goal of completing the most important features first and delivering a possibly deliverable product at the end of each sprint.', 'software', 'general_swe', 1, 1),
(7, 'CASE stands for', 'Computer-Aided Software Engineering', 'Control Aided Science and Engineering', 'Cost Aided System Experiments', 'None of the mentioned', 'Explanation: The CASE tool’s purpose is to make the work of software development and maintenance easier and more reliable.', 'software', 'general_swe', 1, 1),
(8, ' ________ is defined as the process of generating analysis and designing documents?', 'Re-engineering', ' Reverse engineering', 'Software re-engineering', 'Science and engineering', 'Explanation: The method of reverse engineering is used to uncover difficult, unknown, and hidden information about a software system.', 'software', 'general_swe', 2, 1),
(9, ' The activity that distributes estimated effort across the planned project duration by allocating the effort to specific software developing tasks is ____________', 'Project scheduling', 'Detailed schedule', 'Macroscopic schedule', ' None of the mentioned', 'Explanation: Software project scheduling is the process of allocating anticipated effort to specific software developing activities and distributing it across the project’s intended length. A macroscopic schedule is created in the early phases of project planning.', 'software', 'general_swe', 1, 1),
(10, 'What is a Functional Requirement?', 'specifies the tasks the program must complete', ' specifies the tasks the program should not complete', 'specifies the tasks the program must not work', 'All of the mentioned', 'Explanation: A functional requirement is a specification that describes a system or one of its components. It specifies the tasks the program must complete. A function is made up of three parts: inputs, behavior, and outputs.', 'software', 'general_swe', 1, 1),
(11, ' Why do bugs and failures occur in software?', ' Because of Developers', 'Because of companies', 'Because of both companies and Developers', 'None of the mentioned', 'Explanation: Software businesses are in charge of establishing policies and creating a working environment for software development, therefore they are a component of the software development process. Bugs from developers are nothing new.', 'software', 'general_swe', 3, 1),
(12, 'Attributes of good software is ____________', 'Development', 'Maintainability & functionality', ' Functionality', 'Maintainability', 'Explanation: Good software should provide the functionality and maintainability that are necessary. Software development is a must, not an option. Along with this software also additional attributes like usability, efficiency, reliability, accuracy, robustness, integrity, etc.', 'software', 'general_swe', 2, 1),
(13, 'The Cleanroom philosophy was proposed by _________', 'Linger', 'Mills', 'Dyer', 'All of the Mentioned', 'Explanation: Mills, Dyer, and Linger initially suggested the Cleanroom concept in the 1980s. The main goal of the philosophy of cleanroom philosophy is to develop software with zero defects.', 'software', 'general_swe', 4, 1),
(14, ' What does SDLC stands for?', 'System Design Life Cycle', 'Software Design Life Cycle', 'Software Development Life Cycle', 'System Development Life cycle', 'Explanation: The Software Development Life Cycle (SDLC) is a method for designing, developing, and testing high-quality software. The software developed to meet or exceed customer expectations must have an SDLC designed to complete the software on time and on budget.', 'software', 'general_swe', 3, 1),
(15, 'Who proposed the spiral model?', 'Barry Boehm', 'Pressman', 'Royce', 'IBM', 'Explanation: The spiral model by Boehm, is a software process model that combines prototyping’s iterative characteristic with the linear sequential model’s regulated and systematic elements. It implements the capability of quick production of new software versions.', 'software', 'general_swe', 1, 1),
(16, ' ______________ is not among the eight principles followed by the Software Code of Ethics and Professional Practice.', 'PRODUCT', 'ENVIRONMENT', 'PUBLIC', 'PROFESSION', 'Explanation: The rest are software ethical provisions; the environment does not focus on individual clauses or their importance in relation to the topic. The eight principles that should be followed by the Software code is:\n1. PUBLIC\n2. CLIENT AND EMPLOYER\n3. PRODUCT\n4. JUDGMENT\n5. MANAGEMENT\n6. PROFESSION\n7. COLLEAGUES\n8. SELF', 'software', 'general_swe', 2, 1),
(17, 'Which of the following are CASE tools?', 'Central Repository', 'Integrated Case Tools', 'Upper Case Tools', ' All of the mentioned', 'Explanation: CASE tools can be divided into Central Repository, Integrated Case Tools, Upper Case Tools, and Lower Case Tools based on their use at a particular SDLC stage.', 'software', 'general_swe', 4, 1),
(18, '__________________ suits the Manifesto for Agile Software Development.', 'Customer collaboration', 'Individuals and interactions', 'Working software', 'All of the mentioned', 'Explanation: None.', 'software', 'general_swe', 4, 1),
(19, 'Software patch is defined as ______________', 'Daily or routine Fix', 'Required or Critical Fix', ' Emergency Fix', 'None of the mentioned', 'Explanation: When a vulnerability is discovered, a software patch is applied to the outdated version as an emergency repair. To repair a vulnerability or flaw discovered after an application or software has been released is referred to as software patching.', 'software', 'general_swe', 3, 1),
(20, ' __________ software development team has no permanent leader.', ' Controlled Centralized (CC)', 'Controlled decentralized (CD)', 'Democratic decentralized (DD)', 'None of the mentioned', 'Explanation: Team members Communicate among themselves horizontally. There is no permanent leader in the team and a team of software engineers coordinates among themselves temporarily to perform the task.', 'software', 'general_swe', 3, 1),
(21, '_________ is not a fundamental activity for software processes in software development.', 'Evolution', ' Design and implementation', 'Validation', 'Verification', 'Explanation: Implementation and testing activities account for software verification. Software Verification is a process that ensures that the software developed is accurate and meets the user’s expectations.', 'software', 'general_swe', 4, 1),
(22, 'What is the full form of “AI”?', 'Artificially Intelligent', 'Artificial Intelligence', 'Artificially Intelligence', 'Advanced Intelligence', 'Explanation: AI is abbreviated as Artificial Intelligence. It is used to create systems or build machines to think and work like humans.', 'AI', 'AI', 2, 1),
(23, 'What is Artificial Intelligence?', 'Artificial Intelligence is a field that aims to make humans more intelligent', 'Artificial Intelligence is a field that aims to improve the security', 'Artificial Intelligence is a field that aims to develop intelligent machines', 'Artificial Intelligence is a field that aims to mine the data', 'Explanation: Artificial Intelligence is the development of intelligent systems that work and react in the same way that humans do. Intelligence is a process or a component of the ability to achieve goals in the world. People, animals, and a few machines all have different types and degrees of intelligence', 'AI', 'AI', 3, 1),
(24, 'Who is the inventor of Artificial Intelligence?', 'Geoffrey Hinton', 'Andrew Ng', 'John McCarthy', 'Jürgen Schmidhuber', 'Explanation: John McCarthy was a pioneer in Artificial Intelligence research, helping to name the field and spending decades teaching computers to grasp concepts that are intuitive to humans.', 'AI', 'AI', 3, 1),
(25, 'Which of the following is the branch of Artificial Intelligence?', ' Machine Learning', 'Cyber forensics', 'Full-Stack Developer', 'Network Design', 'Explanation: Machine learning is one of the important sub-areas of Artificial Intelligence likewise Neural Networks, Computer Vision, Robotics, and NLP are also the sub-areas. In machine learning, we build or train ML models to do certain tasks.', 'AI', 'AI', 1, 1),
(26, 'What is the goal of Artificial Intelligence?', 'To solve artificial problems', 'To extract scientific causes', 'To explain various sorts of intelligence', 'To solve real-world problems', 'Explanation: Artificial Intelligence’s goal is to explain various sorts of intelligence.', 'AI', 'AI', 3, 1),
(27, 'Which of the following is an application of Artificial Intelligence?', ' It helps to exploit vulnerabilities to secure the firm', 'Language understanding and problem-solving (Text analytics and NLP)', 'Easy to create a website', 'It helps to deploy applications on the cloud', 'Explanation: Language understanding and problem-solving come under the NLP and Text Analysis area which involves text recognition and sentiment analysis of the text. NLP ML model is trained to mainly do the task which processes human language’s speech or text. For example voice assistant.', 'AI', 'AI', 2, 1),
(28, 'In how many categories process of Artificial Intelligence is categorized?', 'categorized into 5 categories', 'processes are categorized based on the input provided', 'categorized into 3 categories', 'process is not categorized', 'Explanation: It is categorized into 3 steps Sensing, Reasoning, Acting\ni) Sensing: Through the sensor taking in the data about the world\nii) Reasoning: Reasoning is thinking or processing the data sensed by the sensor.\niii) Action: On the basis of input and reasoning, acting is generating and controlling actions in the environment.', 'AI', 'AI', 3, 1),
(29, 'Based on which of the following parameter Artificial Intelligence is categorized?', 'Based on functionally only', 'Based on capabilities only', ' Based on capabilities and functionally', 'It is not categorized', 'Explanation: The two main categorizations of AI are based on the capability and functionality. Based on capability it is divided into Artificial Narrow Intelligence (ANI), Artificial General Intelligence (AGI), and Artificial Super Intelligence (ASI). Based on functionality it is divided into reactive machines, limited memory, theory of mind, and self-awareness.', 'AI', 'AI', 3, 1),
(30, 'Which of the following is a component of Artificial Intelligence?', 'Learning', 'Training', 'Designing', ' Puzzling', 'Explanation: Intelligence is intangible and is composed of mainly five techniques. Learning is the process of gaining knowledge by understanding, practicing, being taught, or experiencing one thing. Learning enhances the awareness of any topic, hence learning is one of the important components.', 'AI', 'AI', 1, 1),
(31, 'What is the function of an Artificial Intelligence “Agent”?', 'Mapping of goal sequence to an action', 'Work without the direct interference of the people', 'Mapping of precept sequence to an action', 'Mapping of environment sequence to an action', 'Explanation: A math function that converts a collection of perceptions into actions is known as the agent function. The function is implemented using agent software. An agent is responsible for the actions performed by the machine once it senses the environment.', 'AI', 'AI', 3, 1),
(32, 'Which of the following is not the commonly used programming language for Artificial Intelligence?', ' Perl', ' Java', 'PROLOG', '  LISP', 'Explanation: Perl is a scripting language. Whereas other programming languages are used to program AI machines.', 'AI', 'AI', 1, 1),
(33, 'What is the name of the Artificial Intelligence system developed by Daniel Bobrow?', 'program known as BACON', 'system known as STUDENT', 'program known as SHRDLU', 'system known as SIMD', 'Explanation: STUDENT is the name of the Artificial Intelligence system developed by Daniel Bobrow in 1964. Daniel Bobrow had used LISP programming language to write this AI program for his PhD thesis.', 'AI', 'AI', 2, 1),
(34, 'What is the function of the system Student?', ' program that can read algebra word problems only', 'system which can solve algebra word problems but not read', 'system which can read and solve algebra word problems', 'None of the mentioned', 'Explanation: The system STUDENT developed by Daniel Bobrow was written in LISP to read and solve algebra word problems of high school books. This is referred as the achievement in the field of Natural Language Processing.', 'AI', 'AI', 3, 1),
(35, 'Which of the following is not an application of artificial intelligence?', 'Face recognition system', ' Chatbots', 'LIDAR', 'DBMS', 'Explanation: Face recognition system, Chatbots, and LIDAR are the various applications of AI in various fields like security system, business, automobiles etc. DBMS is used to store and manipulate data.', 'AI', 'AI', 4, 1),
(36, 'Which of the following machine requires input from the humans but can interpret the outputs themselves?\r\na) Actuators', 'Actuators', 'Sensor', 'Agents', 'AI system', 'Explanation: Actuators are used in machines to convert energy from one form to another to perform a physical function. The sensor is a device that receives signals from the physical environment to detect the changes. Systems receive input from humans and interpret the outputs.', 'AI', 'AI', 4, 1),
(37, ' _________ number of informed search method are there in Artificial Intelligence', ' 4', '3', '2', '1', 'Explanation: There are four types of informed search methods. The four types of informed search method are best-first search, Greedy best-first search, A* search and memory bounded heuristic search.', 'AI', 'AI', 1, 1),
(38, 'Which of the following are the approaches to Artificial Intelligence?', 'Applied approach', 'Strong approach', ' Weak approach', 'All of the mentioned', 'Explanation: Strong AI is used to build machines that can truly reason and solve problems.\nWeak AI deals with building computer-based Artificial Intelligence that can act as if it were intelligent but cannot truly reason and solve problems. Applied approach creates commercially viable “smart” systems.\nIn the Cognitive approach, a computer is used to test theories about how the human mind works.', 'AI', 'AI', 4, 1),
(39, 'Face Recognition system is based on which type of approach?', 'Weak AI approach', 'Applied AI approach', 'Cognitive AI approach', ' Strong AI approach', 'Explanation: Applied approach aims to produce commercially viable “smart” systems such as, for example, a security system that recognizes the faces of people to provide access. The applied approach has already enjoyed considerable success.', 'AI', 'AI', 2, 1),
(48, 'The IETF standards documents are called ________', 'RFC', 'RCF', 'ID', 'DFC', 'Explanation: RFC stands for Request For Comments and they are documents that describe methods, behaviors, research, or innovations applicable to the working of the Internet.', 'network', 'network', 1, 1),
(49, 'In the layer hierarchy as the data packet moves from the upper to the lower layers, headers are ___________', 'Added', 'Removed', 'Rearranged', 'Modified', 'Explanation: Each layer adds its own header to the packet from the previous layer. For example, in the Internet layer, the IP header is added over the TCP header on the data packet that came from the transport layer.', 'network', 'network', 1, 1),
(50, 'The structure or format of data is called ___________', 'Syntax', 'Semantics', 'Struct', 'Formatting', 'Explanation: The structure and format of data are defined using syntax. Semantics defines how a particular pattern to be interpreted, and what action is to be taken based on that interpretation. In programming languages, syntax of the instructions plays a vital role in designing of the program.\r\n', 'network', 'network', 1, 1),
(51, 'Communication between a computer and a keyboard involves ______________ transmission.', 'Automatic', ' Half-duplex', 'Full-duplex', 'Simplex', 'Explanation: In simplex transmission, data flows in single direction which in this case refers to the data flowing from the keyboard to the computer. Another example would be of the mouse where the data flows from the mouse to the computer only', 'network', 'network', 4, 1),
(52, 'The first Network was called ________', 'CNNET', ' NSFNET', 'ASAPNET', 'ARPANET', 'Explanation: ARPANET stands for Advanced Research Projects Agency Networks. It was the first network to be implemented which used the TCP/IP protocol in the year 1969.\r\n', 'network', 'network', 4, 1),
(53, 'A _______ is the physical path over which a message travels.', 'Path', 'Medium', 'Protocol', 'Route', 'Explanation: Messages travel from sender to receiver via a physical path called the medium using a set of methods/rules called protocol. Mediums can be guided (wired) or unguided (wireless).', 'network', 'network', 2, 1),
(54, 'Which organization has authority over interstate and international commerce in the communications field?', ' ITU-T', 'IEEE', 'FCC', 'ISOC', 'Explanation: FCC is the abbreviation for Federal Communications Commission. FCC is responsible for regulating all interstate communications originating or terminating in USA. It was founded in the year 1934.', 'network', 'network', 3, 1),
(55, 'Which of this is not a network edge device?', 'PC', 'Smartphones', 'Servers', 'Switch', 'Explanation: Network edge devices refer to host systems, which can host applications like web browser. A switch can’t operate as a host, but as a central device which can be used to manage network communication.', 'network', 'network', 4, 1),
(56, 'A _________ set of rules that governs data communication.', ' Protocols', 'Standards', 'RFCs', 'Servers', 'Explanation: In communications, a protocol refers to a set of rules and regulations that allow a network of nodes to transmit and receive information. Each layer in the network model has a protocol set, for example, the transport layer has TCP and UDP protocols.', 'network', 'network', 1, 1),
(57, 'Three or more devices share a link in ________ connection.', 'Unipoint', ' Multipoint', 'Point to point', ' Simplex', 'Explanation: A multipoint communication is established when three or many network nodes are connected to each other. Frame relay, Ethernet and ATM are some examples of multipoint connections.', 'network', 'network', 2, 1),
(58, 'When collection of various computers seems a single coherent system to its client, then it is called _________', 'computer network', 'distributed system', 'networking system', 'mail system', 'Explanation: A Computer network is defined as a collection of interconnected computers which uses a single technology for connection.\r\nA distributed system is also the same as computer network but the main difference is that the whole collection of computers appears to its users as a single coherent system.\r\nExample:- World wide web', 'network', 'network', 2, 1),
(59, 'Two devices are in network if __________', 'a process in one device is able to exchange information with a process in another device', 'a process is running on both devices', 'PIDs of the processes running of different devices are same', ' a process is active and another is inactive', 'Explanation: A computer network, or data network, is a digital telecommunications network which allows nodes to share resources. In computer networks, computing devices exchange data with each other using connections between nodes. The nodes have certain processes which enable them to share a specific type of data using a distinct protocol', 'network', 'network', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `recomendation`
--

CREATE TABLE `recomendation` (
  `ID` int(11) NOT NULL,
  `user_id` int(40) NOT NULL,
  `course_id` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recomendation`
--

INSERT INTO `recomendation` (`ID`, `user_id`, `course_id`) VALUES
(42, 1, 14),
(43, 1, 8),
(44, 1, 19);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_name` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `specialty` varchar(40) NOT NULL,
  `phonenumber` int(40) NOT NULL,
  `user_id` int(40) NOT NULL,
  `role` varchar(40) NOT NULL,
  `ai_score` int(200) DEFAULT NULL,
  `swe_score` int(200) DEFAULT NULL,
  `networks_score` int(200) DEFAULT NULL,
  `Level` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `password`, `Email`, `name`, `specialty`, `phonenumber`, `user_id`, `role`, `ai_score`, `swe_score`, `networks_score`, `Level`) VALUES
('homamkt', '1234', 'homam@teze', 'homam', 'master', 2147483647, 1, '', 0, 2, 0, 1),
('hamzeh', '12345', 'hamzeh@gmail.com', 'hamooz', 'master', 933324323, 2, '', 0, 11, 0, 1),
('hamooz', '123456', 'hamzeh@tezetezecom', '123456', 'hamooz', 123456, 3, '', 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `exams_questions`
--
ALTER TABLE `exams_questions`
  ADD PRIMARY KEY (`Exams_id`,`user_id`,`question_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `recomendation`
--
ALTER TABLE `recomendation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `recomendation`
--
ALTER TABLE `recomendation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
