 

CREATE TABLE  classes  (
   id  int(11) NOT NULL,
   section  int(55) NOT NULL,
   teacher  int(11) NOT NULL,
   subject  int(11) NOT NULL,
   time  varchar(44) NOT NULL
);

--
-- data for table  classes 
--

INSERT INTO  classes  ( id ,  section ,  teacher ,  subject ,  time ) VALUES
(1, 1, 1, 1,  8:15 ),
(2, 3, 2, 2,  01:30 );

-- --------------------------------------------------------
 
CREATE TABLE  students  (
   id  int(11) NOT NULL,
   fname  varchar(55) NOT NULL,
   lname  varchar(55) NOT NULL,
   age  int(11) DEFAULT NULL,
   class  int(11) NOT NULL
) ;
 

INSERT INTO  students  ( id ,  fname ,  lname ,  age ,  class ) VALUES
(1,  Suresh ,  Vishwakarma , 22, 1),
(2,  Vishal ,  Adakaney , 25, 2),
(4,  Ramesh ,  Sharma , 18, 1),
(5,  Anthony ,  Luis , 15, 2),
(6,  Ratin ,  Lobo , 20, 1),
(7,  Swen ,  Rite , 15, 2);

-- --------------------------------------------------------

--
-- Table structure for table  subjects 
--

CREATE TABLE  subjects  (
   id  int(11) NOT NULL,
   name  varchar(55) NOT NULL,
   shortcut  varchar(50) NOT NULL
) ;


-- data for table  subjects 


INSERT INTO  subjects  ( id ,  name ,  shortcut ) VALUES
(1,  Python ,  PH ),
(2,  Java ,  JAVA );

-- --------------------------------------------------------

--
-- Table structure for table  teachers 
--

CREATE TABLE  teachers  (
   id  int(11) NOT NULL,
   fname  varchar(55) NOT NULL,
   lname  varchar(55) NOT NULL,
   age  varchar(11) DEFAULT NULL
) ;

--
-- data for table  teachers 
--

INSERT INTO  teachers  ( id ,  fname ,  lname ,  age ) VALUES
(1,  Ramlal ,  Yadav ,  35 ),
(2,  Ramnath ,  Singh ,  36 );

--
-- Indexes for dumped tables
--

--
-- Indexes for table  classes 
--
ALTER TABLE  classes 
  ADD PRIMARY KEY ( id ),
  ADD KEY  subject_id  ( subject ),
  ADD KEY  teacher_id  ( teacher );

--
-- Indexes for table  students 
--
ALTER TABLE  students 
  ADD PRIMARY KEY ( id ),
  ADD KEY  class_id  ( class );

--
-- Indexes for table  subjects 
--
ALTER TABLE  subjects 
  ADD PRIMARY KEY ( id );

--
-- Indexes for table  teachers 
--
ALTER TABLE  teachers 
  ADD PRIMARY KEY ( id );

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table  classes 
--
ALTER TABLE  classes 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table  students 
--
ALTER TABLE  students 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table  subjects 
--
ALTER TABLE  subjects 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table  teachers 
--
ALTER TABLE  teachers 
  MODIFY  id  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for tables
--

--
-- Constraints for  classes 
--
ALTER TABLE  classes 
  ADD CONSTRAINT  subject_id  FOREIGN KEY ( subject ) REFERENCES  subjects  ( id ),
  ADD CONSTRAINT  teacher_id  FOREIGN KEY ( teacher ) REFERENCES  teachers  ( id );

--
-- Constraints for table  students 
--
ALTER TABLE  students 
  ADD CONSTRAINT  class_id  FOREIGN KEY ( class ) REFERENCES  classes  ( id );
COMMIT;
 