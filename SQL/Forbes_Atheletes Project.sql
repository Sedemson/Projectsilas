-- Data Cleaning project with Mysql
/* STEP1 
 Create my database  
 Imported  my data from a csv file 
 Created my  table using the wizard
 Setting contraints for my columns */

CREATE DATABASE forbes_athletes;
USE forbes_athletes;
SELECT * FROM forbes_athletes.`raw forbes richest atheletes (forbes richest athletes 1990-2020)`;
ALTER TABLE  forbes_athletes.`raw forbes richest atheletes (forbes richest athletes 1990-2020)` 
RENAME  TO athletes;
ALTER TABLE athletes  CHANGE COLUMN `S.NO` Id  INT   ;
ALTER TABLE athletes  CHANGE COLUMN  `Current Rank` Current_Rank INT;
ALTER TABLE athletes  CHANGE COLUMN `Previous Year Rank` Previous_Rank VARCHAR(10);
ALTER TABLE athletes  CHANGE COLUMN `earnings ($ million)` Earnings DOUBLE;
DESCRIBE athletes;
SELECT * FROM athletes;



/* STEP 2 SORTING THE PRIMARY KEY
THE PRIMARY HAS REPEATING SO I WILL CREATE A NEW COLUMN  WHICH WILL SERVES AS THE NEW PK*/
 
ALTER TABLE athletes ADD COLUMN Detailed_id  INT AFTER  Id;


UPDATE athletes SET Detailed_id =
CASE WHEN name = 'Mike Tyson' THEN 901
		 WHEN name ='Buster Douglas' THEN 902
		 WHEN name ='Sugar Ray Leonard' THEN 903 
		 WHEN name ='Ayrton Senna'THEN 904
		 WHEN name ='Alain Prost' THEN 905 
		 WHEN name ='Jack Nicklaus' THEN 906 
		 WHEN name = 'Greg Norman'THEN 907 
		 WHEN name = 'Michael Jordan'THEN 908 
		 WHEN name = 'Arnold Palmer'THEN 909 
		 WHEN name = 'Evander Holyfield'THEN 910   
		 WHEN name =   'George Foreman' THEN 911
		 WHEN name =   'Nigel Mansell' THEN 912
		 WHEN name = 'Donovan \"Razor\"\" Ruddock\"' THEN 913
		 WHEN name =   'Andre Agassi' THEN 914
		 WHEN name =  'Jim Courier'  THEN 915
		WHEN name =  'Joe Montana'  THEN 917
		WHEN name =  'Monica Seles' THEN 918
		WHEN name = 'Riddick Bowe' THEN 919
		WHEN name = 'Shaquille O\'Neal' THEN 920 
		WHEN name = 'Cecil Fielder' THEN 921 
		WHEN name = 'Gerhard Berger' THEN 922 
		WHEN name = 'Wayne Gretzky' THEN 923 
		WHEN name = 'Michael Moorer' THEN 924 
		WHEN name = 'Lennox Lewis' THEN 925 
		WHEN name = 'Deion Sanders' THEN 926 
		WHEN name = 'Michael Schumacher' THEN 927 
		WHEN name = 'Emmit Smith' THEN 928 
		WHEN name = 'Patrick Ewing' THEN 929 
		WHEN name = 'Oscar De La Hoya' THEN 930 
		WHEN name = 'Tiger Woods' THEN 931 
		WHEN name = 'Dale Earnhardt' THEN 932 
		WHEN name = 'Joe Sakic' THEN 933 
		WHEN name =  'Grant Hill'THEN 934 
		WHEN name = 'Sergei Federov' THEN 935 
		WHEN name = 'Gary Sheffield'THEN 936 
		WHEN name = 'Kevin Garnett'THEN 937 
		WHEN name = 'Kobe Bryant'THEN 938 
		WHEN name = 'Jacques Villeneuve'THEN 939 
		WHEN name = 'Jeff Gordon'THEN 940 
		 WHEN name = 'Alex Rodriguez'THEN 941 
		 WHEN name = 'Peyton Manning'THEN 942 
		 WHEN name = 'David Beckham'THEN 943 
		 WHEN name = 'Peyton Manning'THEN 944 
		 WHEN name = 'Michael Vick'THEN 945 
		 WHEN name = 'Lance Armstrong'THEN 946 
		 WHEN name = 'Valentino Rossi'THEN 947 
		 WHEN name = 'Muhammad Ali'THEN 948 
		 WHEN name = 'Phil Mickelson'THEN 949 
		 WHEN name = 'Tom Brady' THEN 950 
		 WHEN name = 'Kimi Raikkonen'THEN 951 
		 WHEN name = 'Ronaldinho'THEN 952 
		 WHEN name = 'LeBron James'THEN 953 
		 WHEN name = 'Roger Federer'THEN 954 
		 WHEN name = 'Russell Wilson' THEN 955 
		 WHEN name = 'Manny Pacquiao'THEN 956 
		 WHEN name = 'Dale Earnhardt Jr.'THEN 957 
		 WHEN name = 'Floyd Mayweather'THEN 958 
		 WHEN name = 'Eli Manning'THEN 959 
		 WHEN name = 'Terrell Suggs'THEN 960 
		 WHEN name = 'Cristiano Ronaldo'THEN 961 
		 WHEN name = 'Lionel Messi'THEN 962 
		 WHEN name =  'Drew Brees' THEN 963 
		 WHEN name = 'Aaron Rodgers'THEN 964 
		 WHEN name = 'Rafael Nadal'THEN 965 
		 WHEN name = 'Matt Ryan'THEN 966 
		 WHEN name = 'Kevin Durant'THEN 967 
		 WHEN name = 'Novak Djokovic'THEN 968 
		 WHEN name = 'Cam Newton'THEN 969 
		 WHEN name = 'Jordan Spieth'THEN 970 
		 WHEN name = 'Andrew Luck'THEN 971 
		 WHEN name = 'Rory McIlroy'THEN 972 
		 WHEN name = 'Stephen Curry' THEN 973 
		 WHEN name = 'Lewis Hamilton'THEN 974 
		 WHEN name = 'Conor McGregor'THEN 975 
		 WHEN name = 'Neymar'THEN 976 
		 WHEN name = 'Matthew Stafford'THEN 977 
		 WHEN name = 'Canelo Alvarez'THEN 978 
		 WHEN name = 'Aaron Rogers'THEN 979 
		 WHEN name = 'Kirk Cousins'THEN 980 
		 WHEN name = 'Carson Wentz'THEN 916
		 WHEN name = 'James Harden' THEN 981
		  WHEN name = 'Dennis Rodman' THEN 982  
		 WHEN name = 'Shaq O\'Neal' THEN 920
		 
	ELSE Detailed_id = 0
       END
       WHERE name IN ('Mike Tyson','Buster Douglas','Sugar Ray Leonard','Ayrton Senna','Alain Prost',
'Jack Nicklaus','Greg Norman','Michael Jordan','Arnold Palmer','Evander Holyfield','George Foreman',
'Donovan \"Razor\"\" Ruddock\"','Nigel Mansell','Andre Agassi','Joe Montana','Jim Courier','Monica Seles',
'Riddick Bowe','Shaquille O\'Neal','Lennox Lewis','Cecil Fielder','Gerhard Berger','Wayne Gretzky',
'Michael Moorer','Deion Sanders','Michael Schumacher','Emmit Smith','Dennis Rodman','Patrick Ewing',
'Oscar De La Hoya','Tiger Woods','Dale Earnhardt','Joe Sakic','Grant Hill','Sergei Federov','Gary Sheffield',
'Kevin Garnett','Kobe Bryant','Jacques Villeneuve','Jeff Gordon','Alex Rodriguez','Peyton Manning',
'David Beckham','Michael Vick','Lance Armstrong','Valentino Rossi','Muhammad Ali','Phil Mickelson',
'Tom Brady','Kimi Raikkonen','Ronaldinho','LeBron James','Roger Federer','Manny Pacquiao','Dale Earnhardt Jr.',
'Floyd Mayweather','Eli Manning','Terrell Suggs','Cristiano Ronaldo','Lionel Messi','Drew Brees','Aaron Rodgers',
'Rafael Nadal','Matt Ryan','Kevin Durant','Novak Djokovic','Cam Newton','Jordan Spieth','Andrew Luck',
'Rory McIlroy','Stephen Curry','James Harden','Lewis Hamilton','Conor McGregor','Neymar','Matthew Stafford',
'Canelo Alvarez','Russell Wilson','Aaron Rogers','Kirk Cousins','Shaq O\'Neal','Russell Wilson','Carson Wentz');
      
  
  
-- Queries --
SELECT * FROM athletes;
DESCRIBE atheletes;
SELECT DISTINCT Detailed_id FROM athletes;
-- STEP 3 POPULTING  PREVIOUS YEARS COLUMN WITH ROWS --

SELECT  distinct Previous_Rank from atheletes;

/* NB for the distinct characters with the exception of whole numbers in the  previous_Rank column
   i will be populating it with integer values for easy exploration and anlyzation of the data 
    These are the distinct characters and how i will populate them
    Whole number+> = Whole number +1
    ?? = 0
    ? = 0
    none = 0
    Not Rank = 0
    blank space = 0 */
    
   
SELECT *FROM athletes WHERE Previous_Rank= '' ;
UPDATE athletes SET  Previous_RANK = 0  
WHERE  Previous_Rank IN (''); 

SELECT *FROM athletes WHERE Previous_Rank= '?'; 
UPDATE athletes SET  Previous_RanK = 0  
WHERE  Previous_Rank IN ('?') ;  

SELECT *FROM athletes WHERE Previous_Rank= '>10'; 
UPDATE athletes SET  Previous_Rank = 11  
WHERE Previous_Rank IN ( '>10' ) ;
  
SELECT *FROM athletes WHERE Previous_Rank= '>20'; 
UPDATE athletes SET  Previous_Rank = 21  
WHERE Previous_Rank IN ( '>20' ) ;  

SELECT *FROM athletes WHERE Previous_Rank= '>30'; 
UPDATE athletes SET Previous_Rank = 31
WHERE Previous_Rank  IN ('>30');

SELECT *FROM athletes WHERE Previous_Rank= '>40'; 
UPDATE athletes SET  Previous_Rank = 41  
WHERE Previous_Rank IN ( '>40' ) ;  

SELECT *FROM athletes WHERE Previous_Rank= '>100'; 
UPDATE athletes SET  Previous_Rank = 101  
WHERE Previous_Rank IN ( '>100' ) ; 

 SELECT *FROM athletes WHERE Previous_Rank= '>14'; 
UPDATE athletes SET  Previous_Rank = 15  
WHERE Previous_Rank IN ( '>14' ) ;  

SELECT *FROM athletes WHERE Previous_Rank= '??'; 
UPDATE athletes SET  Previous_Rank = 0  
WHERE Previous_Rank IN ( '??' ) ; 

SELECT *FROM athletes WHERE Previous_Rank= 'none'; 
UPDATE athletes SET  Previous_Rank = 0  
WHERE Previous_Rank IN ( 'none' ) ; 

SELECT *FROM athletes WHERE Previous_Rank= 'not ranked'; 
UPDATE athletes SET  Previous_Rank = 0  
WHERE Previous_Rank IN ( 'not ranked' ) ; 



-- Step 4  Answer the 10 custom Queries Below 
-- 1.	Retrieve the information for the athletes with the highest earnings

SELECT * FROM atheletes
ORDER BY Earnings DESC
LIMIT 1 ;

-- Alternatively We can use subquery to achieve similar outcome 

SELECT * FROM  atheletes 
WHERE Earnings= (SELECT MAX(Earnings) FROM atheletes);


-- What are the top 5 sports athletes make the most money from

SELECT  Sport, SUM(Earnings)AS Total_Earnings From athletes
GROUP BY Sport
ORDER BY Total_Earnings DESC LIMIT 5;

-- Find the top 5 athletes with the bigest change in rank (Positive or negative)
-- Positive Change 
SELECT Name, Current_Rank, Previous_Rank  FROM athletes
WHERE Previous_Rank > Current_Rank 
ORDER BY (Previous_Rank- Current_Rank) DESC LIMIT 5;

-- Negative Change 
SELECT Name, Current_Rank, Previous_Rank  FROM athletes
WHERE Previous_Rank < Current_Rank 
ORDER BY  Previous_Rank DESC LIMIT 5;


-- Display the current rank and earnings for all the athletes from USA and Switzerland
SELECT Name, Current_Rank, Earnings, Nationality FROM athletes
WHERE Year= 2020 AND  Nationality In ('USA','Switzerland');

-- Calculate the average earnings for all athletes 
SELECT AVG(Earnings)  FROM athletes;

-- What are the top 5 nationality whose athletes earns the most? 
SELECT  Nationality, SUM(Earnings) AS Total_Earnings
FROM athletes
GROUP BY Nationality;


