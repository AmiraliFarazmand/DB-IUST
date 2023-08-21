-- یک پایگاه داده فرضی در رابطه با انتخاب واحد یک دانشگاه در نظر بگیرید
-- :
-- 1__ جدول اطلاعات کلاس ها شامل نام کلاس، نام استاد کلاس، زمان برگذاری کلاس، روز برگذاری کلاس، تاریخ 
-- اولین جلسه کلاس، تاریخ امتحان پایانترم
-- 2__ جدول اطلاعات اساتید شامل نام، نام خانوادگی، کد ملی، کد استاد، شماره تماس، سن، حقوق ماهیانه و سابقه کار
-- 3__ جدول اطلاعات دانشجویان شامل نام، نام خانوادگی، نام پدر، کد ملی، شماره دانشجویی، شماره تماس، سن، سال 
-- ورودی، تعداد واحد گذرانده، معدل ترم پیش و معدل کل
-- Class , Proffessor , Student
--------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Class (
    name VARCHAR(255) PRIMARY KEY,
    proffessor_ID INTEGER NOT NULL,
    attemption_time TIME,
    attemption_day DATE,
    first_session_date DATE,
    final_exam_date DATETIME,
    FOREIGN KEY (proffessor_ID) REFERENCES Proffessor(ID) 
    ON DELETE SET NULL 
    ON UPDATE CASCADE);

CREATE TABLE Proffessor (
    f_name VARCHAR(255) NOT NULL,
    l_name VARCHAR(255) NOT NULL,
    SSN CHAR(10) NOT NULL,
    ID CHAR(8) PRIMARY KEY,
    phone_number CHAR(11) NOT NULL,
    age INTEGER NOT NULL,
    salary INTEGER,
    history INTEGER DEFAULT 0);

CREATE TABLE Student (
    f_name VARCHAR(255) NOT NULL,
    l_name VARCHAR(255) NOT NULL,
    fathers_name VARCHAR(255) NOT NULL,
    SSN CHAR(10) NOT NULL,
    ID CHAR(8) PRIMARY KEY,
    phone_number CHAR(11) NOT NULL,
    age INTEGER NOT NULL,
    join_year INTEGER NOT NULL,
    passed_units INTEGER NOT NULL DEFAULT 0,
    totalscore_last_term FLOAT DEFAULT 0,
    totalscore_all_terms FLOAT DEFAULT 0);

-- -------------------------------------------------------------------------------------------------
-- Tips:
    -- dar soal gofte shode bood ke 3jadvale baala ro piade sazi konim va harfi rajebe mavarede bishtar nazade bood!