create database if not exists Loan_Application; 
use Loan_Application ;

# Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    AadharNumber VARCHAR(12),
    Email VARCHAR(100),
    MobileNumber VARCHAR(10),
    PANNumber VARCHAR(10),
    Address VARCHAR(255)
);

# Application Table
CREATE TABLE Application (
    ApplicationID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10, 2),
    LoanType VARCHAR(50),
    ApplicationStatus VARCHAR(50),
    ApplicationDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

# Loan Table
CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    ApplicationID INT,
    LoanAmount DECIMAL(10, 2),
    LoanType VARCHAR(50),
    FOREIGN KEY (ApplicationID) REFERENCES Application(ApplicationID)
);

# Property Table
CREATE TABLE Property (
    PropertyID INT PRIMARY KEY,
    CustomerID INT,
    PropertyValue DECIMAL(15, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

# Employment Table
CREATE TABLE Employment (
    EmploymentID INT PRIMARY KEY,
    CustomerID INT,
    EmploymentStatus VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

# Income Table
CREATE TABLE Income (
    IncomeID INT PRIMARY KEY,
    CustomerID INT,
    Income DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

# Credit Table
CREATE TABLE Credit (
    CreditID INT PRIMARY KEY,
    CustomerID INT,
    CreditScore INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- -------------------------------Sample Data for the customer Table ---------------------------------------------------------
INSERT INTO Customer (CustomerID, CustomerName, Age, Gender, AadharNumber, Email, MobileNumber, PANNumber, Address) VALUES
(1, 'Rajesh Kumar', 30, 'Male', '123456789012', 'rajesh.kumar@example.com', '9876543210', 'ABCDE1234F', '123 MG Road, Bangalore, Karnataka'),
(2, 'Sita Sharma', 45, 'Female', '234567890123', 'sita.sharma@example.com', '9876543211', 'BCDEF2345G', '456 Park Street, Mumbai, Maharashtra'),
(3, 'Amit Patel', 28, 'Male', '345678901234', 'amit.patel@example.com', '9876543212', 'CDEFG3456H', '789 Residency, Ahmedabad, Gujarat'),
(4, 'Lakshmi Menon', 50, 'Female', '456789012345', 'lakshmi.menon@example.com', '9876543213', 'DEFGH4567I', '101 Palm Street, Kochi, Kerala'),
(5, 'Vikram Singh', 35, 'Male', '567890123456', 'vikram.singh@example.com', '9876543214', 'EFGHI5678J', '202 Park Lane, Jaipur, Rajasthan'),
(6, 'Anita Gupta', 40, 'Female', '678901234567', 'anita.gupta@example.com', '9876543215', 'FGHIJ6789K', '303 Nehru Place, Delhi'),
(7, 'Sunil Verma', 32, 'Male', '789012345678', 'sunil.verma@example.com', '9876543216', 'GHIJK7890L', '404 DLF Phase, Gurgaon, Haryana'),
(8, 'Priya Rao', 29, 'Female', '890123456789', 'priya.rao@example.com', '9876543217', 'HIJKL8901M', '505 Electronic City, Bangalore, Karnataka'),
(9, 'Arjun Das', 41, 'Male', '901234567890', 'arjun.das@example.com', '9876543218', 'IJKLM9012N', '606 Golf Course Road, Noida, UP'),
(10, 'Pooja Nair', 38, 'Female', '012345678901', 'pooja.nair@example.com', '9876543219', 'JKLMN0123O', '707 M.G. Road, Pune, Maharashtra'),
(11, 'Rakesh Yadav', 27, 'Male', '123456789013', 'rakesh.yadav@example.com', '9876543220', 'KLMNO1234P', '808 Lodhi Road, Delhi'),
(12, 'Meera Pillai', 34, 'Female', '234567890124', 'meera.pillai@example.com', '9876543221', 'LMNOP2345Q', '909 IT Park, Hyderabad, Telangana'),
(13, 'Naveen Reddy', 46, 'Male', '345678901235', 'naveen.reddy@example.com', '9876543222', 'MNOPQ3456R', '1010 Hitech City, Hyderabad, Telangana'),
(14, 'Shalini Iyer', 31, 'Female', '456789012346', 'shalini.iyer@example.com', '9876543223', 'NOPQR4567S', '1111 MG Road, Chennai, Tamil Nadu'),
(15, 'Kiran Joshi', 33, 'Male', '567890123457', 'kiran.joshi@example.com', '9876543224', 'OPQRS5678T', '1212 Indiranagar, Bangalore, Karnataka'),
(16, 'Manju Agarwal', 42, 'Female', '678901234568', 'manju.agarwal@example.com', '9876543225', 'PQRST6789U', '1313 Salt Lake, Kolkata, West Bengal'),
(17, 'Rohit Khanna', 37, 'Male', '789012345679', 'rohit.khanna@example.com', '9876543226', 'QRSTU7890V', '1414 HUDA City, Gurgaon, Haryana'),
(18, 'Kavita Kapoor', 39, 'Female', '890123456780', 'kavita.kapoor@example.com', '9876543227', 'RSTUV8901W', '1515 Rajajinagar, Bangalore, Karnataka'),
(19, 'Ajay Jain', 26, 'Male', '901234567891', 'ajay.jain@example.com', '9876543228', 'STUVW9012X', '1616 Andheri West, Mumbai, Maharashtra'),
(20, 'Neha Malhotra', 43, 'Female', '012345678902', 'neha.malhotra@example.com', '9876543229', 'TUVWX0123Y', '1717 Sector 5, Chandigarh'),
(21, 'Rajiv Bhatia', 29, 'Male', '123456789014', 'rajiv.bhatia@example.com', '9876543230', 'UVWXY1234Z', '1818 Palam Vihar, Gurgaon, Haryana'),
(22, 'Sneha Rao', 36, 'Female', '234567890125', 'sneha.rao@example.com', '9876543231', 'VWXYZ2345A', '1919 JP Nagar, Bangalore, Karnataka'),
(23, 'Pranav Sinha', 31, 'Male', '345678901236', 'pranav.sinha@example.com', '9876543232', 'WXYZA3456B', '2020 Sector 21, Noida, UP'),
(24, 'Lalitha Nair', 45, 'Female', '456789012347', 'lalitha.nair@example.com', '9876543233', 'XYZAB4567C', '2121 Sarjapur Road, Bangalore, Karnataka'),
(25, 'Gaurav Mehta', 28, 'Male', '567890123458', 'gaurav.mehta@example.com', '9876543234', 'YZABC5678D', '2222 Versova, Mumbai, Maharashtra');


-- ------------------------------Sample data for the Application Table ----------------------------------------

INSERT INTO Application (ApplicationID, CustomerID, LoanAmount, LoanType, ApplicationStatus, ApplicationDate) VALUES
(1, 1, 50000, 'Personal', 'Approved', '2023-01-15'),
(2, 2, 150000, 'Mortgage', 'Pending', '2023-02-10'),
(3, 3, 30000, 'Auto', 'Rejected', '2023-03-05'),
(4, 4, 200000, 'Mortgage', 'Approved', '2023-04-20'),
(5, 5, 80000, 'Personal', 'Approved', '2023-05-15'),
(6, 6, 25000, 'Auto', 'Pending', '2023-06-18'),
(7, 7, 60000, 'Personal', 'Rejected', '2023-07-22'),
(8, 8, 120000, 'Mortgage', 'Approved', '2023-08-12'),
(9, 9, 45000, 'Auto', 'Pending', '2023-09-14'),
(10, 10, 90000, 'Personal', 'Rejected', '2023-10-16'),
(11, 11, 55000, 'Personal', 'Approved', '2023-11-18'),
(12, 12, 300000, 'Mortgage', 'Pending', '2023-12-20'),
(13, 13, 70000, 'Auto', 'Rejected', '2024-01-21'),
(14, 14, 140000, 'Mortgage', 'Approved', '2024-02-22'),
(15, 15, 75000, 'Personal', 'Pending', '2024-03-23'),
(16, 16, 40000, 'Auto', 'Rejected', '2024-04-24'),
(17, 17, 85000, 'Personal', 'Approved', '2024-05-25'),
(18, 18, 160000, 'Mortgage', 'Pending', '2024-06-26'),
(19, 19, 95000, 'Auto', 'Approved', '2024-07-27'),
(20, 20, 110000, 'Personal', 'Rejected', '2024-08-28'),
(21, 21, 60000, 'Personal', 'Approved', '2023-01-15'),
(22, 22, 170000, 'Mortgage', 'Pending', '2023-02-10'),
(23, 23, 32000, 'Auto', 'Rejected', '2023-03-05'),
(24, 24, 210000, 'Mortgage', 'Approved', '2023-04-20'),
(25, 25, 85000, 'Personal', 'Approved', '2023-05-15');


-- ---------------------------Sample Data for the Loan Table -------------------------------------------

INSERT INTO Loan (LoanID, ApplicationID, LoanAmount, LoanType) VALUES
(1, 1, 50000, 'Personal'),
(2, 2, 150000, 'Mortgage'),
(3, 3, 30000, 'Auto'),
(4, 4, 200000, 'Mortgage'),
(5, 5, 80000, 'Personal'),
(6, 6, 25000, 'Auto'),
(7, 7, 60000, 'Personal'),
(8, 8, 120000, 'Mortgage'),
(9, 9, 45000, 'Auto'),
(10, 10, 90000, 'Personal'),
(11, 11, 55000, 'Personal'),
(12, 12, 300000, 'Mortgage'),
(13, 13, 70000, 'Auto'),
(14, 14, 140000, 'Mortgage'),
(15, 15, 75000, 'Personal'),
(16, 16, 40000, 'Auto'),
(17, 17, 85000, 'Personal'),
(18, 18, 160000, 'Mortgage'),
(19, 19, 95000, 'Auto'),
(20, 20, 110000, 'Personal'),
(21, 21, 60000, 'Personal'),
(22, 22, 170000, 'Mortgage'),
(23, 23, 32000, 'Auto'),
(24, 24, 210000, 'Mortgage'),
(25, 25, 85000, 'Personal');


-- -------------------------------Sample data for the Property Table ------------------------------

INSERT INTO Property (PropertyID, CustomerID, PropertyValue) VALUES
(1, 1, 5000000),
(2, 2, 15000000),
(3, 3, 3000000),
(4, 4, 20000000),
(5, 5, 8000000),
(6, 6, 2500000),
(7, 7, 6000000),
(8, 8, 12000000),
(9, 9, 4500000),
(10, 10, 9000000),
(11, 11, 5500000),
(12, 12, 30000000),
(13, 13, 7000000),
(14, 14, 14000000),
(15, 15, 7500000),
(16, 16, 4000000),
(17, 17, 8500000),
(18, 18, 16000000),
(19, 19, 9500000),
(20, 20, 11000000),
(21, 21, 5000000),
(22, 22, 17000000),
(23, 23, 3200000),
(24, 24, 21000000),
(25, 25, 8500000);


-- -----------------------------Sample data for the Employment Table- ------------------------------

INSERT INTO Employment (EmploymentID, CustomerID, EmploymentStatus) VALUES
(1, 1, 'Employed'),
(2, 2, 'Self-employed'),
(3, 3, 'Unemployed'),
(4, 4, 'Employed'),
(5, 5, 'Self-employed'),
(6, 6, 'Unemployed'),
(7, 7, 'Employed'),
(8, 8, 'Self-employed'),
(9, 9, 'Unemployed'),
(10, 10, 'Employed'),
(11, 11, 'Self-employed'),
(12, 12, 'Unemployed'),
(13, 13, 'Employed'),
(14, 14, 'Self-employed'),
(15, 15, 'Unemployed'),
(16, 16, 'Employed'),
(17, 17, 'Self-employed'),
(18, 18, 'Unemployed'),
(19, 19, 'Employed'),
(20, 20, 'Self-employed'),
(21, 21, 'Unemployed'),
(22, 22, 'Employed'),
(23, 23, 'Self-employed'),
(24, 24, 'Unemployed'),
(25, 25, 'Employed');


-- - -----------------------------------Sample data for the Income table ----------------------------------

INSERT INTO Income (IncomeID, CustomerID, Income) VALUES
(1, 1, 500000),
(2, 2, 1500000),
(3, 3, 300000),
(4, 4, 2000000),
(5, 5, 800000),
(6, 6, 250000),
(7, 7, 600000),
(8, 8, 1200000),
(9, 9, 450000),
(10, 10, 900000),
(11, 11, 550000),
(12, 12, 3000000),
(13, 13, 700000),
(14, 14, 1400000),
(15, 15, 750000),
(16, 16, 400000),
(17, 17, 850000),
(18, 18, 1600000),
(19, 19, 950000),
(20, 20, 1100000),
(21, 21, 500000),
(22, 22, 1700000),
(23, 23, 320000),
(24, 24, 2100000),
(25, 25, 850000);


-- ------------------------------ Sample data for the Credit score table ---------------------------------

INSERT INTO Credit (CreditID, CustomerID, CreditScore) VALUES
(1, 1, 750),
(2, 2, 680),
(3, 3, 720),
(4, 4, 640),
(5, 5, 710),
(6, 6, 730),
(7, 7, 690),
(8, 8, 740),
(9, 9, 660),
(10, 10, 700),
(11, 11, 750),
(12, 12, 670),
(13, 13, 710),
(14, 14, 690),
(15, 15, 680),
(16, 16, 720),
(17, 17, 730),
(18, 18, 710),
(19, 19, 750),
(20, 20, 740),
(21, 21, 680),
(22, 22, 690),
(23, 23, 700),
(24, 24, 730),
(25, 25, 750);



