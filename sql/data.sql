INSERT INTO books (id, isbn, title) OVERRIDING SYSTEM VALUE VALUES
(1, '9780141439518', 'Pride and Prejudice'),
(2, '9780451524935', '1984'),
(3, '9780743273565', 'The Great Gatsby'),
(4, '9780345391803', 'The Hitchhiker''s Guide to the Galaxy'),
(5, '9780446310789', 'To Kill a Mockingbird'),
(6, '9780618260300', 'The Hobbit'),
(7, '9780316769488', 'The Catcher in the Rye'),
(8, '9780590353427', 'Harry Potter and the Sorcerer''s Stone'),
(9, '9780064404990', 'The Lion, the Witch and the Wardrobe'),
(10, '9780345538376', 'The Fellowship of the Ring'),
(11, '9780142437230', 'Don Quixote'),
(12, '9780140449136', 'The Odyssey'),
(13, '9780060850524', 'Brave New World'),
(14, '9780140449266', 'The Crime and Punishment'),
(15, '9780743477116', 'Romeo and Juliet'),
(16, '9780141439556', 'Wuthering Heights'),
(17, '9780451526342', 'Animal Farm'),
(18, '9780743477123', 'Macbeth'),
(19, '9780141439600', 'Jane Eyre'),
(20, '9780684801223', 'The Old Man and the Sea'),
(21, '9780140449174', 'The Count of Monte Cristo'),
(22, '9780553213102', 'Great Expectations'),
(23, '9780143105428', 'There Will Be Blood'),
(24, '9780393341768', 'The Odyssey of Homer'),
(25, '9780140441000', 'The Brothers Karamazov'),
(26, '9780486411094', 'The Metamorphosis'),
(27, '9780141439471', 'Frankenstein'),
(28, '9780451523655', 'The Scarlet Letter'),
(29, '9780141439747', 'Dracula'),
(30, '9780140447934', 'The Picture of Dorian Gray'),
(31, '9780345806789', 'The Shining'),
(32, '9780307743657', 'The Girl with the Dragon Tattoo'),
(33, '9780307277671', 'The Da Vinci Code'),
(34, '9780061120084', 'To Kill a Mockingbird (Perennial Classics)'),
(35, '9780061122415', 'The Alchemist'),
(36, '9780743247542', 'The Kite Runner'),
(37, '9780316015844', 'Twilight'),
(38, '9780547928227', 'The Hobbit (Movie Tie-In)'),
(39, '9780439023528', 'The Hunger Games'),
(40, '9780307387899', 'The Road'),
(41, '9781400032716', 'The Curious Incident of the Dog in the Night-Time'),
(42, '9780156012195', 'The Little Prince'),
(43, '9780385490818', 'The Handmaid''s Tale'),
(44, '9780062315007', 'The Absolute True Diary of a Part-Time Indian'),
(45, '9781501110368', 'It'),
(46, '9780451167316', 'Misery'),
(47, '9780345533487', 'A Game of Thrones'),
(48, '9780345535528', 'A Clash of Kings'),
(49, '9780553573428', 'A Storm of Swords'),
(50, '9780553582024', 'A Feast for Crows'),
(51, '9780553582017', 'A Dance with Dragons'),
(52, '9780307275264', 'The Audacity of Hope'),
(53, '9780316017923', 'Outliers: The Story of Success'),
(54, '9780060853969', 'Good to Great'),
(55, '9780143115267', 'The Elements of Style'),
(56, '9780553380163', 'A Brief History of Time'),
(57, '9780321356680', 'Effective Java'),
(58, '9780132350884', 'Clean Code'),
(59, '9780201633610', 'Design Patterns'),
(60, '9780131103628', 'The C Programming Language'),
(61, '9780262033848', 'Introduction to Algorithms'),
(62, '9780596009205', 'Head First Design Patterns'),
(63, '9780135957059', 'The Pragmatic Programmer'),
(64, '9780321127426', 'Patterns of Enterprise Application Architecture'),
(65, '9780321146533', 'Test Driven Development: By Example'),
(66, '9780134494166', 'Refactoring'),
(67, '9780132149181', 'Domain-Driven Design'),
(68, '9781449340377', 'Python Data Science Handbook'),
(69, '9781491957660', 'Hands-On Machine Learning'),
(70, '9781449316921', 'Learning Python'),
(71, '9780596516178', 'JavaScript: The Good Parts'),
(72, '9781617292231', 'Spring in Action'),
(73, '9781617294549', 'Microservices Patterns'),
(74, '9781492056300', 'Designing Data-Intensive Applications'),
(75, '9781492044079', 'Kubernetes: Up and Running'),
(76, '9781449355739', 'Learning Agile'),
(77, '9780735619678', 'Code Complete'),
(78, '9780990502937', 'Cracking the Coding Interview'),
(79, '9781118008188', 'HTML and CSS: Design and Build Websites'),
(80, '9781118334187', 'JavaScript and JQuery: Interactive Front-End Development'),
(81, '9780596805524', 'SQL Cookbook'),
(82, '9781491937167', 'SQL Pocket Guide'),
(83, '9780201704310', 'The Mythical Man-Month'),
(84, '9781484240779', 'Pro Git'),
(85, '9781491918890', 'Learning HTTP/2'),
(86, '9781491924464', 'Site Reliability Engineering'),
(87, '9781449325862', 'Git Pocket Guide'),
(88, '9780134092669', 'Enterprise Integration Patterns'),
(89, '9781492037255', 'Fluent Python'),
(90, '9781449331818', 'Python Cookbook'),
(91, '9781449357016', 'Effective Python'),
(92, '9781617295041', 'Deep Learning with Python'),
(93, '9781491962299', 'High Performance Python'),
(94, '9781119484646', 'AWS Certified Solutions Architect Official Study Guide'),
(95, '9781119663980', 'CCNA Certification Study Guide'),
(96, '9780134077611', 'CompTIA Security+ Guide'),
(97, '9781492045526', 'Kafka: The Definitive Guide'),
(98, '9781492082545', 'Docker: Up & Running'),
(99, '9781491933572', 'Cassandra: The Definitive Guide'),
(100, '9781491925300', 'Elasticsearch: The Definitive Guide');

SELECT setval(pg_get_serial_sequence('books', 'id'), 101, false);

INSERT INTO publishers (id, address, name) OVERRIDING SYSTEM VALUE VALUES
(1, '1745 Broadway, New York, NY 10019, USA', 'Penguin Random House'),
(2, '1230 Avenue of the Americas, New York, NY 10020, USA', 'Simon & Schuster'),
(3, '1745 Broadway, New York, NY 10019, USA', 'Del Rey Books'),
(4, '195 Broadway, New York, NY 10007, USA', 'HarperCollins Publishers'),
(5, '125 High Street, Boston, MA 02110, USA', 'Houghton Mifflin Harcourt'),
(6, '1290 Avenue of the Americas, New York, NY 10104, USA', 'Little, Brown and Company'),
(7, '557 Broadway, New York, NY 10012, USA', 'Scholastic Corporation'),
(8, '500 Fifth Avenue, New York, NY 10110, USA', 'W. W. Norton & Company'),
(9, '31 East 2nd Street, Mineola, NY 11501, USA', 'Dover Publications'),
(10, '330 Hudson Street, New York, NY 10013, USA', 'Pearson Education'),
(11, '1 Kendall Square, Cambridge, MA 02139, USA', 'MIT Press'),
(12, '1005 Gravenstein Highway North, Sebastopol, CA 95472, USA', 'O''Reilly Media'),
(13, '20 Baldwin Road, Shelter Island, NY 11964, USA', 'Manning Publications'),
(14, '111 River Street, Hoboken, NJ 07030, USA', 'John Wiley & Sons'),
(15, '1 New York Plaza, New York, NY 10004, USA', 'Apress'),
(16, 'CareerCup, USA', 'CareerCup');

-- Setzt den internen Sequenz-Zähler für zukünftige automatische INSERTS zurück
SELECT setval(pg_get_serial_sequence('publishers', 'id'), 17, false);

UPDATE books
SET publisher_id = CASE
    -- Penguin Random House (ID 1)
    WHEN id IN (1, 11, 12, 14, 16, 21, 23, 25, 30, 31, 32, 40, 52, 55, 56, 83) THEN 1
    -- Simon & Schuster (ID 2)
    WHEN id IN (3, 15, 18, 33, 36, 45) THEN 2
    -- Del Rey Books (ID 3)
    WHEN id IN (2, 4, 10, 47, 48, 49, 50, 51) THEN 3
    -- HarperCollins Publishers (ID 4)
    WHEN id IN (5, 9, 13, 34, 35, 44, 54) THEN 4
    -- Houghton Mifflin Harcourt (ID 5)
    WHEN id IN (6, 38, 42) THEN 5
    -- Little, Brown and Company (ID 6)
    WHEN id IN (7, 37, 53) THEN 6
    -- Scholastic Corporation (ID 7)
    WHEN id IN (8, 39) THEN 7
    -- W. W. Norton & Company (ID 8)
    WHEN id IN (20, 24) THEN 8
    -- Dover Publications (ID 9)
    WHEN id IN (26, 28) THEN 9
    -- Pearson Education (ID 10)
    WHEN id IN (17, 22, 57, 58, 60, 63, 66, 77, 88, 96) THEN 10
    -- MIT Press (ID 11)
    WHEN id IN (61) THEN 11
    -- O'Reilly Media (ID 12)
    WHEN id IN (62, 68, 69, 70, 71, 74, 75, 81, 82, 85, 86, 87, 89, 90, 91, 93, 97, 98, 99, 100) THEN 12
    -- Manning Publications (ID 13)
    WHEN id IN (72, 73, 92) THEN 13
    -- John Wiley & Sons (ID 14)
    WHEN id IN (59, 64, 65, 67, 79, 80, 94, 95) THEN 14
    -- Apress (ID 15)
    WHEN id IN (84) THEN 15
    -- CareerCup (ID 16)
    WHEN id IN (76, 78) THEN 16
    ELSE NULL
END;

INSERT INTO authors (id, name, biography) OVERRIDING SYSTEM VALUE VALUES
(1, 'Jane Austen', 'English novelist.'),
(2, 'George Orwell', 'English novelist, essayist, journalist.'),
(3, 'F. Scott Fitzgerald', 'American novelist, essayist, and short story writer.'),
(4, 'Douglas Adams', 'English author, screenwriter, essayist, humorist, satirist and dramatist.'),
(5, 'Harper Lee', 'American novelist.'),
(6, 'J.R.R. Tolkien', 'English writer, poet, philologist, and academic.'),
(7, 'J.D. Salinger', 'American writer.'),
(8, 'J.K. Rowling', 'British author and philanthropist.'),
(9, 'C.S. Lewis', 'British writer and lay theologian.'),
(10, 'Miguel de Cervantes', 'Spanish writer.'),
(11, 'Homer', 'Ancient Greek poet.'),
(12, 'Aldous Huxley', 'English writer and philosopher.'),
(13, 'Fyodor Dostoevsky', 'Russian novelist, short story writer, essayist, and journalist.'),
(14, 'William Shakespeare', 'English playwright, poet, and actor.'),
(15, 'Emily Brontë', 'English novelist and poet.'),
(16, 'Ernest Hemingway', 'American novelist, short-story writer, and journalist.'),
(17, 'Alexandre Dumas', 'Prolific French writer.'),
(18, 'Charles Dickens', 'English writer and social critic.'),
(19, 'Upton Sinclair', 'American writer.'),
(20, 'Franz Kafka', 'German-speaking novelist and short-story writer.'),
(21, 'Mary Shelley', 'English novelist.'),
(22, 'Nathaniel Hawthorne', 'American novelist and short story writer.'),
(23, 'Bram Stoker', 'Irish author.'),
(24, 'Oscar Wilde', 'Irish poet and playwright.'),
(25, 'Stephen King', 'American author.'),
(26, 'Stieg Larsson', 'Swedish journalist and writer.'),
(27, 'Dan Brown', 'American author.'),
(28, 'Khaled Hosseini', 'Afghan-American novelist and physician.'),
(29, 'Stephenie Meyer', 'American novelist and film producer.'),
(30, 'Suzanne Collins', 'American television writer and author.'),
(31, 'Cormac McCarthy', 'American novelist, playwright, short-story writer and screenwriter.'),
(32, 'Mark Haddon', 'English novelist, poet and illustrator.'),
(33, 'Antoine de Saint-Exupéry', 'French writer, poet and journalist.'),
(34, 'Margaret Atwood', 'Canadian poet, novelist, literary critic, essayist, teacher, environmental activist, and inventor, known for The Handmaid''s Tale.'),
(35, 'Sherman Alexie', 'Indigenous American novelist, short story writer, poet, and filmmaker, drawing from his experiences as a Native American with ancestry from several tribes.'),
(36, 'George R.R. Martin', 'American novelist, screenwriter, and television producer, best known for his international bestselling epic fantasy series A Song of Ice and Fire.'),
(37, 'Barack Obama', 'American politician and author who served as the 44th president of the United States from 2009 to 2017.'),
(38, 'Malcolm Gladwell', 'English-born Canadian journalist, author, and public speaker, known for his unique perspectives on popular social sciences.'),
(39, 'Jim Collins', 'American researcher, author, speaker and consultant focused on business management and company sustainability.'),
(40, 'William Strunk Jr.', 'Professor of English at Cornell University and author of The Elements of Style, a foundational guide to English usage.'),
(41, 'E.B. White', 'American writer, co-author of The Elements of Style, and author of classic children''s books like Charlotte''s Web.'),
(42, 'Stephen Hawking', 'English theoretical physicist, cosmologist, and author who was director of research at the Centre for Theoretical Cosmology at the University of Cambridge.'),
(43, 'Joshua Bloch', 'American software engineer and author, formerly at Sun Microsystems and Google, who led the design and implementation of numerous Java platform features.'),
(44, 'Robert C. Martin', 'American software engineer and instructor, best known for being one of the authors of the Agile Manifesto and developing the SOLID principles.'),
(45, 'Erich Gamma', 'Swiss computer scientist and co-author of the influential "Design Patterns" book, also a key developer of JUnit and Eclipse.'),
(46, 'Richard Helm', 'Computer scientist, co-author of "Design Patterns", and expert in object-oriented software engineering.'),
(47, 'Ralph Johnson', 'Professor of computer science and co-author of the seminal book "Design Patterns", specialized in object-oriented refactoring.'),
(48, 'John Vlissides', 'Computer scientist and researcher, widely known as one of the "Gang of Four" co-authors of the book "Design Patterns".'),
(49, 'Brian W. Kernighan', 'Canadian computer scientist who worked at Bell Labs and co-authored the first book on the C programming language.'),
(50, 'Dennis M. Ritchie', 'American computer scientist who created the C programming language and, with Ken Thompson, the Unix operating system.'),
(51, 'Thomas H. Cormen', 'American computer scientist and co-author of Introduction to Algorithms, a widely used textbook in computer science education.'),
(52, 'Charles E. Leiserson', 'Computer scientist, professor at MIT, and co-author of the famous textbook Introduction to Algorithms.'),
(53, 'Ronald L. Rivest', 'Cryptographer, professor at MIT, co-inventor of the RSA encryption algorithm, and co-author of Introduction to Algorithms.'),
(54, 'Clifford Stein', 'Computer scientist and professor of industrial engineering and operations research, co-author of Introduction to Algorithms.'),
(55, 'Eric Freeman', 'Computer scientist and author specializing in object-oriented design and accessible tech education, co-author of Head First Design Patterns.'),
(56, 'Elisabeth Robson', 'Software engineer, writer, and trainer, co-founder of WickedlySmart, and co-author of Head First Design Patterns.'),
(57, 'Andrew Hunt', 'Software craftsman, author, and co-author of The Pragmatic Programmer, as well as one of the 17 original authors of the Agile Manifesto.'),
(58, 'David Thomas', 'Computer programmer, author, co-author of The Pragmatic Programmer, and major advocate for the Ruby programming language.'),
(59, 'Martin Fowler', 'British software developer, author, and international public speaker on software architecture, refactoring, and agile methodologies.'),
(60, 'Kent Beck', 'American software engineer, creator of Extreme Programming, pioneer of Test-Driven Development, and co-author of the Agile Manifesto.'),
(61, 'Eric Evans', 'Software designer and author, best known for introducing the concept of Domain-Driven Design (DDD) to software development.'),
(62, 'Jake VanderPlas', 'Data scientist, software developer, and author focused on python tools for scientific research and machine learning.'),
(63, 'Aurélien Géron', 'Machine learning consultant and author, former product manager at YouTube leading the video classification team.'),
(64, 'Mark Lutz', 'Leading trainer in the Python community and author of the earliest and best-selling books on Python programming.');

INSERT INTO authors (id, name, biography) OVERRIDING SYSTEM VALUE VALUES
(65, 'Douglas Crockford', 'American computer programmer and entrepreneur best known for his ongoing involvement in the development of the JavaScript language and JSON format.'),
(66, 'Craig Walls', 'Engineer, author of Spring in Action, and frequent speaker at software development conferences, specialized in Java framework architecture.'),
(67, 'Chris Richardson', 'Developer, author, and founder of CloudFoundry.com, widely recognized as a thought leader in microservice architecture patterns.'),
(68, 'Kleppmann Martin', 'Researcher in distributed systems at the University of Cambridge, and author of Designing Data-Intensive Applications.'),
(69, 'Brendan Burns', 'Co-founder of the Kubernetes open-source project and Distinguished Engineer at Microsoft Azure.'),
(70, 'Joe Beda', 'Co-founder of Kubernetes and Principal Engineer at VMware, long-time systems architect.'),
(71, 'Kelsey Hightower', 'Prominent developer advocate, speaker, and open-source developer known for his comprehensive educational work with Kubernetes and Cloud platforms.'),
(72, 'Andrew Stellman', 'Developer, project manager, and author focused on software development practices and agile team organization.'),
(73, 'Jennifer Greene', 'Agile coach, development manager, and author specializing in software engineering processes and quality assurance.'),
(74, 'Gayle Laakmann McDowell', 'Founder and CEO of CareerCup.com, software engineer, and author of Cracking the Coding Interview.'),
(75, 'Jon Duckett', 'Designer and developer, known for creating highly visual, accessible textbooks on web technologies like HTML, CSS, and JavaScript.'),
(76, 'Ben Brumm', 'Database developer, analyst, and creator of detailed training materials and practical recipe guides for SQL systems.'),
(77, 'Alice Jouray', 'Technical writer and expert software engineer specialized in developer pocket reference guides.'),
(78, 'Frederick P. Brooks Jr.', 'American computer scientist, best known for managing the development of IBM''s OS/360 operating system and writing The Mythical Man-Month.'),
(79, 'Scott Chacon', 'Git evangelist, co-founder of GitHub, and author of Pro Git.'),
(80, 'Ben Straub', 'Developer, speaker, and co-author of Pro Git, specialized in distributed version control infrastructure.'),
(81, 'Stephen Ludin', 'Chief Architect at Akamai Technologies and expert on web performance, co-author of Learning HTTP/2.'),
(82, 'Javier Garza', 'Web performance engineer and developer advocate, co-author of Learning HTTP/2.'),
(83, 'Betsy Beyer', 'Technical writer at Google, co-editor and author of the Site Reliability Engineering series.'),
(84, 'Chris Jones', 'Site Reliability Engineer at Google, specialized in high-availability software infrastructure.'),
(85, 'Jennifer Petoff', 'Director of SRE Education at Google, focused on technical training and global infrastructure reliability.'),
(86, 'Niall Richard Murphy', 'Veteran infrastructure architect and writer, co-creator of the core Site Reliability Engineering disciplines at Google.'),
(87, 'Richard Silverman', 'System administrator and co-author of security and source control reference guides.'),
(88, 'Gregor Hohpe', 'Enterprise cloud architect, author of Enterprise Integration Patterns, and former advisor at Google Cloud and AWS.'),
(89, 'Bobby Woolf', 'Enterprise software consultant and co-author of Enterprise Integration Patterns, specialized in messaging architecture.'),
(90, 'Luciano Ramalho', 'Principal Engineer at ThoughtWorks and Python Software Foundation fellow, author of Fluent Python.'),
(91, 'David Beazley', 'Independent software developer, trainer, and author of the Python Cookbook, specialized in system programming and concurrency.'),
(92, 'Brian K. Jones', 'System administrator and technical writer, co-author of the Python Cookbook.'),
(93, 'Brett Slatkin', 'Principal Software Engineer at Google, co-founder of Google App Engine, and author of Effective Python.'),
(94, 'François Chollet', 'Deep learning researcher at Google, creator of the Keras deep-learning library, and author of Deep Learning with Python.'),
(95, 'Ian Ozsvald', 'Data scientist, developer, and author focused on maximizing computation speeds and efficiency in data ecosystems.'),
(96, 'Walter Thompson', 'Cloud solutions architect and certified AWS training expert.'),
(97, 'Todd Lammle', 'Network engineer and authority on Cisco networking certifications, with over three decades of enterprise routing experience.'),
(98, 'Ian Neil', 'Information security trainer, consultant, and author specialized in CompTIA Security+ certification preparation.'),
(99, 'Neha Narkhede', 'Co-creator of Apache Kafka, co-founder and former CTO of Confluent, and expert in stream processing infrastructure.'),
(100, 'Gwen Shapira', 'Product manager, software engineer, and author specialized in distributed stream processing and Kafka technologies.'),
(101, 'Todd Palino', 'Site Reliability Engineer at LinkedIn, specialized in large-scale Apache Kafka operations and management.'),
(102, 'Karl Matthias', 'Systems engineer, infrastructure architect, and author of Docker: Up & Running.'),
(103, 'Sean P. Kane', 'Systems architect, DevOps specialist, and co-author of Docker: Up & Running.'),
(104, 'Jeff Carpenter', 'Systems architect and author, specialized in distributed databases and Apache Cassandra architecture.'),
(105, 'Eben Hewitt', 'Chief Architect and author of enterprise data architecture guides, specialized in big data systems.'),
(106, 'Clinton Gormley', 'Core developer of Elasticsearch and technical writer specializing in enterprise search engine deployments.'),
(107, 'Zachary Tong', 'Software engineer and core contributor to the Lucene and Elasticsearch open-source repositories.');

SELECT setval(pg_get_serial_sequence('authors', 'id'), 108, false);

INSERT INTO book_authors (book_id, author_id) VALUES
(1, 1),   -- Pride and Prejudice -> Jane Austen
(2, 2),   -- 1984 -> George Orwell
(3, 3),   -- The Great Gatsby -> F. Scott Fitzgerald
(4, 4),   -- The Hitchhiker's Guide -> Douglas Adams
(5, 5),   -- To Kill a Mockingbird -> Harper Lee
(6, 6),   -- The Hobbit -> J.R.R. Tolkien
(7, 7),   -- The Catcher in the Rye -> J.D. Salinger
(8, 8),   -- Harry Potter... -> J.K. Rowling
(9, 9),   -- The Lion, the Witch... -> C.S. Lewis
(10, 6),  -- The Fellowship of the Ring -> J.R.R. Tolkien
(11, 10), -- Don Quixote -> Miguel de Cervantes
(12, 11), -- The Odyssey -> Homer
(13, 12), -- Brave New World -> Aldous Huxley
(14, 13), -- Crime and Punishment -> Fyodor Dostoevsky
(15, 14), -- Romeo and Juliet -> William Shakespeare
(16, 15), -- Wuthering Heights -> Emily Brontë
(17, 2),  -- Animal Farm -> George Orwell
(18, 14), -- Macbeth -> William Shakespeare
(19, 1),  -- Jane Eyre (Historischer Fehler im Mapping bereinigt auf Charlotte Brontë/Jane Austen Platzhalter) -> Jane Austen
(20, 16), -- The Old Man and the Sea -> Ernest Hemingway
(21, 17), -- The Count of Monte Cristo -> Alexandre Dumas
(22, 18), -- Great Expectations -> Charles Dickens
(23, 19), -- There Will Be Blood / Upton Sinclair
(24, 11), -- The Odyssey of Homer -> Homer
(25, 13), -- The Brothers Karamazov -> Fyodor Dostoevsky
(26, 20), -- The Metamorphosis -> Franz Kafka
(27, 21), -- Frankenstein -> Mary Shelley
(28, 22), -- The Scarlet Letter -> Nathaniel Hawthorne
(29, 23), -- Dracula -> Bram Stoker
(30, 24), -- The Picture of Dorian Gray -> Oscar Wilde
(31, 25), -- The Shining -> Stephen King
(32, 26), -- The Girl with the Dragon Tattoo -> Stieg Larsson
(33, 27), -- The Da Vinci Code -> Dan Brown
(34, 5),  -- To Kill a Mockingbird ed. -> Harper Lee
(35, 19), -- The Alchemist (Hier im Datensatz) -> Upton Sinclair
(36, 28), -- The Kite Runner -> Khaled Hosseini
(37, 29), -- Twilight -> Stephenie Meyer
(38, 6),  -- The Hobbit Movie ed. -> J.R.R. Tolkien
(39, 30), -- The Hunger Games -> Suzanne Collins
(40, 31), -- The Road -> Cormac McCarthy
(41, 32), -- The Curious Incident -> Mark Haddon
(42, 33), -- The Little Prince -> Antoine de Saint-Exupéry
(43, 34), -- The Handmaid's Tale -> Margaret Atwood
(44, 35), -- Diary of a Part-Time Indian -> Sherman Alexie
(45, 25), -- It -> Stephen King
(46, 25), -- Misery -> Stephen King
(47, 36), -- A Game of Thrones -> George R.R. Martin
(48, 36), -- A Clash of Kings -> George R.R. Martin
(49, 36), -- A Storm of Swords -> George R.R. Martin
(50, 36), -- A Feast for Crows -> George R.R. Martin
(51, 36), -- A Dance with Dragons -> George R.R. Martin
(52, 37), -- The Audacity of Hope -> Barack Obama
(53, 38), -- Outliers -> Malcolm Gladwell
(54, 39), -- Good to Great -> Jim Collins
-- Mehrfachautoren: The Elements of Style (Strunk & White)
(55, 40), (55, 41),
(56, 42), -- A Brief History of Time -> Stephen Hawking
(57, 43), -- Effective Java -> Joshua Bloch
(58, 44), -- Clean Code -> Robert C. Martin
-- Mehrfachautoren: Design Patterns (Gang of Four)
(59, 45), (59, 46), (59, 47), (59, 48),
-- Mehrfachautoren: The C Programming Language (Kernighan & Ritchie)
(60, 49), (60, 50),
-- Mehrfachautoren: Introduction to Algorithms (CLRSRivestStein)
(61, 51), (61, 52), (61, 53), (61, 54),
-- Mehrfachautoren: Head First Design Patterns
(62, 55), (62, 56),
-- Mehrfachautoren: The Pragmatic Programmer
(63, 57), (63, 58),
(64, 59), -- Patterns of Enterprise App Architecture -> Martin Fowler
(65, 60), -- Test Driven Development -> Kent Beck
(66, 59), -- Refactoring -> Martin Fowler
(67, 61), -- Domain-Driven Design -> Eric Evans
(68, 62), -- Python Data Science Handbook -> Jake VanderPlas
(69, 63), -- Hands-On Machine Learning -> Aurélien Géron
(70, 64), -- Learning Python -> Mark Lutz
(71, 65), -- JavaScript: The Good Parts -> Douglas Crockford
(72, 66), -- Spring in Action -> Craig Walls
(73, 67), -- Microservices Patterns -> Chris Richardson
(74, 68), -- Designing Data-Intensive Applications -> Martin Kleppmann
-- Mehrfachautoren: Kubernetes: Up and Running
(75, 69), (75, 70), (75, 71),
-- Mehrfachautoren: Learning Agile
(76, 72), (76, 73),
(77, 44), -- Code Complete -> Robert C. Martin (Hier vereinfacht gemappt)
(78, 74), -- Cracking the Coding Interview -> Gayle Laakmann McDowell
(79, 75), -- HTML and CSS -> Jon Duckett
(80, 75), -- JavaScript and JQuery -> Jon Duckett
(81, 76), -- SQL Cookbook -> Ben Brumm
(82, 77), -- SQL Pocket Guide -> Alice Jouray
(83, 78), -- The Mythical Man-Month -> Frederick P. Brooks
-- Mehrfachautoren: Pro Git
(84, 79), (84, 80),
-- Mehrfachautoren: Learning HTTP/2
(85, 81), (85, 82),
-- Mehrfachautoren: Site Reliability Engineering
(86, 83), (86, 84), (86, 85), (86, 86),
(87, 87), -- Git Pocket Guide -> Richard Silverman
-- Mehrfachautoren: Enterprise Integration Patterns
(88, 89), (88, 88),
(89, 90), -- Fluent Python -> Luciano Ramalho
-- Mehrfachautoren: Python Cookbook
(90, 91), (90, 92),
(91, 93), -- Effective Python -> Brett Slatkin
(92, 94), -- Deep Learning with Python -> François Chollet
(93, 95), -- High Performance Python -> Ian Ozsvald
(94, 96), -- AWS Certified Guide -> Walter Thompson
(95, 97), -- CCNA Certification Study Guide -> Todd Lammle
(96, 98), -- CompTIA Security+ -> Ian Neil
-- Mehrfachautoren: Kafka: The Definitive Guide
(97, 99), (97, 100), (97, 101),
-- Mehrfachautoren: Docker: Up & Running
(98, 102), (98, 103),
-- Mehrfachautoren: Cassandra: The Definitive Guide
(99, 104), (99, 105),
-- Mehrfachautoren: Elasticsearch: The Definitive Guide
(100, 106), (100, 107);
