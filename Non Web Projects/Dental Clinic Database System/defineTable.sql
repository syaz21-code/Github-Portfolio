-- Branch
CREATE TABLE "Branch" (
  "Br_ID" varchar2(7) PRIMARY KEY,
  "Br_Name" varchar2(100) NOT NULL,
  "Br_OpenDate" date NOT NULL,
  "Br_PhoneNum" varchar2(12) NOT NULL,
  "Br_Stat" varchar2(10) NOT NULL,
  "Br_FaxNum" varchar2(12) NOT NULL,
  "Br_Email" varchar2(30) NOT NULL,
  "Br_BankNum" varchar2(13) NOT NULL,
  "Br_RegNum" varchar2(15) NOT NULL,
  "Br_TotEmp" number(10) NOT NULL
  );

-- Patient
CREATE TABLE "Patient"(
  "Pat_ID" varchar2(7) PRIMARY KEY,
  "Pat_FName" varchar2(100) NOT NULL,
  "Pat_LName" varchar2(100) NOT NULL,
  "Pat_VisitCount" number(10) NOT NULL,
  "Pat_PhoneNum" number(12) NOT NULL,
  "Pat_Occu" varchar2(100) DEFAULT NULL,
  "Pat_DOB" date NOT NULL,
  "Pat_Age" number(3) NOT NULL,
  "Pat_Race" varchar2(100) NOT NULL,
  "Pat_Email" varchar2(30) DEFAULT NULL,
  "Pat_Remark" varchar2(100) DEFAULT NULL,
  "Pat_NRIC" number(13) NOT NULL
  );
  
-- Employee
CREATE TABLE "Employee"(
  "E_ID" varchar2(7) PRIMARY KEY,
  "E_FName" varchar2(100) NOT NULL,
  "E_LName" varchar2(100) NOT NULL,
  "E_Tenure" number(4) NOT NULL,
  "E_BankNum" number(13) NOT NULL,
  "E_BankName" varchar2(100) NOT NULL,
  "E_PhoneNum" varchar2(12) NOT NULL,
  "E_Nation" varchar2(50) NOT NULL,
  "E_NRIC" varchar2(14) NOT NULL,
  "E_Qif" varchar2(30) NOT NULL,
  "E_Type" varchar2(30) NOT NULL,
  "Br_ID" varchar2(7)
  );
  
-- Manager
CREATE TABLE "Manager"(
  "M_ID" varchar2(7) PRIMARY KEY,
  "M_Mng_Skill" varchar2(50) NOT NULL,
  "M_Time_Skill" varchar2(50) NOT NULL,
  "M_Lead_Skill" varchar2(50) NOT NULL,
  "M_Lang_Spk" varchar2(50) NOT NULL,
  "M_Crit_TS" varchar2(50) NOT NULL,
  "M_Wrt_Skill" varchar2(50) NOT NULL,
  "M_Comm_Skill" varchar2(50) NOT NULL,
  "M_Org_Skill" varchar2(50) NOT NULL,
  "M_Inter_Skill" varchar2(50) NOT NULL,
  "E_ID" varchar2(7)
  );
  
  -- Technician
  CREATE TABLE "Technician"(
  "T_ID" varchar2(7) PRIMARY KEY,
  "T_Machine_Prof" varchar2(50) NOT NULL,
  "T_Maintain_Skill" varchar2(50) NOT NULL,
  "T_Teamwork" varchar2(50) NOT NULL,
  "T_Fitness" varchar2(50) NOT NULL,
  "T_Cert" varchar2(50) NOT NULL,
  "T_Tech_Skill" varchar2(50) NOT NULL,
  "T_Design_Skill" varchar2(50) NOT NULL,
  "T_Safe_Aware" varchar2(50) NOT NULL,
  "T_Quality_Focus" varchar2(50) NOT NULL,
  "E_ID" varchar2(7),
  "Lab_ID" varchar2(7) 
  );
  
  -- Dentist
  CREATE TABLE "Dentist"(
  "D_ID" varchar2(7) PRIMARY KEY,
  "D_Special" varchar2(50) NOT NULL,
  "D_Membership" varchar2(50) NOT NULL,
  "D_LicenseNum" varchar2(10) NOT NULL,
  "D_Availability" varchar2(50) NOT NULL,
  "D_Li_ExpDate" varchar2(50) NOT NULL,
  "D_Recognitions" varchar2(50) NOT NULL,
  "Patient_Satisf" varchar2(50) NOT NULL,
  "D_Diag_Skill" varchar2(50) NOT NULL,
  "D_Exp" varchar2(30) NOT NULL,
  "E_ID" varchar2(7),
  "Lab_ID" varchar2(7)
  );
  
  -- Assistant
  CREATE TABLE "Assistant"(
  "Ass_ID" varchar2(7) PRIMARY KEY,
  "Ass_IT_Skill" varchar2(50) NOT NULL,
  "Ass_Fitness" varchar2(50) NOT NULL,
  "Cust_Serv_Skill" varchar2(50) NOT NULL,
  "Ass_Typ_Speed" varchar2(50) NOT NULL,
  "Med_Know" varchar2(50) NOT NULL,
  "First_Aid_Fund" varchar2(50) NOT NULL,
  "Ass_Ethic" varchar2(50) NOT NULL,
  "Ass_Lang_Spk" varchar2(50) NOT NULL,
  "Ass_Tech_Skill" varchar2(50) NOT NULL,
  "E_ID" varchar2(7)
  );
  
  -- Social Media
  CREATE TABLE "SocMedia"(
  "SM_ID" varchar2(7) PRIMARY KEY,
  "SM_Platform" varchar2(50) NOT NULL,
  "SM_Username" varchar2(50) NOT NULL,
  "SM_Description" varchar2(100) NOT NULL,
  "SM_Password" varchar2(50) NOT NULL,
  "SM_VerificationStatus" varchar2(50) NOT NULL,
  "SM_FollowCount" number(7) NOT NULL,
  "SM_DateCreate" date NOT NULL,
  "SM_PostCount" number(7) NOT NULL,
  "SM_EmailLinked" varchar2(30) NOT NULL,
  "Ass_ID" varchar2(7),
  "Br_ID" varchar2(7)
  );
  
  -- Laboratory
  CREATE TABLE "Laboratory"(
  "Lab_ID" varchar2(7) PRIMARY KEY,
  "Lab_Email" varchar2(30) NOT NULL,
  "Lab_PhoneNum" varchar2(12) NOT NULL,
  "Lab_TurnAroundTime" varchar2(30) NOT NULL,
  "Tech_Count" number(4) NOT NULL,
  "Lab_Fee" number(6,2) NOT NULL,
  "Cert_Stat" varchar2(30) NOT NULL,
  "Lab_Stat" varchar2(30) NOT NULL,
  "Ship_Method" varchar2(50) NOT NULL,
  "Qlty_Ctrl_Measure" varchar2(50) NOT NULL,
  "Br_ID" varchar2(7)
  );
  
  -- Salary
  CREATE TABLE "Salary"(
  "Sal_ID" varchar2(8) PRIMARY KEY,
  "Sal_Bonus" number(7,4) NOT NULL,
  "Sal_TotHour_Work" number(5) NOT NULL,
  "Sal_OT" number(6) NOT NULL,
  "Sal_Rate_Hour" number(6,2) NOT NULL,
  "Sal_EPF" number(6,2) NOT NULL,
  "Sal_Pay_Method" varchar2(50) NOT NULL,
  "Sal_Tax_Percent" number(7,4) NOT NULL,
  "Sal_TotDeduct" number(7,4) NOT NULL,
  "TotSalary" number(6,2) NOT NULL,
  "Tran_ID" varchar2(8),
  "E_ID" varchar2(7)
  );
  
  -- Transaction
  CREATE TABLE "Transaction"(
  "Tran_ID" varchar2(8) PRIMARY KEY,
  "Tran_Stat" varchar2(30) NOT NULL,
  "Tran_Date" date NOT NULL,
  "Tran_Note" varchar2(70) NOT NULL,
  "Tran_Day" varchar2(20) NOT NULL,
  "Tran_ReffNo" varchar2(10) NOT NULL,
  "Tran_Type" varchar2(30) NOT NULL,
  "Tran_Method" varchar2(50) NOT NULL,
  "Tran_Repeat" varchar2(50) NOT NULL,
  "Tran_Amount" number(8,2) NOT NULL,
  "Supp_ID" varchar2(7),
  "M_ID" varchar2(7),
  "Fac_ID" varchar2(7)
  );
  
  -- Order
  CREATE TABLE "Order"(
  "O_ID" varchar2(7) PRIMARY KEY,
  "O_Type" varchar2(100) NOT NULL,
  "O_Courier" varchar2(50) NOT NULL,
  "O_TrackNum" varchar2(15) NOT NULL,
  "O_Priority" varchar2(50) NOT NULL,
  "O_Nameof_Item" varchar2(100) NOT NULL,
  "O_Qty" number(5) NOT NULL,
  "O_TotCost" number(9,3) NOT NULL,
  "O_UnitCost" number(9,3) NOT NULL,
  "Pur_of_Purchase" varchar2(100) NOT NULL,
  "Dateof_Purchase" date NOT NULL,
  "Tran_ID" varchar2(8),
  "Supp_ID" varchar2(7),
  "Br_ID" varchar2(7)
  );

  -- Supplier
  CREATE TABLE "Supplier"(
  "Supp_ID" varchar2(7) PRIMARY KEY,
  "Supp_Name" varchar2(100) NOT NULL,
  "Supp_PhoneNum" varchar2(12) NOT NULL,
  "Supp_FaxNum" varchar2(12) NOT NULL,
  "Supp_Prod_Cat" varchar2(50) NOT NULL,
  "Supp_Email" varchar2(30) NOT NULL,
  "Supp_BankName" varchar2(50) NOT NULL,
  "Supp_BankNum" number(13) NOT NULL,
  "Supp_Type" varchar2(30) NOT NULL,
  "Date_Open" date NOT NULL,
  "Date_Operate" date NOT NULL,
  "M_ID" varchar2(7)
  );

  -- Treatment
  CREATE TABLE "Treatment"(
  "Treat_ID" varchar2(9) PRIMARY KEY,
  "Treat_Type" varchar2(30) NOT NULL,
  "Treat_Diag" varchar2(30) NOT NULL,
  "Treat_Notes" varchar2(30) NOT NULL,
  "Treat_Duration" varchar2(50) NOT NULL,
  "Treat_Stat" varchar2(30) NOT NULL,
  "Treat_Charges" number(7,2) NOT NULL,
  "Tooth_Num" varchar2(30) NOT NULL,
  "Case_Note" varchar2(50) NOT NULL,
  "Xray_Required" varchar2(30) NOT NULL,
  "Br_ID" varchar2(7),
  "D_ID" varchar2(7)
  );

  -- Payment
  CREATE TABLE "Payment"(
  "P_ID" varchar2(8) PRIMARY KEY,
  "P_Type" varchar2(40) NOT NULL,
  "P_Method" varchar2(30) NOT NULL,
  "P_Panel" varchar2(50),
  "P_Amount" number(6,2) NOT NULL,
  "P_Date" date NOT NULL,
  "Panel_Dept" varchar2(50),
  "Panel_ID" varchar2(8),
  "Payer_Relation" varchar2(30),
  "P_Name" varchar2(50) NOT NULL,
  "P_BankName" varchar2(30) NOT NULL,
  "Pat_ID" varchar2(7),
  "Br_ID" varchar2(7),
  "Treat_ID" varchar2(9)
  );

-- Address
CREATE TABLE "Address"(
  "Add_ID" varchar2(8) PRIMARY KEY,
  "Add_PropNum" varchar2(50),
  "Add_Floor" varchar2(50),
  "Add_Block" varchar2(50),
  "Add_Street" varchar2(50) NOT NULL,
  "Add_PostCode" varchar2(50) NOT NULL,
  "Add_Country" varchar2(50) NOT NULL,
  "Add_District" varchar2(50) NOT NULL,
  "Add_State" varchar2(50) NOT NULL,
  "Add_Type" varchar2(50) NOT NULL,
  "Br_ID" varchar2(7),
  "Lab_ID" varchar2(7)
  );

  -- Transporter
  CREATE TABLE "Transporter"(
  "Driver_ID" varchar2(7) PRIMARY KEY,
  "Driver_Name" varchar2(100) NOT NULL,
  "TP_Count" number(4) NOT NULL,
  "TP_Code" varchar2(7) NOT NULL,
  "TP_Name" varchar2(100) NOT NULL,
  "TP_DateCollect" date NOT NULL,
  "TP_DateFinished" date NOT NULL,
  "TP_ContactNum" varchar2(15) NOT NULL,
  "Vhc_PlateNum" varchar2(10) NOT NULL,
  "Vhc_ReffNum" varchar2(50) NOT NULL,
  "W_ID" varchar2(7),
  "Ass_ID" varchar2(7)
  );

  -- Facility
  CREATE TABLE "Facility"(
  "Fac_ID" varchar2(7) PRIMARY KEY,
  "Fac_StateCode" varchar2(8) NOT NULL,
  "Fac_Name" varchar2(100) NOT NULL,
  "Fac_PhoneNum" varchar2(12) NOT NULL,
  "Fac_Email" varchar2(30) NOT NULL,
  "Fac_BankNum" number(15) NOT NULL,
  "Fac_BankName" varchar2(50) NOT NULL,
  "Op_Date" date NOT NULL,
  "Op_Type" varchar2(100) NOT NULL,
  "Bin_Num" varchar2(50) NOT NULL,
  "W_ID" varchar2(7),
  "M_ID" varchar2(7)
  );

-- Waste
CREATE TABLE "Waste"(
  "W_ID" varchar2(7) PRIMARY KEY,
  "W_Name" varchar2(100) NOT NULL,
  "W_Cat" varchar2(50) NOT NULL,
  "W_BinNum" number(10) NOT NULL,
  "W_Weight" number(4,2) NOT NULL,
  "W_Date_Create" date NOT NULL,
  "W_Desc" varchar2(50) NOT NULL,
  "W_Req" varchar2(50) NOT NULL,
  "Hand_Instruct" varchar2(50) NOT NULL,
  "Seg_Required" varchar2(50) NOT NULL,
  "Inv_ID" varchar2(7),
  "Lab_ID" varchar2(7),
  "Br_ID" varchar2(7),
  "Driver_ID" varchar2(7),
  "E_ID" varchar2(7),
  "Fac_ID" varchar2(7),
  "Mach_ID" varchar2(8)
  );

  -- Inventory
  CREATE TABLE "Inventory"(
  "Inv_ID" varchar2(7) PRIMARY KEY,
  "Inv_Stat" varchar2(50) NOT NULL,
  "Inv_Quota" number(7) NOT NULL,
  "Inv_Type" varchar2(50) NOT NULL,
  "Inv_Unit_Measure" varchar2(50) NOT NULL,
  "Inv_Min_Count" number(7) NOT NULL,
  "Inv_BatchNum" varchar2(50) NOT NULL,
  "Inv_DateUse" date NOT NULL,
  "Inv_LastRestock" date NOT NULL,
  "Inv_QtyHand" number(7) NOT NULL,
  "Supp_ID" varchar2(7),
  "O_ID" varchar2(7),
  "Tran_ID" varchar2(8)
  );

  -- Medicine
  CREATE TABLE "Medicine"(
  "Med_ID" varchar2(7) PRIMARY KEY,
  "Med_Name" varchar2(50) NOT NULL,
  "Med_DosForm" varchar2(50) NOT NULL,
  "Med_Usg_Instruct" varchar2(50) NOT NULL,
  "Med_ExpDate" date NOT NULL,
  "Med_Ingred" varchar2(50) NOT NULL,
  "Med_SideEff" varchar2(50),
  "Med_Usg_Freq" varchar2(50) NOT NULL,
  "Med_Stor_Req" varchar2(100),
  "Med_ShelfLife" varchar2(50) NOT NULL,
  "Inv_ID" varchar2(7)
  );

  -- Material
  CREATE TABLE "Material"(
  "Mat_ID" varchar2(7) PRIMARY KEY,
  "Mat_Name" varchar2(50) NOT NULL,
  "Mat_Color" varchar2(50),
  "Mat_ExpDate" varchar2(50),
  "Mat_Usg_Instruct" varchar2(100),
  "Mat_Stor_Req" varchar2(50),
  "Mat_Hazard" varchar2(50),
  "Mat_ShelfLife" varchar2(50),
  "Mat_Usg_Qty" varchar2(100),
  "Mat_Desc" varchar2(50) NOT NULL,
  "Inv_ID" varchar2(7),
  "Lab_ID" varchar2(7),
  "Mach_ID" varchar2(8)
  );

  -- Instrument
  CREATE TABLE "Instrument"(
  "In_ID" varchar2(7) PRIMARY KEY,
  "In_Name" varchar2(50) NOT NULL,
  "In_Type" varchar2(50) NOT NULL,
  "In_Color" varchar2(50) NOT NULL,
  "In_WarExpDate" varchar2(50),
  "In_WarDuration" varchar2(50),
  "In_Strer_Stat" varchar2(50) NOT NULL,
  "In_Clean_Proc" varchar2(50) NOT NULL,
  "In_Cert_Stat" varchar2(50) NOT NULL,
  "In_Desc" varchar2(100) NOT NULL,
  "Inv_ID" varchar2(7)
  );

  -- Machine
  CREATE TABLE "Machine"(
  "Mach_ID" varchar2(8) PRIMARY KEY,
  "Mach_Name" varchar2(50) NOT NULL,
  "Mach_Type" varchar2(50) NOT NULL,
  "Mach_RegNum" varchar2(7) NOT NULL,
  "Mach_InstallDate" date NOT NULL,
  "Mach_Price" number(9,3) NOT NULL,
  "Mach_WarExpDate" date NOT NULL,
  "Mach_SProvider" varchar2(50) NOT NULL,
  "Next_MaintenanceDate" date NOT NULL,
  "Energy_Consump" varchar2(50) NOT NULL,
  "Br_ID" varchar2(7),
  "O_ID" varchar2(7),
  "Tran_ID" varchar2(8),
  "M_ID" varchar2(7),  
  "Supp_ID" varchar2(7),
  "Lab_ID" varchar2(7)
  );

  -- FacilityAddress
CREATE TABLE "FacilityAddress" (
  "Fac_ID" VARCHAR2(7),
  "Add_ID" VARCHAR2(8),
  CONSTRAINT "FK_FacilityAddress_Facility" FOREIGN KEY ("Fac_ID") REFERENCES "Facility" ("Fac_ID"),
  CONSTRAINT "FK_FacilityAddress_Address" FOREIGN KEY ("Add_ID") REFERENCES "Address" ("Add_ID")
);

-- PatientAddress
CREATE TABLE "PatientAddress" (
  "Pat_ID" VARCHAR2(7),
  "Add_ID" VARCHAR2(8),
  CONSTRAINT "FK_PatientAddress_Patient" FOREIGN KEY ("Pat_ID") REFERENCES "Patient" ("Pat_ID"),
  CONSTRAINT "FK_PatientAddress_Address" FOREIGN KEY ("Add_ID") REFERENCES "Address" ("Add_ID")
);

-- EmployeeAddress
CREATE TABLE "EmployeeAddress" (
  "E_ID" VARCHAR2(7),
  "Add_ID" VARCHAR2(8),
  CONSTRAINT "FK_EmployeeAddress_Employee" FOREIGN KEY ("E_ID") REFERENCES "Employee" ("E_ID"),
  CONSTRAINT "FK_EmployeeAddress_Address" FOREIGN KEY ("Add_ID") REFERENCES "Address" ("Add_ID")
);

-- SupplierAddress
CREATE TABLE "SupplierAddress" (
  "Supp_ID" VARCHAR2(7),
  "Add_ID" VARCHAR2(8),
  CONSTRAINT "FK_SupplierAddress_Supplier" FOREIGN KEY ("Supp_ID") REFERENCES "Supplier" ("Supp_ID"),
  CONSTRAINT "FK_SupplierAddress_Address" FOREIGN KEY ("Add_ID") REFERENCES "Address" ("Add_ID")
);

-- SupplierBranch
CREATE TABLE "SupplierBranch" (
  "Supp_ID" VARCHAR2(7),
  "Br_ID" VARCHAR2(7),
  CONSTRAINT "FK_SupplierBranch_Supplier" FOREIGN KEY ("Supp_ID") REFERENCES "Supplier" ("Supp_ID"),
  CONSTRAINT "FK_SupplierBranch_Branch" FOREIGN KEY ("Br_ID") REFERENCES "Branch" ("Br_ID")
);

-- PatientTreatment
CREATE TABLE "PatientTreatment" (
  "Pat_ID" VARCHAR2(7),
  "Treat_ID" VARCHAR2(9),
  CONSTRAINT "FK_PatientTreatment_Patient" FOREIGN KEY ("Pat_ID") REFERENCES "Patient" ("Pat_ID"),
  CONSTRAINT "FK_PatientTreatment_Treatment" FOREIGN KEY ("Treat_ID") REFERENCES "Treatment" ("Treat_ID")
);

-- PatientBranch
CREATE TABLE "PatientBranch" (
  "Pat_ID" VARCHAR2(7),
  "Br_ID" VARCHAR2(7),
  CONSTRAINT "FK_PatientBranch_Patient" FOREIGN KEY ("Pat_ID") REFERENCES "Patient" ("Pat_ID"),
  CONSTRAINT "FK_PatientBranch_Branch" FOREIGN KEY ("Br_ID") REFERENCES "Branch" ("Br_ID")
);

-- DentistPatient
CREATE TABLE "DentistPatient" (
  "D_ID" VARCHAR2(7),
  "Pat_ID" VARCHAR2(7),
  CONSTRAINT "FK_DentistPatient_Dentist" FOREIGN KEY ("D_ID") REFERENCES "Dentist" ("D_ID"),
  CONSTRAINT "FK_DentistPatient_Patient" FOREIGN KEY ("Pat_ID") REFERENCES "Patient" ("Pat_ID")
);

-- AssistantPatient
CREATE TABLE "AssistantPatient" (
  "Ass_ID" VARCHAR2(7),
  "Pat_ID" VARCHAR2(7),
  CONSTRAINT "FK_AssistantPatient_Assistant" FOREIGN KEY ("Ass_ID") REFERENCES "Assistant" ("Ass_ID"),
  CONSTRAINT "FK_AssistantPatient_Patient" FOREIGN KEY ("Pat_ID") REFERENCES "Patient" ("Pat_ID")
);

-- PatientSocMedia
CREATE TABLE "PatientSocMedia" (
  "Pat_ID" VARCHAR2(7),
  "SM_ID" VARCHAR2(7),
  CONSTRAINT "FK_PatientSocMedia_Patient" FOREIGN KEY ("Pat_ID") REFERENCES "Patient" ("Pat_ID"),
  CONSTRAINT "FK_PatientSocMedia_SocialMedia" FOREIGN KEY ("SM_ID") REFERENCES "SocMedia" ("SM_ID")
);

-- EmployeeInventory
CREATE TABLE "EmployeeInventory" (
  "E_ID" VARCHAR2(7),
  "Inv_ID" VARCHAR2(7),
  CONSTRAINT "FK_EmployeeInventory_Employee" FOREIGN KEY ("E_ID") REFERENCES "Employee" ("E_ID"),
  CONSTRAINT "FK_EmployeeInventory_Inventory" FOREIGN KEY ("Inv_ID") REFERENCES "Inventory" ("Inv_ID")
);

-- AssistantTreatment
CREATE TABLE "AssistantTreatment" (
  "Ass_ID" VARCHAR2(7),
  "Treat_ID" VARCHAR2(9),
  CONSTRAINT "FK_AssTreatment_Assistant" FOREIGN KEY ("Ass_ID") REFERENCES "Assistant" ("Ass_ID"),
  CONSTRAINT "FK_AssTreatment_Treatment" FOREIGN KEY ("Treat_ID") REFERENCES "Treatment" ("Treat_ID")
);

-- TechnicianMachine
CREATE TABLE "TechnicianMachine" (
  "T_ID" VARCHAR2(7),
  "Mach_ID" VARCHAR2(8),
  CONSTRAINT "FK_TechMachine_Technician" FOREIGN KEY ("T_ID") REFERENCES "Technician" ("T_ID"),
  CONSTRAINT "FK_TechMachine_Machine" FOREIGN KEY ("Mach_ID") REFERENCES "Machine" ("Mach_ID")
);

-- TransporterFacility
CREATE TABLE "TransporterFacility" (
  "Driver_ID" VARCHAR2(7),
  "Fac_ID" VARCHAR2(7),
  CONSTRAINT "FK_TransporterFac_Driver" FOREIGN KEY ("Driver_ID") REFERENCES "Transporter" ("Driver_ID"),
  CONSTRAINT "FK_TransporterFac_Facility" FOREIGN KEY ("Fac_ID") REFERENCES "Facility" ("Fac_ID")
);

-- PatientInventory
CREATE TABLE "PatientInventory" (
  "Pat_ID" VARCHAR2(7),
  "Inv_ID" VARCHAR2(7),
  CONSTRAINT "FK_PatientInventory_Patient" FOREIGN KEY ("Pat_ID") REFERENCES "Patient" ("Pat_ID"),
  CONSTRAINT "FK_PatientInventory_Inventory" FOREIGN KEY ("Inv_ID") REFERENCES "Inventory" ("Inv_ID")
);

-- BranchInventory
CREATE TABLE "BranchInventory" (
  "Br_ID" VARCHAR2(7),
  "Inv_ID" VARCHAR2(7),
  CONSTRAINT "FK_BranchInventory_Branch" FOREIGN KEY ("Br_ID") REFERENCES "Branch" ("Br_ID"),
  CONSTRAINT "FK_BranchInventory_Inventory" FOREIGN KEY ("Inv_ID") REFERENCES "Inventory" ("Inv_ID")
);

-- TreatmentInventory
CREATE TABLE "TreatmentInventory" (
  "Treat_ID" VARCHAR2(9),
  "Inv_ID" VARCHAR2(7),
  CONSTRAINT "FK_TreatInventory_Treatment" FOREIGN KEY ("Treat_ID") REFERENCES "Treatment" ("Treat_ID"),
  CONSTRAINT "FK_TreatInventory_Inventory" FOREIGN KEY ("Inv_ID") REFERENCES "Inventory" ("Inv_ID")
);

-- Table Insertion

-- Branch
INSERT ALL
INTO "Branch" ("Br_ID", "Br_Name", "Br_OpenDate", "Br_PhoneNum", "Br_Stat", "Br_FaxNum", "Br_Email", "Br_BankNum", "Br_RegNum", "Br_TotEmp") VALUES ('BR0001', 'Klinik Pergigian Azleen Ipoh', TO_DATE('2021-02-09', 'YYYY-MM-DD'), '0196453254', 'Open', '0555123456', 'azleen_ipoh@gmail.com', '1622729898', '105565352', 4)
INTO "Branch" ("Br_ID", "Br_Name", "Br_OpenDate", "Br_PhoneNum", "Br_Stat", "Br_FaxNum", "Br_Email", "Br_BankNum", "Br_RegNum", "Br_TotEmp") VALUES ('BR0002', 'Klinik Pergigian Azleen Seri Iskandar', TO_DATE('2021-08-14', 'YYYY-MM-DD'), '0165748835', 'Open', '0202134567', 'azleen_si@gmail.com', '3593690214', '105565353', 4)
INTO "Branch" ("Br_ID", "Br_Name", "Br_OpenDate", "Br_PhoneNum", "Br_Stat", "Br_FaxNum", "Br_Email", "Br_BankNum", "Br_RegNum", "Br_TotEmp") VALUES ('BR0003', 'Klinik Pergigian Azleen Kamunting', TO_DATE('2021-09-04', 'YYYY-MM-DD'), '0132546874', 'Open', '0213645879', 'azleen_kamun@gmail.com', '215455653452', '105565354', 4)
INTO "Branch" ("Br_ID", "Br_Name", "Br_OpenDate", "Br_PhoneNum", "Br_Stat", "Br_FaxNum", "Br_Email", "Br_BankNum", "Br_RegNum", "Br_TotEmp") VALUES ('BR0004', 'Klinik Pergigian Azleen Shah Alam', TO_DATE('2021-01-13', 'YYYY-MM-DD'), '0145744486', 'Open', '0586457956', 'azleen_sa@gmail.com', '162858656302', '105565355', 4)
INTO "Branch" ("Br_ID", "Br_Name", "Br_OpenDate", "Br_PhoneNum", "Br_Stat", "Br_FaxNum", "Br_Email", "Br_BankNum", "Br_RegNum", "Br_TotEmp") VALUES ('BR0005', 'Klinik Pergigian Azleen Sungai Buloh', TO_DATE('2021-08-25', 'YYYY-MM-DD'), '0133566684', 'Open', '0567489656', 'azleen_buloh@gmail.com', '412878696402', '105565356', 4)
INTO "Branch" ("Br_ID", "Br_Name", "Br_OpenDate", "Br_PhoneNum", "Br_Stat", "Br_FaxNum", "Br_Email", "Br_BankNum", "Br_RegNum", "Br_TotEmp") VALUES ('BR0006', 'Klinik Pergigian Azleen Keramat', TO_DATE('2021-11-11', 'YYYY-MM-DD'), '0153474885', 'Open', '0548354156', 'azleen_keramat@gmail.com', '5652524587', '105565357', 4)
INTO "Branch" ("Br_ID", "Br_Name", "Br_OpenDate", "Br_PhoneNum", "Br_Stat", "Br_FaxNum", "Br_Email", "Br_BankNum", "Br_RegNum", "Br_TotEmp") VALUES ('BR0007', 'Klinik Pergigian Azleen Puchong', TO_DATE('2021-02-13', 'YYYY-MM-DD'), '0177465341', 'Open', '0345685134', 'azleen_puchong@gmail.com', '3566588425', '105565358', 4)
INTO "Branch" ("Br_ID", "Br_Name", "Br_OpenDate", "Br_PhoneNum", "Br_Stat", "Br_FaxNum", "Br_Email", "Br_BankNum", "Br_RegNum", "Br_TotEmp") VALUES ('BR0008', 'Klinik Pergigian Azleen Damansara', TO_DATE('2021-07-21', 'YYYY-MM-DD'), '0154678945', 'Open', '0635585456', 'azleen_damansara@gmail.com', '3631259956', '105565359', 4)
INTO "Branch" ("Br_ID", "Br_Name", "Br_OpenDate", "Br_PhoneNum", "Br_Stat", "Br_FaxNum", "Br_Email", "Br_BankNum", "Br_RegNum", "Br_TotEmp") VALUES ('BR0009', 'Klinik Pergigian Azleen Klang', TO_DATE('2021-09-30', 'YYYY-MM-DD'), '0134215457', 'Open', '0357748685', 'azleen_klang@gmail.com', '133502403013', '105565360', 4)
INTO "Branch" ("Br_ID", "Br_Name", "Br_OpenDate", "Br_PhoneNum", "Br_Stat", "Br_FaxNum", "Br_Email", "Br_BankNum", "Br_RegNum", "Br_TotEmp") VALUES ('BR0010', 'Klinik Pergigian Azleen Putrajaya', TO_DATE('2021-08-31', 'YYYY-MM-DD'), '0146857457', 'Open', '0687445478', 'azleen_putra@gmail.com', '4586656967', '105565361', 4)
SELECT * FROM dual;


-- Patient
INSERT ALL
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00001', 'Kabilan', 'Viswanathan', 1, '0123654854', 'Police', TO_DATE('1996-07-05', 'YYYY-MM-DD'), 27, 'Indian', 'kabilan@gmail.com', NULL, '960705055613')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00002', 'Aiman Ariff', 'Jakfor', 1, '0136521254', 'Chef', TO_DATE('1991-07-05', 'YYYY-MM-DD'), 32, 'Malay', 'jakpo@gmail.com', NULL, '910705106459')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00003', 'Asim Fauzi', 'Kamarulzaman', 1, '0126548567', 'Soldier', TO_DATE('1988-07-05', 'YYYY-MM-DD'), 35, 'Malay', 'asim@gmail.com', 'Active smoker', '880705080647')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00004', 'Poorush', 'Maniaruse', 1, '0136548575', 'Lecturer', TO_DATE('1967-07-05', 'YYYY-MM-DD'), 56, 'Indian', 'purush@gmail.com', NULL, '670705073459')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00005', 'Cyrus Rhys', 'Ronny', 1, '0134586754', 'Businessman', TO_DATE('2002-07-05', 'YYYY-MM-DD'), 21, 'Kadazan', 'cyrus@gmail.com', NULL, '020705113521')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00006', 'Muqhriz Arman', 'Danial Amirul', 1, '0135687454', 'Gym Trainer', TO_DATE('2000-07-05', 'YYYY-MM-DD'), 23, 'Malay', 'arman@gmail.com', NULL, '000705100413')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00007', 'Arfian Rapalee', 'Afzani', 1, '0165485674', 'Commando', TO_DATE('1982-07-05', 'YYYY-MM-DD'), 41, 'Javanese', 'arfian@gmail.com', 'Active smoker', '820705123719')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00008', 'Zanita', 'Sahid Syamil', 1, '0145687458', 'Cleaner', TO_DATE('1987-07-05', 'YYYY-MM-DD'), 36, 'Iban', 'zanita@gmail.com', NULL, '870705023254')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00009', 'Nasarudin', 'Tarmizi', 1, '0156474594', 'Teacher', TO_DATE('1985-07-05', 'YYYY-MM-DD'), 38, 'Turks', 'nasa@gmail.com', NULL, '850705056547')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00010', 'Norasyikin', 'Rafaie', 1, '0136425867', 'Clerk', TO_DATE('1996-07-05', 'YYYY-MM-DD'), 27, 'Malay', 'syikin@gmail.com', NULL, '960705106540')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00011', 'Immamudien', 'Sabardin', 1, '0164958745', 'Motivator', TO_DATE('2004-07-05', 'YYYY-MM-DD'), 19, 'Indian', 'imam@gmail.com', NULL, '040705023319')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00012', 'Norsuhaili', 'Sapon', 1, '0135674895', 'Teacher', TO_DATE('1992-07-05', 'YYYY-MM-DD'), 31, 'Malay', 'suhaili@gmail.com', NULL, '920705093164')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00013', 'Norlyana', 'Ihsan', 1, '0133656542', 'Physician', TO_DATE('1977-07-05', 'YYYY-MM-DD'), 46, 'Malay', 'lyana@gmail.com', NULL, '770705071234')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00014', 'Afifah', 'Fahrul Amri', 1, '0135487452', 'Lab Assistant', TO_DATE('1981-07-05', 'YYYY-MM-DD'), 42, 'Malay', 'afifah@gmail.com', NULL, '810705101112')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00015', 'Shaifudin', 'Shariff', 1, '0144574685', 'Garbageman', TO_DATE('1990-07-05', 'YYYY-MM-DD'), 33, 'Minangkabau', 'fudin@gmail.com', 'Active smoker', '900705043489')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00016', 'Akma Hayati', 'Habib Khad', 1, '0154988787', 'Soldier', TO_DATE('1994-07-05', 'YYYY-MM-DD'), 29, 'Malay', 'akma@gmail.com', NULL, '940705077456')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00017', 'Nadzirah', 'Ali', 1, '0133366668', 'Psychologist', TO_DATE('1984-07-05', 'YYYY-MM-DD'), 39, 'Malay', 'nadzz@gmail.com', NULL, '840705103100')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00018', 'Rahayu', 'Imran', 1, '0164588787', 'Dancer', TO_DATE('2003-07-05', 'YYYY-MM-DD'), 20, 'Malay', 'ayu@gmail.com', NULL, '030705099716')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00019', 'Melvin Raaj', 'Bosee', 1, '0165988785', 'Farmer', TO_DATE('1966-07-05', 'YYYY-MM-DD'), 57, 'Indian', 'melvin@gmail.com', NULL, '660705043179')
INTO "Patient" ("Pat_ID", "Pat_FName", "Pat_LName", "Pat_VisitCount", "Pat_PhoneNum", "Pat_Occu", "Pat_DOB", "Pat_Age", "Pat_Race", "Pat_Email", "Pat_Remark", "Pat_NRIC")
VALUES ('PT00020', 'Harrishraj', 'Kumanan', 1, '0165497845', 'Athlete', TO_DATE('2005-07-05', 'YYYY-MM-DD'), 18, 'Indian', 'raj@gmail.com', NULL, '050705124563')
SELECT * FROM dual;

-- Employee
INSERT ALL
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00001', 'Alya', 'Mahmud', 2, 123456789, 'Maybank', '60123456789', 'Malaysian', '930423-02-3232', 'Degree', 'Full-time', 'BR0001')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00002', 'Rania', 'Azizi', 1, 987654321, 'CIMB', '60198765432', 'Malaysian', '940525-07-0994', 'Degree', 'Part-time', 'BR0002')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00003', 'Sofea', 'Harris', 3, 987654321, 'Maybank', '60162481351', 'Malaysian', '920711-02-8964', 'Degree', 'Full-time', 'BR0003')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00004', 'Zuhayra Nafeesa', 'Hijaz', 5, 456789123, 'CIMB', '60135792468', 'Malaysian', '961213-06-4544', 'Degree', 'Contract', 'BR0004')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00005', 'Iman Nadirah', 'Nazhan', 3, 987654321, 'CIMB', '60183692581', 'Malaysian', '990104-14-5648', 'Degree', 'Full-time', 'BR0005')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00006', 'Aisyah', 'Amin', 2, 369852147, 'Maybank', '60129876543', 'Malaysian', '970119-07-1552', 'Degree', 'Full-time', 'BR0006')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00007', 'Yasmin Sofea', 'Ilman', 1, 369258147, 'Maybank', '60174567891', 'Malaysian', '940817-09-3780', 'Degree', 'Part-time', 'BR0007')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00008', 'Jessiqa', 'Jamizan', 4, 987654321, 'CIMB', '60167418529', 'Malaysian', '890101-01-5496', 'Degree', 'Full-time', 'BR0008')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00009', 'Farah Nisrina', 'Faiq Zakir', 7, 159753468, 'CIMB', '60132589631', 'Malaysian', '920202-02-1178', 'Degree', 'Contract', 'BR0009')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00010', 'Umi Azimah', 'Rodzaly', 2, 369852147, 'Maybank', '60115975346', 'Malaysian', '830303-03-7620', 'Degree', 'Full-time', 'BR0010')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00011', 'Anidza', 'Buyong', 3, 852963741, 'Maybank', '60198765432', 'Malaysian', '990404-04-5084', 'Degree', 'Full-time', 'BR0001')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00012', 'Ruhani Norsham', 'Yusanizan', 1, 369852741, 'CIMB', '60123698521', 'Malaysian', '880505-05-5272', 'Degree', 'Part-time', 'BR0002')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00013', 'Angelecca', 'Ezra', 5, 159753468, 'CIMB', '60161234567', 'Malaysian', '810606-06-0412', 'Degree', 'Contract', 'BR0003')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00014', 'Daniel Haziq', 'Shayful', 2, 369852147, 'Maybank', '60139876543', 'Malaysian', '940707-07-0973', 'Degree', 'Full-time', 'BR0004')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00015', 'Ahmad Hanbali', 'Ismail', 3, 741852963, 'Maybank', '60183692581', 'Malaysian', '930808-08-7455', 'Degree', 'Full-time', 'BR0005')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00016', 'Hafiy Haziq', 'Azlami', 1, 369852741, 'CIMB', '60129876543', 'Malaysian', '870210-10-1429', 'Degree', 'Full-time', 'BR0006')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00017', 'Hasif Naufal', 'Azim', 4, 1234567890, 'CIMB', '60174567891', 'Malaysian', '920212-11-9867', 'Degree', 'Part-time', 'BR0007')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00018', 'Akmal', 'Shahrul', 2, 2345678901, 'CIMB', '60167418529', 'Malaysian', '880505-05-4751', 'Degree', 'Full-time', 'BR0008')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00019', 'Anwar', 'Hamizi', 5, 3456789012, 'CIMB', '60132589631', 'Malaysian', '890515-14-2593', 'Degree', 'Full-time', 'BR0009')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00020', 'Arvin Redza', 'Bostamam', 1, 4567890123, 'CIMB', '60115975346', 'Malaysian', '810606-06-3681', 'Degree', 'Part-time', 'BR0010')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00021', 'Eqhlas', 'Fuad', 3, 987654321, 'Maybank', '60198765432', 'Malaysian', '940707-07-3097', 'Degree', 'Contract', 'BR0001')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00022', 'Sofea Hani', 'Amir', 4, 2109876543, 'Maybank', '60123698521', 'Malaysian', '930808-08-3994', 'Degree', 'Part-time', 'BR0002')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00023', 'Irfan Daus', 'Hisam', 2, 4321098765, 'Maybank', '60161234567', 'Malaysian', '200909-09-7149', 'Degree', 'Part-time', 'BR0003')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00024', 'Naimi Huda', 'Hisyam', 1, 3210987654, 'Maybank', '60139876543', 'Malaysian', '870210-10-4632', 'Degree', 'Contract', 'BR0004')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00025', 'Aiman Syazwan', 'Syafifi', 3, 5678901234, 'CIMB', '60188529637', 'Malaysian', '920212-11-3895', 'Degree', 'Full-time', 'BR0005')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00026', 'Ku Danish', 'Mirza', 4, 1098765432, 'Maybank', '60123698527', 'Malaysian', '840313-12-7531', 'Degree', 'Full-time', 'BR0006')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00027', 'Che Ku', 'Che Ohm', 2, 6789012345, 'CIMB', '60174567891', 'Malaysian', '890515-14-7435', 'Degree', 'Full-time', 'BR0007')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00028', 'Hidayat Haqimi', 'Yuslan', 4, 7890123456, 'CIMB', '60167418529', 'Malaysian', '900101-05-3125', 'Degree', 'Part-time', 'BR0008')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00029', 'Dameer Iyad', 'Hazily', 2, 5432109876, 'Maybank', '60132589631', 'Malaysian', '910202-07-1473', 'Degree', 'Full-time', 'BR0009')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00030', 'Fadzilah Halayna', 'Nashuha', 3, 8901234567, 'CIMB', '60115975346', 'Malaysian', '960303-06-9530', 'Degree', 'Contract', 'BR0010')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00031', 'Putri Huda', 'Fahrinnor', 1, 9012345678, 'CIMB', '60198765432', 'Malaysian', '980404-01-8520', 'Degree', 'Full-time', 'BR0001')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00032', 'Ida Farhani', 'Johan Ibrahim', 5, 6543210987, 'Maybank', '60123698521', 'Malaysian', '870505-04-7328', 'Degree', 'Full-time', 'BR0002')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00033', 'Zawir', 'Hanafi', 2, 7654321098, 'Maybank', '60161234567', 'Malaysian', '900606-02-7641', 'SPM', 'Part-time', 'BR0003')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00034', 'Hassan Yazdani', 'Merhad', 3, 123456789, 'CIMB', '60139876543', 'Malaysian', '910707-02-1307', 'Degree', 'Full-time', 'BR0004')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00035', 'Danish Harith', 'Nizam', 1, 8765432109, 'Maybank', '60187418529', 'Malaysian', '940808-10-1675', 'Degree', 'Contract', 'BR0005')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00036', 'Muaz Najmi', 'Afifi Nizam', 4, 9876543210, 'Maybank', '60123698527', 'Malaysian', '960929-09-8657', 'SPM', 'Full-time', 'BR0006')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00037', 'Ariff Fadzrul', 'Amidon', 2, 2109876543, 'Maybank', '60174567891', 'Malaysian', '890127-01-3961', 'Degree', 'Full-time', 'BR0007')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00038', 'Damia Aniqah', 'Farizul', 2, 4321098765, 'Maybank', '60129941678', 'Malaysian', '910101-05-2966', 'Degree', 'Part-time', 'BR0008')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00039', 'Amani Syahirah', 'Wan', 4, 6543210987, 'Maybank', '60193681104', 'Malaysian', '920202-02-1222', 'SPM', 'Full-time', 'BR0009')
INTO "Employee" ("E_ID", "E_FName", "E_LName", "E_Tenure", "E_BankNum", "E_BankName", "E_PhoneNum", "E_Nation", "E_NRIC", "E_Qif", "E_Type", "Br_ID")
VALUES ('E00040', 'Amalin Balqis', 'Nuri', 3, 9876543210, 'Maybank', '60134657890', 'Malaysian', '930303-07-7138', 'Degree', 'Full-time', 'BR0010')
SELECT * FROM dual;

-- Assistant
INSERT ALL
INTO "Assistant" ("Ass_ID", "Ass_IT_Skill", "Ass_Fitness", "Cust_Serv_Skill", "Ass_Typ_Speed", "Med_Know", "First_Aid_Fund", "Ass_Ethic", "Ass_Lang_Spk", "Ass_Tech_Skill", "E_ID")
VALUES ('A00001', 'Proficient', 'Good', 'High', 'Fast', 'Basic', 'Yes', 'Strong', 'Bilingual', 'Moderate', 'E00031')
INTO "Assistant" ("Ass_ID", "Ass_IT_Skill", "Ass_Fitness", "Cust_Serv_Skill", "Ass_Typ_Speed", "Med_Know", "First_Aid_Fund", "Ass_Ethic", "Ass_Lang_Spk", "Ass_Tech_Skill", "E_ID")
VALUES ('A00002', 'Intermediate', 'Excellent', 'Moderate', 'Average', 'Basic', 'No', 'Strong', 'English', 'Advanced', 'E00032')
INTO "Assistant" ("Ass_ID", "Ass_IT_Skill", "Ass_Fitness", "Cust_Serv_Skill", "Ass_Typ_Speed", "Med_Know", "First_Aid_Fund", "Ass_Ethic", "Ass_Lang_Spk", "Ass_Tech_Skill", "E_ID")
VALUES ('A00003', 'Basic', 'Good', 'Low', 'Slow', 'Basic', 'Yes', 'Strong', 'Malay', 'Moderate', 'E00033')
INTO "Assistant" ("Ass_ID", "Ass_IT_Skill", "Ass_Fitness", "Cust_Serv_Skill", "Ass_Typ_Speed", "Med_Know", "First_Aid_Fund", "Ass_Ethic", "Ass_Lang_Spk", "Ass_Tech_Skill", "E_ID")
VALUES ('A00004', 'Advanced', 'Excellent', 'High', 'Fast', 'Advanced', 'Yes', 'Strong', 'Bilingual', 'Advanced', 'E00034')
INTO "Assistant" ("Ass_ID", "Ass_IT_Skill", "Ass_Fitness", "Cust_Serv_Skill", "Ass_Typ_Speed", "Med_Know", "First_Aid_Fund", "Ass_Ethic", "Ass_Lang_Spk", "Ass_Tech_Skill", "E_ID")
VALUES ('A00005', 'Intermediate', 'Good', 'Moderate', 'Average', 'Basic', 'Yes', 'Strong', 'English', 'Moderate', 'E00035')
INTO "Assistant" ("Ass_ID", "Ass_IT_Skill", "Ass_Fitness", "Cust_Serv_Skill", "Ass_Typ_Speed", "Med_Know", "First_Aid_Fund", "Ass_Ethic", "Ass_Lang_Spk", "Ass_Tech_Skill", "E_ID")
VALUES ('A00006', 'Basic', 'Excellent', 'Low', 'Slow', 'Basic', 'No', 'Strong', 'Malay', 'Basic', 'E00036')
INTO "Assistant" ("Ass_ID", "Ass_IT_Skill", "Ass_Fitness", "Cust_Serv_Skill", "Ass_Typ_Speed", "Med_Know", "First_Aid_Fund", "Ass_Ethic", "Ass_Lang_Spk", "Ass_Tech_Skill", "E_ID")
VALUES ('A00007', 'Proficient', 'Good', 'High', 'Fast', 'Advanced', 'Yes', 'Strong', 'Bilingual', 'Advanced', 'E00037')
INTO "Assistant" ("Ass_ID", "Ass_IT_Skill", "Ass_Fitness", "Cust_Serv_Skill", "Ass_Typ_Speed", "Med_Know", "First_Aid_Fund", "Ass_Ethic", "Ass_Lang_Spk", "Ass_Tech_Skill", "E_ID")
VALUES ('A00008', 'Intermediate', 'Excellent', 'Moderate', 'Average', 'Basic', 'Yes', 'Strong', 'English', 'Moderate', 'E00038')
INTO "Assistant" ("Ass_ID", "Ass_IT_Skill", "Ass_Fitness", "Cust_Serv_Skill", "Ass_Typ_Speed", "Med_Know", "First_Aid_Fund", "Ass_Ethic", "Ass_Lang_Spk", "Ass_Tech_Skill", "E_ID")
VALUES ('A00009', 'Basic', 'Good', 'Low', 'Slow', 'Basic', 'Yes', 'Strong', 'Malay', 'Basic', 'E00039')
INTO "Assistant" ("Ass_ID", "Ass_IT_Skill", "Ass_Fitness", "Cust_Serv_Skill", "Ass_Typ_Speed", "Med_Know", "First_Aid_Fund", "Ass_Ethic", "Ass_Lang_Spk", "Ass_Tech_Skill", "E_ID")
VALUES ('A00010', 'Advanced', 'Excellent', 'High', 'Fast', 'Advanced', 'Yes', 'Strong', 'Bilingual', 'Advanced', 'E00040')
SELECT * FROM dual;

-- Manager
INSERT ALL
INTO "Manager" ("M_ID", "M_Mng_Skill", "M_Time_Skill", "M_Lead_Skill", "M_Lang_Spk", "M_Crit_TS", "M_Wrt_Skill", "M_Comm_Skill", "M_Org_Skill", "M_Inter_Skill", "E_ID")
VALUES ('M00001', 'Moderate', 'Moderate', 'Excellent', 'Malay, English, Chinese', 'Intermediate', 'Intermediate', 'Intermediate', 'Moderate', 'Good', 'E00001')
INTO "Manager" ("M_ID", "M_Mng_Skill", "M_Time_Skill", "M_Lead_Skill", "M_Lang_Spk", "M_Crit_TS", "M_Wrt_Skill", "M_Comm_Skill", "M_Org_Skill", "M_Inter_Skill", "E_ID")
VALUES ('M00002', 'Moderate', 'Excellent', 'Excellent', 'Malay, English', 'Excellent', 'Advance', 'Excellent', 'Excellent', 'Excellent', 'E00002')
INTO "Manager" ("M_ID", "M_Mng_Skill", "M_Time_Skill", "M_Lead_Skill", "M_Lang_Spk", "M_Crit_TS", "M_Wrt_Skill", "M_Comm_Skill", "M_Org_Skill", "M_Inter_Skill", "E_ID")
VALUES ('M00003', 'Excellent', 'Excellent', 'Excellent', 'English, Chinese', 'Moderate', 'Intermediate', 'Excellent', 'Excellent', 'Excellent', 'E00003')
INTO "Manager" ("M_ID", "M_Mng_Skill", "M_Time_Skill", "M_Lead_Skill", "M_Lang_Spk", "M_Crit_TS", "M_Wrt_Skill", "M_Comm_Skill", "M_Org_Skill", "M_Inter_Skill", "E_ID")
VALUES ('M00004', 'Excellent', 'Moderate', 'Moderate', 'Malay, English', 'Excellent', 'Intermediate', 'Intermediate', 'Moderate', 'Intermediate', 'E00004')
INTO "Manager" ("M_ID", "M_Mng_Skill", "M_Time_Skill", "M_Lead_Skill", "M_Lang_Spk", "M_Crit_TS", "M_Wrt_Skill", "M_Comm_Skill", "M_Org_Skill", "M_Inter_Skill", "E_ID")
VALUES ('M00005', 'Moderate', 'Moderate', 'Moderate', 'Malay, English, Tamil', 'Moderate', 'Advance', 'Intermediate', 'Moderate', 'Intermediate', 'E00005')
INTO "Manager" ("M_ID", "M_Mng_Skill", "M_Time_Skill", "M_Lead_Skill", "M_Lang_Spk", "M_Crit_TS", "M_Wrt_Skill", "M_Comm_Skill", "M_Org_Skill", "M_Inter_Skill", "E_ID")
VALUES ('M00006', 'Excellent', 'Excellent', 'Moderate', 'Malay', 'Moderate', 'Intermediate', 'Intermediate', 'Excellent', 'Good', 'E00006')
INTO "Manager" ("M_ID", "M_Mng_Skill", "M_Time_Skill", "M_Lead_Skill", "M_Lang_Spk", "M_Crit_TS", "M_Wrt_Skill", "M_Comm_Skill", "M_Org_Skill", "M_Inter_Skill", "E_ID")
VALUES ('M00007', 'Moderate', 'Moderate', 'Excellent', 'English, Tamil', 'Excellent', 'Intermediate', 'Excellent', 'Moderate', 'Good', 'E00007')
INTO "Manager" ("M_ID", "M_Mng_Skill", "M_Time_Skill", "M_Lead_Skill", "M_Lang_Spk", "M_Crit_TS", "M_Wrt_Skill", "M_Comm_Skill", "M_Org_Skill", "M_Inter_Skill", "E_ID")
VALUES ('M00008', 'Moderate', 'Excellent', 'Moderate', 'English', 'Excellent', 'Intermediate', 'Intermediate', 'Moderate', 'Excellent', 'E00008')
INTO "Manager" ("M_ID", "M_Mng_Skill", "M_Time_Skill", "M_Lead_Skill", "M_Lang_Spk", "M_Crit_TS", "M_Wrt_Skill", "M_Comm_Skill", "M_Org_Skill", "M_Inter_Skill", "E_ID")
VALUES ('M00009', 'Excellent', 'Moderate', 'Moderate', 'Malay, English', 'Moderate', 'Advance', 'Excellent', 'Excellent', 'Intermediate', 'E00009')
INTO "Manager" ("M_ID", "M_Mng_Skill", "M_Time_Skill", "M_Lead_Skill", "M_Lang_Spk", "M_Crit_TS", "M_Wrt_Skill", "M_Comm_Skill", "M_Org_Skill", "M_Inter_Skill", "E_ID")
VALUES ('M00010', 'Excellent', 'Excellent', 'Moderate', 'Malay, English', 'Excellent', 'Advance', 'Intermediate', 'Moderate', 'Good', 'E00010')
SELECT * FROM dual;

-- Dentist
INSERT ALL
INTO "Dentist" ("D_ID", "D_Special", "D_Membership", "D_LicenseNum", "D_Availability", "D_Li_ExpDate", "D_Recognitions", "Patient_Satisf", "D_Diag_Skill", "D_Exp", "E_ID", "Lab_ID") VALUES ('D00001', 'Endodontics', 'Member', 'MAL678901', 'Yes', TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'Outstanding Service Award', 'Excellent', 'Advanced', '10', 'E00021', 'L00001')
INTO "Dentist" ("D_ID", "D_Special", "D_Membership", "D_LicenseNum", "D_Availability", "D_Li_ExpDate", "D_Recognitions", "Patient_Satisf", "D_Diag_Skill", "D_Exp", "E_ID", "Lab_ID") VALUES ('D00002', 'Oral Pathology', 'Member', 'MAL789012', 'Yes', TO_DATE('2027-07-02', 'YYYY-MM-DD'), 'Excellence in Patient Care Award', 'Good', 'Intermediate', '3', 'E00022', 'L00002')
INTO "Dentist" ("D_ID", "D_Special", "D_Membership", "D_LicenseNum", "D_Availability", "D_Li_ExpDate", "D_Recognitions", "Patient_Satisf", "D_Diag_Skill", "D_Exp", "E_ID", "Lab_ID") VALUES ('D00003', 'Oral Surgery', 'Member', 'MAL890123', 'Yes', TO_DATE('2030-10-10', 'YYYY-MM-DD'), 'Best Dental Clinic of the Year Award', 'Excellent', 'Advanced', '5', 'E00023', 'L00003')
INTO "Dentist" ("D_ID", "D_Special", "D_Membership", "D_LicenseNum", "D_Availability", "D_Li_ExpDate", "D_Recognitions", "Patient_Satisf", "D_Diag_Skill", "D_Exp", "E_ID", "Lab_ID") VALUES ('D00004', 'Dentofacial Orthopedics', 'Member', 'MAL901234', 'Yes', TO_DATE('2029-08-04', 'YYYY-MM-DD'), 'Certificate of Achievement in Advanced Dentistry', 'Excellent', 'Advanced', '4', 'E00024', 'L00004')
INTO "Dentist" ("D_ID", "D_Special", "D_Membership", "D_LicenseNum", "D_Availability", "D_Li_ExpDate", "D_Recognitions", "Patient_Satisf", "D_Diag_Skill", "D_Exp", "E_ID", "Lab_ID") VALUES ('D00005', 'Periodontics', 'Member', 'MAL012345', 'Yes', TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'Recognized for Contributions to Dental Research', 'Excellent', 'Beginner', '3', 'E00025', 'L00005')
INTO "Dentist" ("D_ID", "D_Special", "D_Membership", "D_LicenseNum", "D_Availability", "D_Li_ExpDate", "D_Recognitions", "Patient_Satisf", "D_Diag_Skill", "D_Exp", "E_ID", "Lab_ID") VALUES ('D00006', 'Endodontics', 'Member', 'MAL123456', 'Yes', TO_DATE('2026-01-05', 'YYYY-MM-DD'), 'Fellowship in Dental Implantology', 'Good', 'Intermediate', '7', 'E00026', 'L00006')
INTO "Dentist" ("D_ID", "D_Special", "D_Membership", "D_LicenseNum", "D_Availability", "D_Li_ExpDate", "D_Recognitions", "Patient_Satisf", "D_Diag_Skill", "D_Exp", "E_ID", "Lab_ID") VALUES ('D00007', 'Pediatric', 'Member', 'MAL234567', 'Yes', TO_DATE('2025-10-26', 'YYYY-MM-DD'), 'Certificate of Excellence in Cosmetic Dentistry', 'Good', 'Intermediate', '2', 'E00027', 'L00007')
INTO "Dentist" ("D_ID", "D_Special", "D_Membership", "D_LicenseNum", "D_Availability", "D_Li_ExpDate", "D_Recognitions", "Patient_Satisf", "D_Diag_Skill", "D_Exp", "E_ID", "Lab_ID") VALUES ('D00008', 'General', 'Member', 'MAL345678', 'Yes', TO_DATE('2023-12-31', 'YYYY-MM-DD'), 'Award for Exceptional Leadership in Dentistry', 'Good', 'Intermediate', '2', 'E00028', 'L00008')
INTO "Dentist" ("D_ID", "D_Special", "D_Membership", "D_LicenseNum", "D_Availability", "D_Li_ExpDate", "D_Recognitions", "Patient_Satisf", "D_Diag_Skill", "D_Exp", "E_ID", "Lab_ID") VALUES ('D00009', 'General', 'Member', 'MAL456789', 'Yes', TO_DATE('2024-04-04', 'YYYY-MM-DD'), 'Certification in Endodontics', 'Excellent', 'Advanced', '5', 'E00029', 'L00009')
INTO "Dentist" ("D_ID", "D_Special", "D_Membership", "D_LicenseNum", "D_Availability", "D_Li_ExpDate", "D_Recognitions", "Patient_Satisf", "D_Diag_Skill", "D_Exp", "E_ID", "Lab_ID") VALUES ('D00010', 'General', 'Member', 'MAL567890', 'Yes', TO_DATE('2028-07-05', 'YYYY-MM-DD'), 'Achievement Award in Oral Surgery', 'Good', 'Advanced', '6', 'E00030', 'L00010')
SELECT * FROM dual;

-- Technician
INSERT ALL
INTO "Technician" ("T_ID", "T_Machine_Prof", "T_Maintain_Skill", "T_Teamwork", "T_Fitness", "T_Cert", "T_Tech_Skill", "T_Design_Skill", "T_Safe_Aware", "T_Quality_Focus", "E_ID", "Lab_ID")
VALUES ('T00001', 'Excellent', 'Moderate', 'Intermediate', 'Very Fit', 'Yes', 'Excellent', 'Moderate', 'Excellent', 'High', 'E00011', 'L00001')
INTO "Technician" ("T_ID", "T_Machine_Prof", "T_Maintain_Skill", "T_Teamwork", "T_Fitness", "T_Cert", "T_Tech_Skill", "T_Design_Skill", "T_Safe_Aware", "T_Quality_Focus", "E_ID", "Lab_ID")
VALUES ('T00002', 'Moderate', 'Moderate', 'Intermediate', 'Moderate', 'Yes', 'Excellent', 'Excellent', 'Excellent', 'Low', 'E00012', 'L00002')
INTO "Technician" ("T_ID", "T_Machine_Prof", "T_Maintain_Skill", "T_Teamwork", "T_Fitness", "T_Cert", "T_Tech_Skill", "T_Design_Skill", "T_Safe_Aware", "T_Quality_Focus", "E_ID", "Lab_ID")
VALUES ('T00003', 'Beginner', 'Excellent', 'Excellent', 'Very Fit', 'Yes', 'Excellent', 'Beginner', 'Excellent', 'High', 'E00013', 'L00003')
INTO "Technician" ("T_ID", "T_Machine_Prof", "T_Maintain_Skill", "T_Teamwork", "T_Fitness", "T_Cert", "T_Tech_Skill", "T_Design_Skill", "T_Safe_Aware", "T_Quality_Focus", "E_ID", "Lab_ID")
VALUES ('T00004', 'Excellent', 'Moderate', 'Excellent', 'Very Fit', 'Yes', 'Excellent', 'Excellent', 'Excellent', 'High', 'E00014', 'L00004')
INTO "Technician" ("T_ID", "T_Machine_Prof", "T_Maintain_Skill", "T_Teamwork", "T_Fitness", "T_Cert", "T_Tech_Skill", "T_Design_Skill", "T_Safe_Aware", "T_Quality_Focus", "E_ID", "Lab_ID")
VALUES ('T00005', 'Excellent', 'Beginner', 'Intermediate', 'Very Fit', 'Yes', 'Excellent', 'Excellent', 'Excellent', 'Intermediate', 'E00015', 'L00005')
INTO "Technician" ("T_ID", "T_Machine_Prof", "T_Maintain_Skill", "T_Teamwork", "T_Fitness", "T_Cert", "T_Tech_Skill", "T_Design_Skill", "T_Safe_Aware", "T_Quality_Focus", "E_ID", "Lab_ID")
VALUES ('T00006', 'Moderate', 'Excellent', 'Intermediate', 'Moderate', 'Yes', 'Moderate', 'Moderate', 'Excellent', 'High', 'E00016', 'L00006')
INTO "Technician" ("T_ID", "T_Machine_Prof", "T_Maintain_Skill", "T_Teamwork", "T_Fitness", "T_Cert", "T_Tech_Skill", "T_Design_Skill", "T_Safe_Aware", "T_Quality_Focus", "E_ID", "Lab_ID")
VALUES ('T00007', 'Moderate', 'Moderate', 'Excellent', 'Moderate', 'Yes', 'Moderate', 'Moderate', 'Excellent', 'High', 'E00017', 'L00007')
INTO "Technician" ("T_ID", "T_Machine_Prof", "T_Maintain_Skill", "T_Teamwork", "T_Fitness", "T_Cert", "T_Tech_Skill", "T_Design_Skill", "T_Safe_Aware", "T_Quality_Focus", "E_ID", "Lab_ID")
VALUES ('T00008', 'Moderate', 'Moderate', 'Excellent', 'Very Fit', 'Yes', 'Excellent', 'Moderate', 'Excellent', 'Intermediate', 'E00018', 'L00008')
INTO "Technician" ("T_ID", "T_Machine_Prof", "T_Maintain_Skill", "T_Teamwork", "T_Fitness", "T_Cert", "T_Tech_Skill", "T_Design_Skill", "T_Safe_Aware", "T_Quality_Focus", "E_ID", "Lab_ID")
VALUES ('T00009', 'Moderate', 'Moderate', 'Excellent', 'Moderate', 'Yes', 'Moderate', 'Excellent', 'Excellent', 'High', 'E00019', 'L00009')
INTO "Technician" ("T_ID", "T_Machine_Prof", "T_Maintain_Skill", "T_Teamwork", "T_Fitness", "T_Cert", "T_Tech_Skill", "T_Design_Skill", "T_Safe_Aware", "T_Quality_Focus", "E_ID", "Lab_ID")
VALUES ('T00010', 'Excellent', 'Moderate', 'Excellent', 'Very Fit', 'Yes', 'Moderate', 'Excellent', 'Excellent', 'Intermediate', 'E00020', 'L00010')
SELECT * FROM dual;

-- Laboratory
INSERT ALL
INTO "Laboratory" ("Lab_ID", "Lab_Email", "Lab_PhoneNum", "Lab_TurnAroundTime", "Tech_Count", "Lab_Fee", "Cert_Stat", "Lab_Stat", "Ship_Method", "Qlty_Ctrl_Measure", "Br_ID") VALUES ('L00001', 'lab.azleen_ipoh@gmail.com', '60123456789', '2 days', 5, 250.00, 'Valid', 'Active', 'Delivery', 'Effective', 'BR0001')
INTO "Laboratory" ("Lab_ID", "Lab_Email", "Lab_PhoneNum", "Lab_TurnAroundTime", "Tech_Count", "Lab_Fee", "Cert_Stat", "Lab_Stat", "Ship_Method", "Qlty_Ctrl_Measure", "Br_ID") VALUES ('L00002', 'lab.azleen_si@gmail.com', '60198765432', '3 days', 3, 250.00, 'Valid', 'Active', 'Delivery', 'Effective', 'BR0002')
INTO "Laboratory" ("Lab_ID", "Lab_Email", "Lab_PhoneNum", "Lab_TurnAroundTime", "Tech_Count", "Lab_Fee", "Cert_Stat", "Lab_Stat", "Ship_Method", "Qlty_Ctrl_Measure", "Br_ID") VALUES ('L00003', 'lab.azleen_kamun@gmail.com', '60162481357', '1 day', 4, 250.00, 'Valid', 'Active', 'Delivery', 'Effective', 'BR0003')
INTO "Laboratory" ("Lab_ID", "Lab_Email", "Lab_PhoneNum", "Lab_TurnAroundTime", "Tech_Count", "Lab_Fee", "Cert_Stat", "Lab_Stat", "Ship_Method", "Qlty_Ctrl_Measure", "Br_ID") VALUES ('L00004', 'lab.azleen_sa@gmail.com', '60135792468', '2 days', 2, 250.00, 'Expired', 'Inactive', 'Delivery', 'Effective', 'BR0004')
INTO "Laboratory" ("Lab_ID", "Lab_Email", "Lab_PhoneNum", "Lab_TurnAroundTime", "Tech_Count", "Lab_Fee", "Cert_Stat", "Lab_Stat", "Ship_Method", "Qlty_Ctrl_Measure", "Br_ID") VALUES ('L00005', 'lab.azleen_buloh@gmail.com', '60112345678', '3 days', 6, 250.00, 'Valid', 'Active', 'Delivery', 'Effective', 'BR0005')
INTO "Laboratory" ("Lab_ID", "Lab_Email", "Lab_PhoneNum", "Lab_TurnAroundTime", "Tech_Count", "Lab_Fee", "Cert_Stat", "Lab_Stat", "Ship_Method", "Qlty_Ctrl_Measure", "Br_ID") VALUES ('L00006', 'lab.azleen_keramat@gmail.com', '60167890123', '2 days', 4, 250.00, 'Valid', 'Active', 'Delivery', 'Effective', 'BR0006')
INTO "Laboratory" ("Lab_ID", "Lab_Email", "Lab_PhoneNum", "Lab_TurnAroundTime", "Tech_Count", "Lab_Fee", "Cert_Stat", "Lab_Stat", "Ship_Method", "Qlty_Ctrl_Measure", "Br_ID") VALUES ('L00007', 'lab.azleen_puchong@gmail.com', '60112233445', '3 days', 6, 250.00, 'Valid', 'Active', 'Delivery', 'Effective', 'BR0007')
INTO "Laboratory" ("Lab_ID", "Lab_Email", "Lab_PhoneNum", "Lab_TurnAroundTime", "Tech_Count", "Lab_Fee", "Cert_Stat", "Lab_Stat", "Ship_Method", "Qlty_Ctrl_Measure", "Br_ID") VALUES ('L00008', 'lab.azleen_damansara@gmail.com', '60198765432', '1 day', 2, 250.00, 'Valid', 'Active', 'Delivery', 'Effective', 'BR0008')
INTO "Laboratory" ("Lab_ID", "Lab_Email", "Lab_PhoneNum", "Lab_TurnAroundTime", "Tech_Count", "Lab_Fee", "Cert_Stat", "Lab_Stat", "Ship_Method", "Qlty_Ctrl_Measure", "Br_ID") VALUES ('L00009', 'lab.azleen_klang@gmail.com', '60176543210', '2 days', 5, 250.00, 'Valid', 'Active', 'Delivery', 'Effective', 'BR0009')
INTO "Laboratory" ("Lab_ID", "Lab_Email", "Lab_PhoneNum", "Lab_TurnAroundTime", "Tech_Count", "Lab_Fee", "Cert_Stat", "Lab_Stat", "Ship_Method", "Qlty_Ctrl_Measure", "Br_ID") VALUES ('L00010', 'lab.azleen_putra@gmail.com', '60123456789', '3 days', 3, 250.00, 'Valid', 'Active', 'Delivery', 'Effective', 'BR0010')
SELECT * FROM dual;

-- SocMed
INSERT ALL
INTO "SocMedia" ("SM_ID", "SM_Platform", "SM_Username", "SM_Description", "SM_Password", "SM_VerificationStatus", "SM_FollowCount", "SM_DateCreate", "SM_PostCount", "SM_EmailLinked", "Ass_ID", "Br_ID")
VALUES ('SM0001', 'Instagram', 'kliniknorazleen_ipoh', 'Operation hours : Monday - Friday: 10.00 am - 6.00pm Saturday: 10.00 am - 5.00 pm', '123azleenipoh', 'verified', 1250, TO_DATE('2016-02-09', 'YYYY-MM-DD'), 45, 'azleen_ipoh@gmail.com', 'A00001', 'BR0001')
INTO "SocMedia" ("SM_ID", "SM_Platform", "SM_Username", "SM_Description", "SM_Password", "SM_VerificationStatus", "SM_FollowCount", "SM_DateCreate", "SM_PostCount", "SM_EmailLinked", "Ass_ID", "Br_ID")
VALUES ('SM0002', 'Instagram', 'kliniknorazleen_si', 'Operation hours : Monday - Friday: 10.00 am - 6.00pm Saturday: 10.00 am - 5.00 pm', '123azleensi', 'verified', 2544, TO_DATE('2017-08-14', 'YYYY-MM-DD'), 36, 'azleen_si@gmail.com', 'A00002', 'BR0002')
INTO "SocMedia" ("SM_ID", "SM_Platform", "SM_Username", "SM_Description", "SM_Password", "SM_VerificationStatus", "SM_FollowCount", "SM_DateCreate", "SM_PostCount", "SM_EmailLinked", "Ass_ID", "Br_ID")
VALUES ('SM0003', 'Instagram', 'kliniknorazleen_kamunting', 'Operation hours : Monday - Friday: 10.00 am - 6.00pm Saturday: 10.00 am - 5.00 pm', '123azleenkamun', 'verified', 898, TO_DATE('2017-09-04', 'YYYY-MM-DD'), 28, 'azleen_kamun@gmail.com', 'A00003', 'BR0003')
INTO "SocMedia" ("SM_ID", "SM_Platform", "SM_Username", "SM_Description", "SM_Password", "SM_VerificationStatus", "SM_FollowCount", "SM_DateCreate", "SM_PostCount", "SM_EmailLinked", "Ass_ID", "Br_ID")
VALUES ('SM0004', 'Instagram', 'kliniknorazleen_sa', 'Operation hours : Monday - Friday: 10.00 am - 6.00pm Saturday: 10.00 am - 5.00 pm', '123azleensa', 'verified', 365, TO_DATE('2018-01-13', 'YYYY-MM-DD'), 33, 'azleen_sa@gmail.com', 'A00004', 'BR0004')
INTO "SocMedia" ("SM_ID", "SM_Platform", "SM_Username", "SM_Description", "SM_Password", "SM_VerificationStatus", "SM_FollowCount", "SM_DateCreate", "SM_PostCount", "SM_EmailLinked", "Ass_ID", "Br_ID")
VALUES ('SM0005', 'Instagram', 'kliniknorazleen_sgbuloh', 'Operation hours : Monday - Friday: 10.00 am - 6.00pm Saturday: 10.00 am - 5.00 pm', '123azleenbuloh', 'verified', 123, TO_DATE('2018-08-25', 'YYYY-MM-DD'), 21, 'azleen_buloh@gmail.com', 'A00005', 'BR0005')
INTO "SocMedia" ("SM_ID", "SM_Platform", "SM_Username", "SM_Description", "SM_Password", "SM_VerificationStatus", "SM_FollowCount", "SM_DateCreate", "SM_PostCount", "SM_EmailLinked", "Ass_ID", "Br_ID")
VALUES ('SM0006', 'Instagram', 'kliniknorazleen_keramat', 'Operation hours : Monday - Friday: 10.00 am - 6.00pm Saturday: 10.00 am - 5.00 pm', '123azleenkeramat', 'verified', 446, TO_DATE('2018-11-11', 'YYYY-MM-DD'), 18, 'azleen_keramat@gmail.com', 'A00006', 'BR0006')
INTO "SocMedia" ("SM_ID", "SM_Platform", "SM_Username", "SM_Description", "SM_Password", "SM_VerificationStatus", "SM_FollowCount", "SM_DateCreate", "SM_PostCount", "SM_EmailLinked", "Ass_ID", "Br_ID")
VALUES ('SM0007', 'Instagram', 'kliniknorazleen_puchong', 'Operation hours : Monday - Friday: 10.00 am - 6.00pm Saturday: 10.00 am - 5.00 pm', '123azleenpuchong', 'verified', 587, TO_DATE('2019-02-13', 'YYYY-MM-DD'), 20, 'azleen_puchong@gmail.com', 'A00007', 'BR0007')
INTO "SocMedia" ("SM_ID", "SM_Platform", "SM_Username", "SM_Description", "SM_Password", "SM_VerificationStatus", "SM_FollowCount", "SM_DateCreate", "SM_PostCount", "SM_EmailLinked", "Ass_ID", "Br_ID")
VALUES ('SM0008', 'Instagram', 'kliniknorazleen_damansara', 'Operation hours : Monday - Friday: 10.00 am - 6.00pm Saturday: 10.00 am - 5.00 pm', '123azleendaman', 'verified', 865, TO_DATE('2019-07-21', 'YYYY-MM-DD'), 21, 'azleen_damansara@gmail.com', 'A00008', 'BR0008')
INTO "SocMedia" ("SM_ID", "SM_Platform", "SM_Username", "SM_Description", "SM_Password", "SM_VerificationStatus", "SM_FollowCount", "SM_DateCreate", "SM_PostCount", "SM_EmailLinked", "Ass_ID", "Br_ID")
VALUES ('SM0009', 'Instagram', 'kliniknorazleen_klang', 'Operation hours : Monday - Friday: 10.00 am - 6.00pm Saturday: 10.00 am - 5.00 pm', '123azleenklang', 'verified', 225, TO_DATE('2020-09-30', 'YYYY-MM-DD'), 15, 'azleen_klang@gmail.com', 'A00009', 'BR0009')
INTO "SocMedia" ("SM_ID", "SM_Platform", "SM_Username", "SM_Description", "SM_Password", "SM_VerificationStatus", "SM_FollowCount", "SM_DateCreate", "SM_PostCount", "SM_EmailLinked", "Ass_ID", "Br_ID")
VALUES ('SM0010', 'Instagram', 'kliniknorazleen_putra', 'Operation hours : Monday - Friday: 10.00 am - 6.00pm Saturday: 10.00 am - 5.00 pm', '123azleenputra', 'verified', 183, TO_DATE('2021-08-31', 'YYYY-MM-DD'), 9, 'azleen_putra@gmail.com', 'A00010', 'BR0010')
SELECT * FROM dual;

-- Salary
INSERT ALL
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00001', 500, 160, 10, 30, 0.11, 'Bank Transfer', 0.25, 150, 4500, 'TRAN0051', 'E00001')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00002', 300, 144, 8, 35, 0.11, 'Bank Transfer', 0.25, 100, 3900, 'TRAN0052', 'E00002')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00003', 400, 168, 12, 32, 0.11, 'Bank Transfer', 0.25, 120, 4800, 'TRAN0053', 'E00003')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00004', 200, 152, 6, 28, 0.11, 'Bank Transfer', 0.25, 90, 3600, 'TRAN0054', 'E00004')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00005', 600, 176, 14, 33, 0.11, 'Bank Transfer', 0.25, 180, 5400, 'TRAN0055', 'E00005')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00006', 500, 160, 10, 30, 0.11, 'Bank Transfer', 0.25, 150, 4500, 'TRAN0056', 'E00006')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00007', 300, 144, 8, 35, 0.11, 'Bank Transfer', 0.25, 100, 3900, 'TRAN0057', 'E00007')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00008', 400, 168, 12, 32, 0.11, 'Bank Transfer', 0.25, 120, 4800, 'TRAN0058', 'E00008')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00009', 200, 152, 6, 28, 0.11, 'Bank Transfer', 0.25, 90, 3600, 'TRAN0059', 'E00009')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00010', 600, 176, 14, 33, 0.11, 'Bank Transfer', 0.25, 180, 5400, 'TRAN0060', 'E00010')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00011', 250, 160, 9, 31, 0.11, 'Bank Transfer', 0.25, 140, 4150, 'TRAN0061', 'E00011')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00012', 350, 152, 7, 29, 0.11, 'Bank Transfer', 0.25, 100, 3750, 'TRAN0062', 'E00012')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00013', 450, 168, 10, 34, 0.11, 'Bank Transfer', 0.25, 110, 4250, 'TRAN0063', 'E00013')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00014', 150, 144, 5, 26, 0.11, 'Bank Transfer', 0.25, 80, 3100, 'TRAN0064', 'E00014')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00015', 550, 176, 12, 32, 0.11, 'Bank Transfer', 0.25, 160, 4950, 'TRAN0065', 'E00015')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00016', 400, 160, 8, 30, 0.11, 'Bank Transfer', 0.25, 100, 3800, 'TRAN0066', 'E00016')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00017', 300, 144, 6, 27, 0.11, 'Bank Transfer', 0.25, 90, 3400, 'TRAN0067', 'E00017')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00018', 250, 168, 9, 31, 0.11, 'Bank Transfer', 0.25, 110, 3750, 'TRAN0068', 'E00018')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00019', 600, 152, 14, 35, 0.11, 'Bank Transfer', 0.25, 180, 5350, 'TRAN0069', 'E00019')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00020', 350, 176, 7, 29, 0.11, 'Bank Transfer', 0.25, 100, 3550, 'TRAN0070', 'E00020')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00021', 450, 160, 10, 33, 0.11, 'Bank Transfer', 0.25, 120, 4250, 'TRAN0071', 'E00021')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00022', 150, 144, 5, 26, 0.11, 'Bank Transfer', 0.25, 80, 2950, 'TRAN0072', 'E00022')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00023', 550, 168, 12, 32, 0.11, 'Bank Transfer', 0.25, 150, 4700, 'TRAN0073', 'E00023')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00024', 400, 160, 8, 31, 0.11, 'Bank Transfer', 0.25, 110, 3850, 'TRAN0074', 'E00024')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00025', 300, 152, 6, 28, 0.11, 'Bank Transfer', 0.25, 90, 3450, 'TRAN0075', 'E00025')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00026', 250, 160, 9, 30, 0.11, 'Bank Transfer', 0.25, 120, 3650, 'TRAN0076', 'E00026')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00027', 350, 144, 7, 29, 0.11, 'Bank Transfer', 0.25, 90, 3250, 'TRAN0077', 'E00027')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00028', 450, 168, 10, 32, 0.11, 'Bank Transfer', 0.25, 100, 3950, 'TRAN0078', 'E00028')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00029', 150, 152, 5, 26, 0.11, 'Bank Transfer', 0.25, 70, 2850, 'TRAN0079', 'E00029')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00030', 550, 176, 12, 34, 0.11, 'Bank Transfer', 0.25, 150, 4650, 'TRAN0080', 'E00030')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00031', 400, 160, 8, 31, 0.11, 'Bank Transfer', 0.25, 100, 3750, 'TRAN0081', 'E00031')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00032', 300, 144, 6, 28, 0.11, 'Bank Transfer', 0.25, 80, 3350, 'TRAN0082', 'E00032')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00033', 250, 168, 9, 30, 0.11, 'Bank Transfer', 0.25, 110, 3550, 'TRAN0083', 'E00033')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00034', 350, 152, 7, 29, 0.11, 'Bank Transfer', 0.25, 90, 3150, 'TRAN0084', 'E00034')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00035', 450, 176, 10, 33, 0.11, 'Bank Transfer', 0.25, 100, 3850, 'TRAN0085', 'E00035')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00036', 150, 160, 5, 26, 0.11, 'Bank Transfer', 0.25, 70, 2750, 'TRAN0086', 'E00036')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00037', 550, 144, 12, 34, 0.11, 'Bank Transfer', 0.25, 150, 4450, 'TRAN0087', 'E00037')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00038', 400, 168, 8, 31, 0.11, 'Bank Transfer', 0.25, 100, 3550, 'TRAN0088', 'E00038')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00039', 300, 152, 6, 28, 0.11, 'Bank Transfer', 0.25, 80, 3150, 'TRAN0089', 'E00039')
INTO "Salary" ("Sal_ID", "Sal_Bonus", "Sal_TotHour_Work", "Sal_OT", "Sal_Rate_Hour", "Sal_EPF", "Sal_Pay_Method", "Sal_Tax_Percent", "Sal_TotDeduct", "TotSalary", "Tran_ID", "E_ID") VALUES ('SAL00040', 250, 176, 9, 30, 0.11, 'Bank Transfer', 0.25, 110, 3450, 'TRAN0090', 'E00040')
SELECT * FROM dual;

-- Transaction
INSERT ALL
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0001', 'SUCCESSFUL', TO_DATE('2021-10-08', 'YYYY-MM-DD'), 'Medicine Purchase', 'Friday', 'REF123456', 'Fund Transfer', 'Online Banking', 'No', 1700, 'S00002', 'M00001', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0002', 'SUCCESSFUL', TO_DATE('2021-05-02', 'YYYY-MM-DD'), 'Medicine Purchase', 'Sunday', 'REF234567', 'Fund Transfer', 'Online Banking', 'No', 1500, 'S00005', 'M00002', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0003', 'SUCCESSFUL', TO_DATE('2021-07-15', 'YYYY-MM-DD'), 'Medicine Purchase', 'Thursday', 'REF345678', 'Fund Transfer', 'Online Banking', 'No', 400, 'S00002', 'M00003', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0004', 'SUCCESSFUL', TO_DATE('2020-12-27', 'YYYY-MM-DD'), 'Medicine Purchase', 'Sunday', 'REF456789', 'Fund Transfer', 'Online Banking', 'No', 750, 'S00005', 'M00004', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0005', 'SUCCESSFUL', TO_DATE('2020-11-09', 'YYYY-MM-DD'), 'Medicine Purchase', 'Tuesday', 'REF567890', 'Fund Transfer', 'Online Banking', 'No', 1440, 'S00002', 'M00005', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0006', 'SUCCESSFUL', TO_DATE('2020-04-18', 'YYYY-MM-DD'), 'Medicine Purchase', 'Sunday', 'REF678901', 'Fund Transfer', 'Online Banking', 'No', 470, 'S00005', 'M00006', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0007', 'SUCCESSFUL', TO_DATE('2021-08-22', 'YYYY-MM-DD'), 'Medicine Purchase', 'Sunday', 'REF789012', 'Fund Transfer', 'Online Banking', 'No', 2850, 'S00002', 'M00007', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0008', 'SUCCESSFUL', TO_DATE('2021-01-10', 'YYYY-MM-DD'), 'Medicine Purchase', 'Sunday', 'REF890123', 'Fund Transfer', 'Online Banking', 'No', 1350, 'S00005', 'M00008', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0009', 'SUCCESSFUL', TO_DATE('2021-06-21', 'YYYY-MM-DD'), 'Medicine Purchase', 'Monday', 'REF901234', 'Fund Transfer', 'Online Banking', 'No', 3000, 'S00002', 'M00009', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0010', 'SUCCESSFUL', TO_DATE('2020-09-03', 'YYYY-MM-DD'), 'Medicine Purchase', 'Thursday', 'REF012345', 'Fund Transfer', 'Online Banking', 'No', 700, 'S00005', 'M00010', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0011', 'SUCCESSFUL', TO_DATE('2020-07-14', 'YYYY-MM-DD'), 'Material Purchase', 'Tuesday', 'REF123456', 'Fund Transfer', 'Online Banking', 'No', 1800, 'S00003', 'M00001', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0012', 'SUCCESSFUL', TO_DATE('2020-10-30', 'YYYY-MM-DD'), 'Material Purchase', 'Friday', 'REF234567', 'Fund Transfer', 'Online Banking', 'No', 1980, 'S00007', 'M00002', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0013', 'SUCCESSFUL', TO_DATE('2021-03-05', 'YYYY-MM-DD'), 'Material Purchase', 'Friday', 'REF345678', 'Fund Transfer', 'Online Banking', 'No', 1800, 'S00003', 'M00003', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0014', 'SUCCESSFUL', TO_DATE('2021-09-12', 'YYYY-MM-DD'), 'Material Purchase', 'Sunday', 'REF456789', 'Fund Transfer', 'Online Banking', 'No', 1360, 'S00007', 'M00004', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0015', 'SUCCESSFUL', TO_DATE('2021-04-30', 'YYYY-MM-DD'), 'Material Purchase', 'Friday', 'REF567890', 'Fund Transfer', 'Online Banking', 'No', 760, 'S00003', 'M00005', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0016', 'SUCCESSFUL', TO_DATE('2020-04-23', 'YYYY-MM-DD'), 'Material Purchase', 'Thursday', 'REF678901', 'Fund Transfer', 'Online Banking', 'No', 2000, 'S00007', 'M00006', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0017', 'SUCCESSFUL', TO_DATE('2021-11-26', 'YYYY-MM-DD'), 'Material Purchase', 'Friday', 'REF789012', 'Fund Transfer', 'Online Banking', 'No', 1350, 'S00003', 'M00007', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0018', 'SUCCESSFUL', TO_DATE('2020-05-21', 'YYYY-MM-DD'), 'Material Purchase', 'Thursday', 'REF890123', 'Fund Transfer', 'Online Banking', 'No', 1500, 'S00007', 'M00008', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0019', 'SUCCESSFUL', TO_DATE('2020-08-13', 'YYYY-MM-DD'), 'Material Purchase', 'Thursday', 'REF901234', 'Fund Transfer', 'Online Banking', 'No', 5000, 'S00003', 'M00009', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0020', 'SUCCESSFUL', TO_DATE('2021-12-16', 'YYYY-MM-DD'), 'Material Purchase', 'Thursday', 'REF012345', 'Fund Transfer', 'Online Banking', 'No', 1260, 'S00007', 'M00010', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0021', 'SUCCESSFUL', TO_DATE('2020-06-25', 'YYYY-MM-DD'), 'Instrument Purchase', 'Thursday', 'REF123456', 'Fund Transfer', 'Online Banking', 'No', 1000, 'S00001', 'M00001', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0022', 'SUCCESSFUL', TO_DATE('2020-01-16', 'YYYY-MM-DD'), 'Instrument Purchase', 'Thursday', 'REF234567', 'Fund Transfer', 'Online Banking', 'No', 2550, 'S00004', 'M00002', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0023', 'SUCCESSFUL', TO_DATE('2020-03-29', 'YYYY-MM-DD'), 'Instrument Purchase', 'Sunday', 'REF345678', 'Fund Transfer', 'Online Banking', 'No', 1300, 'S00006', 'M00003', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0024', 'SUCCESSFUL', TO_DATE('2021-07-03', 'YYYY-MM-DD'), 'Instrument Purchase', 'Saturday', 'REF456789', 'Fund Transfer', 'Online Banking', 'No', 1100, 'S00008', 'M00004', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0025', 'SUCCESSFUL', TO_DATE('2021-06-12', 'YYYY-MM-DD'), 'Instrument Purchase', 'Saturday', 'REF567890', 'Fund Transfer', 'Online Banking', 'No', 1750, 'S00001', 'M00005', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0026', 'SUCCESSFUL', TO_DATE('2020-12-08', 'YYYY-MM-DD'), 'Instrument Purchase', 'Tuesday', 'REF678901', 'Fund Transfer', 'Online Banking', 'No', 100, 'S00004', 'M00006', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0027', 'SUCCESSFUL', TO_DATE('2020-09-17', 'YYYY-MM-DD'), 'Instrument Purchase', 'Thursday', 'REF789012', 'Fund Transfer', 'Online Banking', 'No', 310, 'S00006', 'M00007', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0028', 'SUCCESSFUL', TO_DATE('2020-11-26', 'YYYY-MM-DD'), 'Instrument Purchase', 'Thursday', 'REF890123', 'Fund Transfer', 'Online Banking', 'No', 560, 'S00008', 'M00008', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0029', 'SUCCESSFUL', TO_DATE('2021-03-25', 'YYYY-MM-DD'), 'Instrument Purchase', 'Thursday', 'REF901234', 'Fund Transfer', 'Online Banking', 'No', 2500, 'S00001', 'M00009', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0030', 'SUCCESSFUL', TO_DATE('2020-12-06', 'YYYY-MM-DD'), 'Instrument Purchase', 'Sunday', 'REF012345', 'Fund Transfer', 'Online Banking', 'No', 3000, 'S00004', 'M00010', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0031', 'SUCCESSFUL', TO_DATE('2022-05-05', 'YYYY-MM-DD'), 'Machine Purchase', 'Thursday', 'REF123456', 'Fund Transfer', 'Online Banking', 'No', 150000, 'S00009', 'M00001', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0032', 'SUCCESSFUL', TO_DATE('2022-05-05', 'YYYY-MM-DD'), 'Machine Purchase', 'Thursday', 'REF234567', 'Fund Transfer', 'Online Banking', 'No', 250000, 'S00010', 'M00001', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0033', 'SUCCESSFUL', TO_DATE('2022-06-10', 'YYYY-MM-DD'), 'Machine Purchase', 'Friday', 'REF345678', 'Fund Transfer', 'Online Banking', 'No', 145000, 'S00009', 'M00002', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0034', 'SUCCESSFUL', TO_DATE('2022-06-10', 'YYYY-MM-DD'), 'Machine Purchase', 'Friday', 'REF456789', 'Fund Transfer', 'Online Banking', 'No', 240000, 'S00010', 'M00002', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0035', 'SUCCESSFUL', TO_DATE('2022-07-15', 'YYYY-MM-DD'), 'Machine Purchase', 'Friday', 'REF567890', 'Fund Transfer', 'Online Banking', 'No', 155000, 'S00009', 'M00003', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0036', 'SUCCESSFUL', TO_DATE('2022-07-15', 'YYYY-MM-DD'), 'Machine Purchase', 'Friday', 'REF678901', 'Fund Transfer', 'Online Banking', 'No', 260000, 'S00010', 'M00003', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0037', 'SUCCESSFUL', TO_DATE('2022-08-20', 'YYYY-MM-DD'), 'Machine Purchase', 'Saturday', 'REF789012', 'Fund Transfer', 'Online Banking', 'No', 160000, 'S00009', 'M00004', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0038', 'SUCCESSFUL', TO_DATE('2022-08-20', 'YYYY-MM-DD'), 'Machine Purchase', 'Saturday', 'REF890123', 'Fund Transfer', 'Online Banking', 'No', 270000, 'S00010', 'M00004', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0039', 'SUCCESSFUL', TO_DATE('2022-09-25', 'YYYY-MM-DD'), 'Machine Purchase', 'Sunday', 'REF901234', 'Fund Transfer', 'Online Banking', 'No', 165000, 'S00009', 'M00005', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0040', 'SUCCESSFUL', TO_DATE('2022-09-25', 'YYYY-MM-DD'), 'Machine Purchase', 'Sunday', 'REF012345', 'Fund Transfer', 'Online Banking', 'No', 280000, 'S00010', 'M00005', NULL)
SELECT * FROM dual;

INSERT ALL
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0041', 'SUCCESSFUL', TO_DATE('2022-10-31', 'YYYY-MM-DD'), 'Machine Purchase', 'Monday', 'REF123456', 'Fund Transfer', 'Online Banking', 'No', 175000, 'S00009', 'M00006', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0042', 'SUCCESSFUL', TO_DATE('2022-10-31', 'YYYY-MM-DD'), 'Machine Purchase', 'Monday', 'REF234567', 'Fund Transfer', 'Online Banking', 'No', 290000, 'S00010', 'M00006', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0043', 'SUCCESSFUL', TO_DATE('2022-12-05', 'YYYY-MM-DD'), 'Machine Purchase', 'Monday', 'REF345678', 'Fund Transfer', 'Online Banking', 'No', 180000, 'S00009', 'M00007', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0044', 'SUCCESSFUL', TO_DATE('2022-12-05', 'YYYY-MM-DD'), 'Machine Purchase', 'Monday', 'REF456789', 'Fund Transfer', 'Online Banking', 'No', 310000, 'S00010', 'M00007', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0045', 'SUCCESSFUL', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Machine Purchase', 'Tuesday', 'REF567890', 'Fund Transfer', 'Online Banking', 'No', 185000, 'S00009', 'M00008', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0046', 'SUCCESSFUL', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Machine Purchase', 'Tuesday', 'REF678901', 'Fund Transfer', 'Online Banking', 'No', 330000, 'S00010', 'M00008', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0047', 'SUCCESSFUL', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'Machine Purchase', 'Wednesday', 'REF789012', 'Fund Transfer', 'Online Banking', 'No', 190000, 'S00009', 'M00009', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0048', 'SUCCESSFUL', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'Machine Purchase', 'Wednesday', 'REF890123', 'Fund Transfer', 'Online Banking', 'No', 350000, 'S00010', 'M00009', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0049', 'SUCCESSFUL', TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'Machine Purchase', 'Monday', 'REF901234', 'Fund Transfer', 'Online Banking', 'No', 195000, 'S00009', 'M00010', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0050', 'SUCCESSFUL', TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'Machine Purchase', 'Monday', 'REF012345', 'Fund Transfer', 'Online Banking', 'No', 370000, 'S00010', 'M00010', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0051', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF123456', 'Fund Transfer', 'Online Banking', 'No', 4500, NULL, 'M00001', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0052', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF234567', 'Fund Transfer', 'Online Banking', 'No', 3900, NULL, 'M00001', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0053', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF345678', 'Fund Transfer', 'Online Banking', 'No', 4800, NULL, 'M00001', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0054', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF456789', 'Fund Transfer', 'Online Banking', 'No', 3600, NULL, 'M00001', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0055', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF567890', 'Fund Transfer', 'Online Banking', 'No', 5400, NULL, 'M00002', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0056', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF678901', 'Fund Transfer', 'Online Banking', 'No', 4500, NULL, 'M00002', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0057', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF789012', 'Fund Transfer', 'Online Banking', 'No', 3900, NULL, 'M00002', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0058', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF890123', 'Fund Transfer', 'Online Banking', 'No', 4800, NULL, 'M00002', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0059', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF901234', 'Fund Transfer', 'Online Banking', 'No', 3600, NULL, 'M00003', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0060', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF012345', 'Fund Transfer', 'Online Banking', 'No', 5400, NULL, 'M00003', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0061', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF123456', 'Fund Transfer', 'Online Banking', 'No', 4150, NULL, 'M00003', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0062', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF234567', 'Fund Transfer', 'Online Banking', 'No', 3750, NULL, 'M00003', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0063', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF345678', 'Fund Transfer', 'Online Banking', 'No', 4250, NULL, 'M00004', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0064', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF456789', 'Fund Transfer', 'Online Banking', 'No', 3100, NULL, 'M00004', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0065', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF567890', 'Fund Transfer', 'Online Banking', 'No', 4950, NULL, 'M00004', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0066', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF678901', 'Fund Transfer', 'Online Banking', 'No', 3800, NULL, 'M00004', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0067', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF789012', 'Fund Transfer', 'Online Banking', 'No', 3400, NULL, 'M00005', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0068', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF890123', 'Fund Transfer', 'Online Banking', 'No', 3750, NULL, 'M00005', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0069', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF901234', 'Fund Transfer', 'Online Banking', 'No', 5350, NULL, 'M00005', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0070', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF012345', 'Fund Transfer', 'Online Banking', 'No', 3550, NULL, 'M00005', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0071', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF123456', 'Fund Transfer', 'Online Banking', 'No', 4250, NULL, 'M00006', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0072', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF234567', 'Fund Transfer', 'Online Banking', 'No', 2950, NULL, 'M00006', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0073', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF345678', 'Fund Transfer', 'Online Banking', 'No', 4700, NULL, 'M00006', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0074', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF456789', 'Fund Transfer', 'Online Banking', 'No', 3850, NULL, 'M00006', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0075', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF567890', 'Fund Transfer', 'Online Banking', 'No', 3450, NULL, 'M00007', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0076', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF678901', 'Fund Transfer', 'Online Banking', 'No', 3650, NULL, 'M00007', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0077', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF789012', 'Fund Transfer', 'Online Banking', 'No', 3250, NULL, 'M00007', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0078', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF890123', 'Fund Transfer', 'Online Banking', 'No', 3950, NULL, 'M00007', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0079', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF901234', 'Fund Transfer', 'Online Banking', 'No', 2850, NULL, 'M00008', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0080', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF012345', 'Fund Transfer', 'Online Banking', 'No', 4650, NULL, 'M00008', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0081', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF123456', 'Fund Transfer', 'Online Banking', 'No', 3750, NULL, 'M00008', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0082', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF234567', 'Fund Transfer', 'Online Banking', 'No', 3350, NULL, 'M00008', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0083', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF345678', 'Fund Transfer', 'Online Banking', 'No', 3550, NULL, 'M00009', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0084', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF456789', 'Fund Transfer', 'Online Banking', 'No', 3150, NULL, 'M00009', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0085', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF567890', 'Fund Transfer', 'Online Banking', 'No', 3850, NULL, 'M00009', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0086', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF678901', 'Fund Transfer', 'Online Banking', 'No', 2750, NULL, 'M00009', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0087', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF789012', 'Fund Transfer', 'Online Banking', 'No', 4450, NULL, 'M00010', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0088', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF890123', 'Fund Transfer', 'Online Banking', 'No', 3550, NULL, 'M00010', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0089', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF901234', 'Fund Transfer', 'Online Banking', 'No', 3150, NULL, 'M00010', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0090', 'SUCCESSFUL', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'Salary : June', 'Monday', 'REF012345', 'Fund Transfer', 'Online Banking', 'No', 3450, NULL, 'M00010', NULL)
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0091', 'SUCCESSFUL', TO_DATE('2022-01-05', 'YYYY-MM-DD'), 'Waste Management', 'Thursday', 'REF123456', 'Fund Transfer', 'Online Banking', 'No', 50, NULL, 'M00001', 'F00001')
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0092', 'SUCCESSFUL', TO_DATE('2022-03-12', 'YYYY-MM-DD'), 'Waste Management', 'Saturday', 'REF234567', 'Fund Transfer', 'Online Banking', 'No', 25, NULL, 'M00002', 'F00002')
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0093', 'SUCCESSFUL', TO_DATE('2022-05-21', 'YYYY-MM-DD'), 'Waste Management', 'Saturday', 'REF345678', 'Fund Transfer', 'Online Banking', 'No', 50.1, NULL, 'M00003', 'F00003')
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0094', 'SUCCESSFUL', TO_DATE('2022-07-08', 'YYYY-MM-DD'), 'Waste Management', 'Friday', 'REF456789', 'Fund Transfer', 'Online Banking', 'No', 40, NULL, 'M00004', 'F00004')
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0095', 'SUCCESSFUL', TO_DATE('2022-09-17', 'YYYY-MM-DD'), 'Waste Management', 'Saturday', 'REF567890', 'Fund Transfer', 'Online Banking', 'No', 17.5, NULL, 'M00005', 'F00005')
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0096', 'SUCCESSFUL', TO_DATE('2022-11-03', 'YYYY-MM-DD'), 'Waste Management', 'Thursday', 'REF678901', 'Fund Transfer', 'Online Banking', 'No', 63.5, NULL, 'M00006', 'F00006')
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0097', 'SUCCESSFUL', TO_DATE('2022-01-22', 'YYYY-MM-DD'), 'Waste Management', 'Saturday', 'REF789012', 'Fund Transfer', 'Online Banking', 'No', 51.5, NULL, 'M00007', 'F00007')
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0098', 'SUCCESSFUL', TO_DATE('2022-03-07', 'YYYY-MM-DD'), 'Waste Management', 'Tuesday', 'REF890123', 'Fund Transfer', 'Online Banking', 'No', 101, NULL, 'M00008', 'F00008')
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0099', 'SUCCESSFUL', TO_DATE('2022-05-16', 'YYYY-MM-DD'), 'Waste Management', 'Monday', 'REF901234', 'Fund Transfer', 'Online Banking', 'No', 100, NULL, 'M00009', 'F00009')
INTO "Transaction" ("Tran_ID", "Tran_Stat", "Tran_Date", "Tran_Note", "Tran_Day", "Tran_ReffNo", "Tran_Type", "Tran_Method", "Tran_Repeat", "Tran_Amount", "Supp_ID", "M_ID", "Fac_ID") VALUES ('TRAN0100', 'SUCCESSFUL', TO_DATE('2022-07-01', 'YYYY-MM-DD'), 'Waste Management', 'Friday', 'REF012345', 'Fund Transfer', 'Online Banking', 'No', 75, NULL, 'M00010', 'F00010')
SELECT * FROM dual;

-- Order
INSERT ALL
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00001', 'Medicine', 'GDEX', 'TRK987654', 'High', 'Dentalgel', 100, 1700.00, 17.00, 'RESTOCK INVENTORY', TO_DATE('2021-10-08', 'YYYY-MM-DD'), 'TRAN0001', 'S00002', 'BR0001')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00002', 'Medicine', 'ZeptoExpress', 'TRK876543', 'Medium', 'Mouthwash', 200, 1500.00, 7.50, 'RESTOCK INVENTORY', TO_DATE('2021-05-02', 'YYYY-MM-DD'), 'TRAN0002', 'S00005', 'BR0002')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00003', 'Medicine', 'Pos Malaysia', 'TRK765432', 'Low', 'Toothpaste', 40, 400.00, 10.00, 'RESTOCK INVENTORY', TO_DATE('2021-07-15', 'YYYY-MM-DD'), 'TRAN0003', 'S00002', 'BR0003')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00004', 'Medicine', 'CJ Century', 'TRK654321', 'High', 'Dental Floss', 50, 750.00, 15.00, 'RESTOCK INVENTORY', TO_DATE('2020-12-27', 'YYYY-MM-DD'), 'TRAN0004', 'S00005', 'BR0004')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00005', 'Medicine', 'ABX Express', 'TRK543210', 'Medium', 'Dental Tray', 90, 1440.00, 16.00, 'RESTOCK INVENTORY', TO_DATE('2020-11-09', 'YYYY-MM-DD'), 'TRAN0005', 'S00002', 'BR0005')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00006', 'Medicine', 'Pgeon Delivery', 'TRK432109', 'Low', 'Pain Relief Gel', 50, 470.00, 9.40, 'RESTOCK INVENTORY', TO_DATE('2020-04-18', 'YYYY-MM-DD'), 'TRAN0006', 'S00005', 'BR0006')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00007', 'Medicine', 'Poslaju', 'TRK321098', 'High', 'Oral Antiseptic', 150, 2850.00, 19.00, 'RESTOCK INVENTORY', TO_DATE('2021-08-22', 'YYYY-MM-DD'), 'TRAN0007', 'S00002', 'BR0007')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00008', 'Medicine', 'DHL', 'TRK210987', 'Medium', 'Gum Healing Gel', 150, 1350.00, 9.00, 'RESTOCK INVENTORY', TO_DATE('2021-01-10', 'YYYY-MM-DD'), 'TRAN0008', 'S00005', 'BR0008')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00009', 'Medicine', 'City-Link Express', 'TRK109876', 'Low', 'Teeth Whitening Strips', 50, 3000.00, 69.00, 'RESTOCK INVENTORY', TO_DATE('2021-06-21', 'YYYY-MM-DD'), 'TRAN0009', 'S00002', 'BR0009')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00010', 'Medicine', 'Ninja Van', 'TRK098765', 'High', 'Dental Pain Capsules', 70, 700.00, 10.00, 'RESTOCK INVENTORY', TO_DATE('2020-09-03', 'YYYY-MM-DD'), 'TRAN0010', 'S00005', 'BR0010')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00011', 'Material', 'Skynet', 'TRK987654', 'Medium', 'Dental Alloy', 10, 1800.00, 180.00, 'RESTOCK INVENTORY', TO_DATE('2020-07-14', 'YYYY-MM-DD'), 'TRAN0011', 'S00003', 'BR0001')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00012', 'Material', 'Nationwide Express', 'TRK876543', 'Low', 'Composite Resin', 30, 1980.00, 66.00, 'RESTOCK INVENTORY', TO_DATE('2020-10-30', 'YYYY-MM-DD'), 'TRAN0012', 'S00007', 'BR0002')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00013', 'Material', 'JT Express', 'TRK765432', 'High', 'Dental Cement', 40, 1800.00, 45.00, 'RESTOCK INVENTORY', TO_DATE('2021-03-05', 'YYYY-MM-DD'), 'TRAN0013', 'S00003', 'BR0003')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00014', 'Material', 'Ta-Q-Bin', 'TRK654321', 'Medium', 'Impression Tray', 20, 1360.00, 68.00, 'RESTOCK INVENTORY', TO_DATE('2021-09-12', 'YYYY-MM-DD'), 'TRAN0014', 'S00007', 'BR0004')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00015', 'Material', 'Mypoz', 'TRK543210', 'Low', 'Rubber Dam', 20, 760.00, 38.00, 'RESTOCK INVENTORY', TO_DATE('2021-04-30', 'YYYY-MM-DD'), 'TRAN0015', 'S00003', 'BR0005')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00016', 'Material', 'Transnasional', 'TRK49783', 'High', 'Dental Burs', 20, 2000.00, 100.00, 'RESTOCK INVENTORY', TO_DATE('2020-04-23', 'YYYY-MM-DD'), 'TRAN0016', 'S00007', 'BR0006')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00017', 'Material', 'RZY Express', 'TRK477782', 'Medium', 'Gutta Percha', 50, 1350.00, 27.00, 'RESTOCK INVENTORY', TO_DATE('2021-11-26', 'YYYY-MM-DD'), 'TRAN0017', 'S00003', 'BR0007')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00018', 'Material', 'TheLorry', 'TRK820039', 'Medium', 'Orthodontic Wire', 100, 1500.00, 15.00, 'RESTOCK INVENTORY', TO_DATE('2020-05-21', 'YYYY-MM-DD'), 'TRAN0018', 'S00007', 'BR0008')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00019', 'Material', 'MatDespatch', 'TRK338091', 'Medium', 'Dental Amalgam', 100, 5000.00, 50.00, 'RESTOCK INVENTORY', TO_DATE('2020-08-13', 'YYYY-MM-DD'), 'TRAN0019', 'S00003', 'BR0009')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00020', 'Material', 'EasyParcel', 'TRK318312', 'Low', 'Etching Gel', 90, 1260.00, 14.00, 'RESTOCK INVENTORY', TO_DATE('2021-12-16', 'YYYY-MM-DD'), 'TRAN0020', 'S00007', 'BR0010')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00021', 'Instrument', 'PCA Masters', 'TRK382716', 'High', 'Dental Mirror', 50, 1000.00, 20.00, 'RESTOCK INVENTORY', TO_DATE('2020-06-25', 'YYYY-MM-DD'), 'TRAN0021', 'S00001', 'BR0001')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00022', 'Instrument', 'Red Cargo', 'TRK989021', 'High', 'Extraction Forceps', 20, 2550.00, 127.50, 'RESTOCK INVENTORY', TO_DATE('2020-01-16', 'YYYY-MM-DD'), 'TRAN0022', 'S00004', 'BR0002')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00023', 'Instrument', 'SkyNet Worldwide Express', 'TRK129819', 'Medium', 'Dental Drill', 20, 1300.00, 65.00, 'RESTOCK INVENTORY', TO_DATE('2020-03-29', 'YYYY-MM-DD'), 'TRAN0023', 'S00006', 'BR0003')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00024', 'Instrument', 'GD Express E-Commerce', 'TRK7100092', 'Low', 'Scaler', 25, 1100.00, 44.00, 'RESTOCK INVENTORY', TO_DATE('2021-07-03', 'YYYY-MM-DD'), 'TRAN0024', 'S00008', 'BR0004')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00025', 'Instrument', 'ParcelLink', 'TRK108097', 'Low', 'Dental Tweezers', 50, 1750.00, 35.00, 'RESTOCK INVENTORY', TO_DATE('2021-06-12', 'YYYY-MM-DD'), 'TRAN0025', 'S00001', 'BR0005')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00026', 'Instrument', 'ShipYourGoods', 'TRK409824', 'High', 'Dental Syringe', 50, 100.00, 2.00, 'RESTOCK INVENTORY', TO_DATE('2020-12-08', 'YYYY-MM-DD'), 'TRAN0026', 'S00004', 'BR0006')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00027', 'Instrument', 'Airpak Express', 'TRK890989', 'Medium', 'Orthodontic Pliers', 10, 310.00, 31.00, 'RESTOCK INVENTORY', TO_DATE('2020-09-17', 'YYYY-MM-DD'), 'TRAN0027', 'S00006', 'BR0007')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00028', 'Instrument', 'SendParcel', 'TRK271181', 'Medium', 'Endodontic Files', 10, 560.00, 56.00, 'RESTOCK INVENTORY', TO_DATE('2020-11-26', 'YYYY-MM-DD'), 'TRAN0028', 'S00008', 'BR0008')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00029', 'Instrument', 'Nationwide Movers', 'TRK317780', 'Low', 'Dental Forceps', 50, 2500.00, 50.00, 'RESTOCK INVENTORY', TO_DATE('2021-03-25', 'YYYY-MM-DD'), 'TRAN0029', 'S00001', 'BR0009')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00030', 'Instrument', 'TCS Express', 'TRK288171', 'Medium', 'Mouth Mirror', 150, 3000.00, 20.00, 'RESTOCK INVENTORY', TO_DATE('2020-12-06', 'YYYY-MM-DD'), 'TRAN0030', 'S00004', 'BR0010')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00031', 'Machine', 'AbroadLink Logistics', 'TRK624181', 'High', 'Denture Machine 1', 1, 150000.00, 150000.00, 'MACHINE INSTALMENT', TO_DATE('2022-05-05', 'YYYY-MM-DD'), 'TRAN0031', 'S00009', 'BR0001')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00032', 'Machine', 'Line Clear Express Logistics', 'TRK726147', 'Low', 'X-Ray Machine 1', 1, 250000.00, 250000.00, 'MACHINE INSTALMENT', TO_DATE('2022-05-05', 'YYYY-MM-DD'), 'TRAN0032', 'S00010', 'BR0001')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00033', 'Machine', 'Kangaroo Worldwide Express', 'TRK386289', 'Medium', 'Denture Machine 2', 1, 145000.00, 145000.00, 'MACHINE INSTALMENT', TO_DATE('2022-06-10', 'YYYY-MM-DD'), 'TRAN0033', 'S00009', 'BR0002')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00034', 'Machine', 'MaxCourier', 'TRK376817', 'High', 'X-Ray Machine 2', 1, 240000.00, 240000.00, 'MACHINE INSTALMENT', TO_DATE('2022-06-10', 'YYYY-MM-DD'), 'TRAN0034', 'S00010', 'BR0002')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00035', 'Machine', 'MyKargo', 'TRK111187', 'High', 'Denture Machine 3', 1, 155000.00, 155000.00, 'MACHINE INSTALMENT', TO_DATE('2022-07-15', 'YYYY-MM-DD'), 'TRAN0035', 'S00009', 'BR0003')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00036', 'Machine', 'Sure Reach Worldwide Express', 'TRK837110', 'Medium', 'X-Ray Machine 3', 1, 260000.00, 260000.00, 'MACHINE INSTALMENT', TO_DATE('2022-07-15', 'YYYY-MM-DD'), 'TRAN0036', 'S00010', 'BR0003')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00037', 'Machine', 'GoGet', 'TRK999019', 'Low', 'Denture Machine 4', 1, 160000.00, 160000.00, 'MACHINE INSTALMENT', TO_DATE('2022-08-20', 'YYYY-MM-DD'), 'TRAN0037', 'S00009', 'BR0004')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00038', 'Machine', 'Mypoz', 'TRK127819', 'High', 'X-Ray Machine 4', 1, 270000.00, 270000.00, 'MACHINE INSTALMENT', TO_DATE('2022-08-20', 'YYYY-MM-DD'), 'TRAN0038', 'S00010', 'BR0004')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00039', 'Machine', 'ZeptoExpress', 'TRK372727', 'High', 'Denture Machine 5', 1, 165000.00, 165000.00, 'MACHINE INSTALMENT', TO_DATE('2022-09-25', 'YYYY-MM-DD'), 'TRAN0039', 'S00009', 'BR0005')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00040', 'Machine', 'DHL', 'TRK111717', 'Medium', 'X-Ray Machine 5', 1, 280000.00, 280000.00, 'MACHINE INSTALMENT', TO_DATE('2022-09-25', 'YYYY-MM-DD'), 'TRAN0040', 'S00010', 'BR0005')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00041', 'Machine', 'TheLorry', 'TRK382729', 'High', 'Denture Machine 6', 1, 175000.00, 175000.00, 'MACHINE INSTALMENT', TO_DATE('2022-10-31', 'YYYY-MM-DD'), 'TRAN0041', 'S00009', 'BR0006')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00042', 'Machine', 'Skynet', 'TRK182634', 'Medium', 'X-Ray Machine 6', 1, 290000.00, 290000.00, 'MACHINE INSTALMENT', TO_DATE('2022-10-31', 'YYYY-MM-DD'), 'TRAN0042', 'S00010', 'BR0006')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00043', 'Machine', 'ABX Express', 'TRK333737', 'Low', 'Denture Machine 7', 1, 180000.00, 180000.00, 'MACHINE INSTALMENT', TO_DATE('2022-12-05', 'YYYY-MM-DD'), 'TRAN0043', 'S00009', 'BR0007')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00044', 'Machine', 'Pos Malaysia', 'TRK399017', 'High', 'X-Ray Machine 7', 1, 310000.00, 310000.00, 'MACHINE INSTALMENT', TO_DATE('2022-12-05', 'YYYY-MM-DD'), 'TRAN0044', 'S00010', 'BR0007')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00045', 'Machine', 'JT Express', 'TRK291739', 'Medium', 'Denture Machine 8', 1, 185000.00, 185000.00, 'MACHINE INSTALMENT', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'TRAN0045', 'S00009', 'BR0008')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00046', 'Machine', 'Red Cargo', 'TRK187622', 'Medium', 'X-Ray Machine 8', 1, 330000.00, 330000.00, 'MACHINE INSTALMENT', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'TRAN0046', 'S00010', 'BR0008')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00047', 'Machine', 'GDEX', 'TRK109331', 'High', 'Denture Machine 9', 1, 190000.00, 190000.00, 'MACHINE INSTALMENT', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'TRAN0047', 'S00009', 'BR0009')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00048', 'Machine', 'CJ Century', 'TRK990091', 'High', 'X-Ray Machine 9', 1, 350000.00, 350000.00, 'MACHINE INSTALMENT', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'TRAN0048', 'S00010', 'BR0009')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00049', 'Machine', 'Ninja Van', 'TRK281718', 'Low', 'Denture Machine 10', 1, 195000.00, 195000.00, 'MACHINE INSTALMENT', TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'TRAN0049', 'S00009', 'BR0010')
INTO "Order" ("O_ID", "O_Type", "O_Courier", "O_TrackNum", "O_Priority", "O_Nameof_Item", "O_Qty", "O_TotCost", "O_UnitCost", "Pur_of_Purchase", "Dateof_Purchase", "Tran_ID", "Supp_ID", "Br_ID")
VALUES ('O00050', 'Machine', 'Poslaju', 'TRK177281', 'Medium', 'X-Ray Machine 10', 1, 370000.00, 370000.00, 'MACHINE INSTALMENT', TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'TRAN0050', 'S00010', 'BR0010')
SELECT * FROM dual;

-- Supplier
INSERT ALL
INTO "Supplier" ("Supp_ID", "Supp_Name", "Supp_PhoneNum", "Supp_FaxNum", "Supp_Prod_Cat", "Supp_Email", "Supp_BankName", "Supp_BankNum", "Supp_Type", "Date_Open", "Date_Operate", "M_ID") VALUES ('S00001', 'ABC Dental Supplies', '60123456789', '60123456789', 'Dental Equipment', 'abc.supplies@email.com', 'Maybank', '1234567890', 'Local', TO_DATE('2023-01-05', 'YYYY-MM-DD'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'M00001')
INTO "Supplier" ("Supp_ID", "Supp_Name", "Supp_PhoneNum", "Supp_FaxNum", "Supp_Prod_Cat", "Supp_Email", "Supp_BankName", "Supp_BankNum", "Supp_Type", "Date_Open", "Date_Operate", "M_ID") VALUES ('S00002', 'XYZ Dental Supplier', '60198765432', '60198765432', 'Dental Consumables', 'xyz.dentalsupplier@mail.com', 'CIMB', '9876543210', 'International', TO_DATE('2023-02-10', 'YYYY-MM-DD'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'M00002')
INTO "Supplier" ("Supp_ID", "Supp_Name", "Supp_PhoneNum", "Supp_FaxNum", "Supp_Prod_Cat", "Supp_Email", "Supp_BankName", "Supp_BankNum", "Supp_Type", "Date_Open", "Date_Operate", "M_ID") VALUES ('S00003', 'DEF Dental Products', '60162481357', '60162481357', 'Dental Supplies', 'def.dentalproducts@mail.com', 'Public Bank', '4567890123', 'Local', TO_DATE('2023-03-15', 'YYYY-MM-DD'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'M00003')
INTO "Supplier" ("Supp_ID", "Supp_Name", "Supp_PhoneNum", "Supp_FaxNum", "Supp_Prod_Cat", "Supp_Email", "Supp_BankName", "Supp_BankNum", "Supp_Type", "Date_Open", "Date_Operate", "M_ID") VALUES ('S00004', 'GHI Dental Solutions', '60135792468', '60135792468', 'Dental Equipment', 'ghi.dentalsolutions@mail.com', 'Maybank', '7890123456', 'Local', TO_DATE('2023-04-20', 'YYYY-MM-DD'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), 'M00004')
INTO "Supplier" ("Supp_ID", "Supp_Name", "Supp_PhoneNum", "Supp_FaxNum", "Supp_Prod_Cat", "Supp_Email", "Supp_BankName", "Supp_BankNum", "Supp_Type", "Date_Open", "Date_Operate", "M_ID") VALUES ('S00005', 'JKL Dental Supplies', '60112345678', '60112345678', 'Dental Consumables', 'jkl.dentalsupplies@mail.com', 'CIMB', '2345678901', 'Local', TO_DATE('2023-05-25', 'YYYY-MM-DD'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), 'M00005')
INTO "Supplier" ("Supp_ID", "Supp_Name", "Supp_PhoneNum", "Supp_FaxNum", "Supp_Prod_Cat", "Supp_Email", "Supp_BankName", "Supp_BankNum", "Supp_Type", "Date_Open", "Date_Operate", "M_ID") VALUES ('S00006', 'MNO Dental Supplier', '60167890123', '60167890123', 'Dental Equipment', 'mno.dentalsupplier@mail.com', 'RHB Bank', '5678901234', 'Local', TO_DATE('2023-06-30', 'YYYY-MM-DD'), TO_DATE('2023-07-05', 'YYYY-MM-DD'), 'M00006')
INTO "Supplier" ("Supp_ID", "Supp_Name", "Supp_PhoneNum", "Supp_FaxNum", "Supp_Prod_Cat", "Supp_Email", "Supp_BankName", "Supp_BankNum", "Supp_Type", "Date_Open", "Date_Operate", "M_ID") VALUES ('S00007', 'PQR Dental Products', '60112233445', '60112233445', 'Dental Supplies', 'pqr.dentalproducts@mail.com', 'HSBC', '8901234567', 'Local', TO_DATE('2023-07-02', 'YYYY-MM-DD'), TO_DATE('2023-07-07', 'YYYY-MM-DD'), 'M00007')
INTO "Supplier" ("Supp_ID", "Supp_Name", "Supp_PhoneNum", "Supp_FaxNum", "Supp_Prod_Cat", "Supp_Email", "Supp_BankName", "Supp_BankNum", "Supp_Type", "Date_Open", "Date_Operate", "M_ID") VALUES ('S00008', 'STU Dental Solutions', '60198765432', '60198765432', 'Dental Equipment', 'stu.dentalsolutions@mail.com', 'Maybank', '2345678901', 'Local', TO_DATE('2023-08-08', 'YYYY-MM-DD'), TO_DATE('2023-08-13', 'YYYY-MM-DD'), 'M00008')
INTO "Supplier" ("Supp_ID", "Supp_Name", "Supp_PhoneNum", "Supp_FaxNum", "Supp_Prod_Cat", "Supp_Email", "Supp_BankName", "Supp_BankNum", "Supp_Type", "Date_Open", "Date_Operate", "M_ID") VALUES ('S00009', 'Mechy Supplies', '60176543210', '60176543210', 'Machine', 'mechysupplies@mail.com', 'CIMB', '6789012345', 'Local', TO_DATE('2023-09-12', 'YYYY-MM-DD'), TO_DATE('2023-09-17', 'YYYY-MM-DD'), 'M00009')
INTO "Supplier" ("Supp_ID", "Supp_Name", "Supp_PhoneNum", "Supp_FaxNum", "Supp_Prod_Cat", "Supp_Email", "Supp_BankName", "Supp_BankNum", "Supp_Type", "Date_Open", "Date_Operate", "M_ID") VALUES ('S00010', 'X Manufac', '60123456789', '60123456789', 'Machine', 'xmanufac@mail.com', 'Public Bank', '123456789', 'Local', TO_DATE('2023-10-20', 'YYYY-MM-DD'), TO_DATE('2023-10-25', 'YYYY-MM-DD'), 'M00010')
SELECT * FROM dual;

-- Treatment
INSERT ALL
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00001', 'Dental Filling', 'Dental Caries', 'Amalgam filling', '30 minutes', 'Completed', 90.00, 15, 'Regular', 'Yes', 'BR0001', 'D00001')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00002', 'Teeth Cleaning', 'Plaque buildup', 'Routine cleaning', '45 minutes', 'Completed', 80.00, 'All Teeth', 'Regular', 'No', 'BR0002', 'D00002')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00003', 'Root Canal', 'Tooth Infection', 'Pulp removal', '2 hours', 'In Progress', 800.00, 23, 'Emergency', 'Yes', 'BR0003', 'D00003')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00004', 'Tooth Extraction', 'Impacted tooth', 'Surgical extraction', '1 hour', 'Completed', 85.00, 32, 'Regular', 'No', 'BR0004', 'D00004')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00005', 'Dental Crown', 'Broken tooth', 'Porcelain crown', '1.5 hours', 'Completed', 850.00, 19, 'Regular', 'Yes', 'BR0005', 'D00005')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00006', 'Teeth Whitening', 'Tooth staining', 'In-office whitening', '1 hour', 'Completed', 1000.00, 'All Teeth', 'Regular', 'No', 'BR0006', 'D00006')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00007', 'Dental Bridge', 'Missing tooth', 'Fixed dental bridge', '2 hours', 'Completed', 3000.00, '26-27', 'Regular', 'No', 'BR0007', 'D00007')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00008', 'Orthodontic Treatment', 'Malocclusion', 'Braces installation', '2 hours', 'Scheduled', 5000.00, 'All Teeth', 'Regular', 'Yes', 'BR0008', 'D00008')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00009', 'Gum Treatment', 'Gum disease', 'Scaling and root planing', '1 hour', 'Completed', 300.00, 'All Teeth', 'Regular', 'No', 'BR0009', 'D00009')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00010', 'Dental Implant', 'Tooth loss', 'Implant placement', '1.5 hours', 'In Progress', 4000.00, 18, 'Regular', 'Yes', 'BR0010', 'D00010')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00011', 'Dental Filling', 'Dental Caries', 'Composite filling', '45 minutes', 'Completed', 80.00, 14, 'Regular', 'No', 'BR0001', 'D00001')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00012', 'Teeth Cleaning', 'Plaque buildup', 'Deep cleaning', '1 hour', 'Completed', 80.00, 'All Teeth', 'Regular', 'No', 'BR0002', 'D00002')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00013', 'Bruxism Guard', 'Teeth grinding', 'Custom night guard', '1 hour', 'Scheduled', 800.00, 'All Teeth', 'Regular', 'No', 'BR0003', 'D00003')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00014', 'Dental Crown', 'Fractured tooth', 'Ceramic crown', '1.5 hours', 'Completed', 1000.00, 27, 'Regular', 'Yes', 'BR0004', 'D00004')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00015', 'Tooth Extraction', 'Wisdom tooth', 'Surgical extraction', '45 minutes', 'Completed', 100.00, 38, 'Regular', 'Yes', 'BR0005', 'D00005')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00016', 'Dental Filling', 'Dental Caries', 'Glass ionomer filling', '30 minutes', 'Completed', 80.00, 12, 'Regular', 'No', 'BR0006', 'D00006')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00017', 'Teeth Cleaning', 'Plaque buildup', 'Periodontal cleaning', '1 hour', 'Completed', 100.00, 'All Teeth', 'Regular', 'Yes', 'BR0007', 'D00007')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00018', 'Dental Bridge', 'Missing tooth', 'Removable dental bridge', '2 hours', 'Completed', 5000.00, '36-37', 'Regular', 'No', 'BR0008', 'D00008')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00019', 'Orthodontic Treatment', 'Crowded teeth', 'Invisalign treatment', '1.5 hours', 'Scheduled', 300.00, 'All Teeth', 'Regular', 'Yes', 'BR0009', 'D00009')
INTO "Treatment" ("Treat_ID", "Treat_Type", "Treat_Diag", "Treat_Notes", "Treat_Duration", "Treat_Stat", "Treat_Charges", "Tooth_Num", "Case_Note", "Xray_Required", "Br_ID", "D_ID") VALUES ('TRE00020', 'Gum Treatment', 'Gum disease', 'Gum surgery', '2 hours', 'In Progress', 1500.00, 'All Teeth', 'Emergency', 'No', 'BR0010', 'D00010')
SELECT * FROM dual;

-- Payment
INSERT ALL
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00001', 'Full Payment', 'Online Transfer', NULL, 120, TO_DATE('2023-01-05', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Kabilan', 'Maybank', 'PT00001', 'BR0001', 'TRE00001')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00002', 'Full Payment', 'Online Transfer', 'XYZ Insurance Sdn Bhd', 200, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'Orthodontics', 'XYZ001', 'Dependent', 'XYZ Insurance Sdn Bhd', 'CIMB', 'PT00002', 'BR0001', 'TRE00002')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00003', 'Installment Payment', 'Online Transfer', NULL, 80, TO_DATE('2023-03-15', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Asim Fauzi', 'Public Bank', 'PT00003', 'BR0002', 'TRE00003')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00004', 'Full Payment', 'Online Transfer', NULL, 150, TO_DATE('2023-04-20', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Poorush', 'Maybank', 'PT00004', 'BR0003', 'TRE00004')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00005', 'Full Payment', 'Online Transfer', NULL, 100, TO_DATE('2023-05-25', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Cyrus Rhys', 'CIMB', 'PT00005', 'BR0003', 'TRE00005')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00006', 'Full Payment', 'Online Transfer', 'ABC Insurance Sdn Bhd', 180, TO_DATE('2023-06-30', 'YYYY-MM-DD'), 'General', 'ABC002', 'Employee', 'ABC Insurance Sdn Bhd', 'RHB Bank', 'PT00006', 'BR0003', 'TRE00006')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00007', 'Full Payment', 'Online Transfer', NULL, 75, TO_DATE('2023-07-02', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Arfian Rapalee', 'HSBC', 'PT00007', 'BR0004', 'TRE00007')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00008', 'Installment Payment', 'Online Transfer', NULL, 130, TO_DATE('2023-08-08', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Zanita', 'Maybank', 'PT00008', 'BR0005', 'TRE00008')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00009', 'Full Payment', 'Online Transfer', NULL, 90, TO_DATE('2023-09-12', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Nasarudin', 'CIMB', 'PT00009', 'BR0006', 'TRE00009')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00010', 'Full Payment', 'Online Transfer', 'XYZ Insurance Sdn Bhd', 250, TO_DATE('2023-10-20', 'YYYY-MM-DD'), 'General', 'XYZ003', 'Spouse', 'XYZ Insurance Sdn Bhd', 'Public Bank', 'PT00010', 'BR0007', 'TRE00010')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00011', 'Full Payment', 'Online Transfer', NULL, 110, TO_DATE('2023-11-15', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Immamudien', 'Maybank', 'PT00011', 'BR0007', 'TRE00011')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00012', 'Full Payment', 'Online Transfer', NULL, 190, TO_DATE('2023-12-10', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Norsuhaili', 'CIMB', 'PT00012', 'BR0008', 'TRE00012')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00013', 'Installment Payment', 'Online Transfer', NULL, 85, TO_DATE('2024-01-07', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Norlyana', 'RHB Bank', 'PT00013', 'BR0008', 'TRE00013')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00014', 'Full Payment', 'Online Transfer', 'DEF Insurance Sdn Bhd', 150, TO_DATE('2024-02-14', 'YYYY-MM-DD'), 'Orthodontics', 'DEF004', 'Parent', 'DEF Insurance Sdn Bhd', 'Public Bank', 'PT00014', 'BR0009', 'TRE00014')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00015', 'Full Payment', 'Online Transfer', NULL, 95, TO_DATE('2024-03-22', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Shaifudin', 'HSBC', 'PT00015', 'BR0009', 'TRE00015')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00016', 'Full Payment', 'Online Transfer', NULL, 170, TO_DATE('2024-04-18', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Akma Hayati', 'Maybank', 'PT00016', 'BR0009', 'TRE00016')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00017', 'Full Payment', 'Online Transfer', NULL, 80, TO_DATE('2024-05-12', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Nadzirah', 'CIMB', 'PT00017', 'BR0010', 'TRE00017')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00018', 'Full Payment', 'Online Transfer', 'ABC Insurance Sdn Bhd', 220, TO_DATE('2024-06-29', 'YYYY-MM-DD'), 'General', 'ABC005', 'Dependent', 'ABC Insurance Sdn Bhd', 'RHB Bank', 'PT00018', 'BR0010', 'TRE00018')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00019', 'Installment Payment', 'Online Transfer', NULL, 120, TO_DATE('2024-07-01', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Melvin Raaj', 'HSBC', 'PT00019', 'BR0010', 'TRE00019')
INTO "Payment" ("P_ID", "P_Type", "P_Method", "P_Panel", "P_Amount", "P_Date", "Panel_Dept", "Panel_ID", "Payer_Relation", "P_Name", "P_BankName", "Pat_ID", "Br_ID", "Treat_ID") VALUES ('PAY00020', 'Installment Payment', 'Online Transfer', NULL, 140, TO_DATE('2024-08-05', 'YYYY-MM-DD'), NULL, NULL, 'Self-pay', 'Harrishraj', 'Public Bank', 'PT00020', 'BR0010', 'TRE00020')
SELECT * FROM dual;

-- Address
INSERT ALL
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00001', '2', 'GF', '3', 'Jalan Tasek Lama', '31400', 'MALAYSIA', 'Ipoh', 'Perak', 'Physical Address', 'BR0001', 'L00001')
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00002', '45', 'GF', '4', 'Persiaran SIBC', '32610', 'MALAYSIA', 'Seri Iskandar', 'Perak', 'Physical Address', 'BR0002', 'L00002')
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00003', '37', 'GF', '1', 'Jalan Medan Saujana', '34600', 'MALAYSIA', 'Kamunting', 'Perak', 'Physical Address', 'BR0003', 'L00003')
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00004', '12', 'GF', '2', 'Seksyen 13', '40100', 'MALAYSIA', 'Shah Alam', 'Selangor', 'Physical Address', 'BR0004', 'L00004')
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00005', '11', 'GF', '2', 'Bandar Baru Sungai Buloh', '40160', 'MALAYSIA', 'Sungai Buloh', 'Selangor', 'Physical Address', 'BR0005', 'L00005')
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00006', '5', 'GF', '4', 'Kg Datuk Keramat', '54000', 'MALAYSIA', 'Keramat', 'WP Kuala Lumpur', 'Physical Address', 'BR0006', 'L00006')
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00007', '7', 'GF', '5', 'Bandar Kinrara', '47180', 'MALAYSIA', 'Puchong', 'Selangor', 'Physical Address', 'BR0007', 'L00007')
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00008', '19', 'GF', '1', 'Persiaran Surian', '47810', 'MALAYSIA', 'Damansara', 'WP Kuala Lumpur', 'Physical Address', 'BR0008', 'L00008')
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00009', '21', 'GF', '4', 'Jalan Klang Lama', '58000', 'MALAYSIA', 'Klang', 'Selangor', 'Physical Address', 'BR0009', 'L00009')
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00010', '29', 'GF', '3', 'Precint 11', '62300', 'MALAYSIA', 'Putrajaya', 'WP Putrajaya', 'Physical Address', 'BR0010', 'L00010')
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00011', '15', 'GF', '1', 'Jalan Permai', '30200', 'MALAYSIA', 'Ipoh', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00012', '45', 'GF', '1', 'Taman Seri Indah', '34000', 'MALAYSIA', 'Taiping', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00013', '22', 'GF', '5', 'Taman Mutiara', '32000', 'MALAYSIA', 'Sitiawan', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00014', '17', 'GF', '2', 'Taman Seri', '40100', 'MALAYSIA', 'Shah Alam', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00015', '99', 'GF', '1', 'Jalan Bunga Raya', '47000', 'MALAYSIA', 'Sungai Buloh', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00016', '45', 'GF', '4', 'Jalan Bukit Angkasa', '55100', 'MALAYSIA', 'Kuala Lumpur', 'WP Kuala Lumpur', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00017', '23', 'GF', '2', 'Bandar Utama', '47800', 'MALAYSIA', 'Petaling Jaya', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00018', '18', 'GF', '8', 'Jalan Ampang', '50450', 'MALAYSIA', 'Kuala Lumpur', 'WP Kuala Lumpur', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00019', '56', 'GF', '1', 'Taman Sri Gombak', '68100', 'MALAYSIA', 'Batu Caves', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00020', '45', 'GF', '2', 'Presint 3', '62000', 'MALAYSIA', 'Putrajaya', 'WP Putrajaya', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00021', 'Lot 8', 'GF', '1', 'Jalan Perindustrian', '43000', 'MALAYSIA', 'Kajang', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00022', '56', '4F', '1', '12 Orchard Road', '238801', 'SINGAPORE', 'District 23', 'Singapore', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00023', '23', 'GF', '1', 'Jalan Teknologi', '70200', 'MALAYSIA', 'Seremban', 'Negeri Sembilan', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00024', 'Lot 12', NULL, '1', 'Jalan Industri', '32040', 'MALAYSIA', 'Seri Manjung', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00025', 'KM 10', 'GF', NULL, 'Jalan Pabrik', '83000', 'MALAYSIA', 'Batu Pahat', 'Johor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00026', 'Lot 7', 'GF', NULL, 'Jalan Perusahaan', '40400', 'MALAYSIA', 'Shah Alam', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00027', '15', 'GF', NULL, 'Jalan Perniagaan', '43200', 'MALAYSIA', 'Cheras', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00028', 'Lot 3', 'GF', NULL, 'Jalan Industri', '81000', 'MALAYSIA', 'Kulai', 'Johor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00029', 'Lot 9', NULL, NULL, 'Jalan Perusahaan', '43650', 'MALAYSIA', 'Bandar Baru Bangi', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00030', '7', NULL, NULL, 'Jalan Teknologi', '77700', 'MALAYSIA', 'Melaka', 'Melaka', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00031', '28', 'GF', '2', 'Taman Sri Hartamas', '50480', 'MALAYSIA', 'Sri Hartamas', 'WP Kuala Lumpur', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00032', '12', 'GF', '3', 'Jalan Bayu', '41200', 'MALAYSIA', 'Klang', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00033', '17', '5F', '3', 'Jalan Sungai Jernih', '93300', 'MALAYSIA', 'Kuching', 'Sarawak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00034', '1', '8F', 'G', 'Jalan Taman Desa', '56000', 'MALAYSIA', 'Kuala Lumpur', 'WP Kuala Lumpur', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00035', '2', '4F', 'V5J', 'Taman Dahlia', '53100', 'MALAYSIA', 'Kuala Lumpur', 'WP Kuala Lumpur', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00036', '8', '1F', 'H', 'Harmoni Heights', '68000', 'MALAYSIA', 'Ampang', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00037', '7', '4F', 'A', 'Jalan Seri Impian', '43000', 'MALAYSIA', 'Kajang', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00038', '4', '7F', 'I', 'Taman Merdeka', '84000', 'MALAYSIA', 'Muar', 'Johor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00039', 'Lot 46', NULL, NULL, 'Jalan Permai', '40000', 'MALAYSIA', 'Shah Alam', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00040', '12', NULL, NULL, 'Jalan Orked', '25000', 'MALAYSIA', 'Kuantan', 'Pahang', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00041', '98', NULL, NULL, 'Jalan Damai', '98000', 'MALAYSIA', 'Miri', 'Sarawak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00042', '4', '8F', 'DA', 'Jalan Cahaya', '43200', 'MALAYSIA', 'Cheras', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00043', '6', '5F', 'C', 'Jalan Indah', '71000', 'MALAYSIA', 'Port Dickson', 'Negeri Sembilan', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00044', 'Lot 1931', NULL, NULL, 'Jalan Seri Alam', '20100', 'MALAYSIA', 'Seremban', 'Negeri Sembilan', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00045', '21', NULL, NULL, 'Jalan Harmoni', '43000', 'MALAYSIA', 'Seri Kembangan', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00046', '4', '2F', 'K', 'Jalan Seri Aman', '81200', 'MALAYSIA', 'Johor Bahru', 'Johor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00047', '8', '3F', 'J', 'Jalan Indah', '43300', 'MALAYSIA', 'Seri Kembangan', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00048', '43', NULL, NULL, 'Jalan Baiduri', '80200', 'MALAYSIA', 'Johor Bahru', 'Johor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00049', '17', NULL, NULL, 'Taman Harmoni', '50400', 'MALAYSIA', 'Kuala Lumpur', 'WP Kuala Lumpur', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00050', '9', '6F', 'O', 'Taman Bunga Kekwa', '56000', 'MALAYSIA', 'Kuala Lumpur', 'WP Kuala Lumpur', 'Physical Address', NULL, NULL)
SELECT * FROM dual;

INSERT ALL
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00051', '1828', NULL, NULL, 'Jalan Gemilang', '32654', 'MALAYSIA', 'Ipoh', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00052', '13', NULL, NULL, 'Jalan Makmur', '35641', 'MALAYSIA', 'Seri Manjung', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00053', '6', '8F', 'M', 'Jalan Tauge', '23856', 'MALAYSIA', 'Sitiawan', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00054', '10', NULL, NULL, 'Jalan Rahmah', '31045', 'MALAYSIA', 'Batu Gajah', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00055', '12', NULL, NULL, 'Jalan Gunung Cekuh', '36854', 'MALAYSIA', 'Ipoh', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00056', '8', '1F', 'I', 'Jalan Bijih Timah', '33030', 'MALAYSIA', 'Ipoh', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00057', '6', NULL, NULL, 'Jalan Koo Kong', '35641', 'MALAYSIA', 'Ipoh', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00058', '14', NULL, NULL, 'Jalan Sawi Bayam', '34374', 'MALAYSIA', 'Taiping', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00059', '79', NULL, NULL, 'Jalan Serai Madu', '33712', 'MALAYSIA', 'Gerik', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00060', '6', '6F', 'E', 'Jalan Pandan Kuning', '32567', 'MALAYSIA', 'Sitiawan', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00061', 'Lot 59', NULL, NULL, 'Jalan Bulan', '30139', 'MALAYSIA', 'Teluk Intan', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00062', '36', NULL, NULL, 'Jalan Lidi Besi', '35775', 'MALAYSIA', 'Bagan Serai', 'Perak', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00063', '8', '5F', 'B', 'Jalan Hari-Hari', '40455', 'MALAYSIA', 'Shah Alam', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00064', '36A', NULL, NULL, 'Industrial Design', '40783', 'MALAYSIA', 'Shah Alam', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00065', '4', '2F', 'Q', 'Jalan Seri Syah', '40817', 'MALAYSIA', 'Shah Alam', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00066', 'Lot 1502', NULL, NULL, 'Taman Berkat Doa', '40618', 'MALAYSIA', 'Shah Alam', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00067', '44', NULL, NULL, 'Jalan Tun Perpatih', '47183', 'MALAYSIA', 'Sungai Buloh', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00068', '3', '4F', 'P', 'Taman Hulubalang', '47645', 'MALAYSIA', 'Sungai Buloh', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00069', '47', NULL, NULL, 'Taman Bahtera', '47920', 'MALAYSIA', 'Sungai Buloh', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00070', '35', NULL, NULL, 'Taman Seri Berduri', '47815', 'MALAYSIA', 'Sungai Buloh', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00071', '202', NULL, NULL, 'Jalan Datuk Saya', '54866', 'MALAYSIA', 'Keramat', 'WP Kuala Lumpur', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00072', '1', '8F', 'O', 'Jalan Kalimantang', '54743', 'MALAYSIA', 'Keramat', 'WP Kuala Lumpur', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00073', '3', '7F', 'L', 'Jalan Seri Seraya', '54182', 'MALAYSIA', 'Keramat', 'WP Kuala Lumpur', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00074', '9', NULL, NULL, 'Taman Kembang', '54859', 'MALAYSIA', 'Keramat', 'WP Kuala Lumpur', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00075', '14', NULL, NULL, 'Bandar Kinrara 100', '47876', 'MALAYSIA', 'Puchong', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00076', '7', NULL, NULL, 'Jalan Batu Puteh', '47588', 'MALAYSIA', 'Puchong', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00077', '4', '5F', 'K', 'Bandar Puching', '47198', 'MALAYSIA', 'Puchong', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00078', 'Lot 3720', NULL, NULL, 'Taman Kira Kira', '47108', 'MALAYSIA', 'Puchong', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00079', '5', '9F', 'A', 'Jalan Mail Ismail', '47883', 'MALAYSIA', 'Petaling Jaya', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00080', '39', NULL, NULL, 'SS2020', '47651', 'MALAYSIA', 'Petaling Jaya', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00081', '7', '3F', 'J', 'Jalan Ara Johari', '47354', 'MALAYSIA', 'Damansara', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00082', '12', NULL, NULL, 'SS2323', '47426', 'MALAYSIA', 'Damansara', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00083', '50', NULL, NULL, 'Jalan Putera Udang', '41852', 'MALAYSIA', 'Klang', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00084', '372', NULL, NULL, 'Jalan Kembang', '41361', 'MALAYSIA', 'Klang', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00085', '406', NULL, NULL, 'Jalan Bandar Botak', '41362', 'MALAYSIA', 'Klang', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00086', '20', NULL, NULL, 'Jalan Abang Ketam', '41553', 'MALAYSIA', 'Klang', 'Selangor', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00087', '2', NULL, NULL, 'Bersin 10', '62404', 'MALAYSIA', 'Putrajaya', 'WP Putrajaya', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00088', '9', '1F', 'C', 'Laman Cheongsam', '63367', 'MALAYSIA', 'Cyberjaya', 'WP Putrajaya', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00089', '59', NULL, NULL, 'Bersin 15', '62967', 'MALAYSIA', 'Putrajaya', 'WP Putrajaya', 'Physical Address', NULL, NULL)
INTO "Address" ("Add_ID", "Add_PropNum", "Add_Floor", "Add_Block", "Add_Street", "Add_PostCode", "Add_Country", "Add_District", "Add_State", "Add_Type", "Br_ID", "Lab_ID")
VALUES ('ADD00090', '21', NULL, NULL, 'Taman Billy', '63013', 'MALAYSIA', 'Cyberjaya', 'WP Putrajaya', 'Physical Address', NULL, NULL)
SELECT * FROM dual;

-- Transporter
INSERT ALL
INTO "Transporter" ("Driver_ID", "Driver_Name", "TP_Count", "TP_Code", "TP_Name", "TP_DateCollect", "TP_DateFinished", "TP_ContactNum", "Vhc_PlateNum", "Vhc_ReffNum", "W_ID", "Ass_ID") VALUES ('DR0001', 'Amirul Hakim', 1, 'TP0001', 'EcoDent Waste Solutions', TO_DATE('2022-01-05', 'YYYY-MM-DD'), TO_DATE('2022-01-06', 'YYYY-MM-DD'), '0123456789', 'WRT 1234', 'VRF001', 'W00001', 'A00001')
INTO "Transporter" ("Driver_ID", "Driver_Name", "TP_Count", "TP_Code", "TP_Name", "TP_DateCollect", "TP_DateFinished", "TP_ContactNum", "Vhc_PlateNum", "Vhc_ReffNum", "W_ID", "Ass_ID") VALUES ('DR0002', 'Nurul Aisha', 1, 'TP0002', 'CleanSmile Waste Management', TO_DATE('2022-03-12', 'YYYY-MM-DD'), TO_DATE('2022-03-13', 'YYYY-MM-DD'), '0167890123', 'JKL 5678', 'VRF002', 'W00002', 'A00002')
INTO "Transporter" ("Driver_ID", "Driver_Name", "TP_Count", "TP_Code", "TP_Name", "TP_DateCollect", "TP_DateFinished", "TP_ContactNum", "Vhc_PlateNum", "Vhc_ReffNum", "W_ID", "Ass_ID") VALUES ('DR0003', 'Faisal Hassan', 1, 'TP0003', 'GreenDental Disposal Services', TO_DATE('2022-05-21', 'YYYY-MM-DD'), TO_DATE('2022-05-22', 'YYYY-MM-DD'), '0192345678', 'BNM 9012', 'VRF003', 'W00003', 'A00003')
INTO "Transporter" ("Driver_ID", "Driver_Name", "TP_Count", "TP_Code", "TP_Name", "TP_DateCollect", "TP_DateFinished", "TP_ContactNum", "Vhc_PlateNum", "Vhc_ReffNum", "W_ID", "Ass_ID") VALUES ('DR0004', 'Siti Hajar', 1, 'TP0004', 'WasteAway Dental Solutions', TO_DATE('2022-07-08', 'YYYY-MM-DD'), TO_DATE('2022-07-09', 'YYYY-MM-DD'), '01187654321', 'RTY 3456', 'VRF004', 'W00004', 'A00004')
INTO "Transporter" ("Driver_ID", "Driver_Name", "TP_Count", "TP_Code", "TP_Name", "TP_DateCollect", "TP_DateFinished", "TP_ContactNum", "Vhc_PlateNum", "Vhc_ReffNum", "W_ID", "Ass_ID") VALUES ('DR0005', 'Ahmad Zaki', 1, 'TP0005', 'SmileSafe Waste Management', TO_DATE('2022-09-17', 'YYYY-MM-DD'), TO_DATE('2022-09-18', 'YYYY-MM-DD'), '0173456789', 'KLM 7890', 'VRF005', 'W00005', 'A00005')
INTO "Transporter" ("Driver_ID", "Driver_Name", "TP_Count", "TP_Code", "TP_Name", "TP_DateCollect", "TP_DateFinished", "TP_ContactNum", "Vhc_PlateNum", "Vhc_ReffNum", "W_ID", "Ass_ID") VALUES ('DR0006', 'Norazrina Jamal', 1, 'TP0006', 'DentRx Waste Disposal', TO_DATE('2022-11-03', 'YYYY-MM-DD'), TO_DATE('2022-11-04', 'YYYY-MM-DD'), '0145678901', 'PQR 2345', 'VRF006', 'W00006', 'A00006')
INTO "Transporter" ("Driver_ID", "Driver_Name", "TP_Count", "TP_Code", "TP_Name", "TP_DateCollect", "TP_DateFinished", "TP_ContactNum", "Vhc_PlateNum", "Vhc_ReffNum", "W_ID", "Ass_ID") VALUES ('DR0007', 'Hariz Fahmi', 1, 'TP0007', 'EnviroDent Waste Solutions', TO_DATE('2022-01-22', 'YYYY-MM-DD'), TO_DATE('2022-01-23', 'YYYY-MM-DD'), '0134567890', 'UVW 6789', 'VRF007', 'W00007', 'A00007')
INTO "Transporter" ("Driver_ID", "Driver_Name", "TP_Count", "TP_Code", "TP_Name", "TP_DateCollect", "TP_DateFinished", "TP_ContactNum", "Vhc_PlateNum", "Vhc_ReffNum", "W_ID", "Ass_ID") VALUES ('DR0008', 'Farah Liyana', 1, 'TP0008', 'GreenDent Waste Management', TO_DATE('2022-03-07', 'YYYY-MM-DD'), TO_DATE('2022-03-08', 'YYYY-MM-DD'), '0167890123', 'XYZ 0123', 'VRF008', 'W00008', 'A00008')
INTO "Transporter" ("Driver_ID", "Driver_Name", "TP_Count", "TP_Code", "TP_Name", "TP_DateCollect", "TP_DateFinished", "TP_ContactNum", "Vhc_PlateNum", "Vhc_ReffNum", "W_ID", "Ass_ID") VALUES ('DR0009', 'Khairul Azman', 1, 'TP0009', 'PureSmile Waste Disposal', TO_DATE('2022-05-16', 'YYYY-MM-DD'), TO_DATE('2022-05-17', 'YYYY-MM-DD'), '0182345678', 'GHI 4567', 'VRF009', 'W00009', 'A00009')
INTO "Transporter" ("Driver_ID", "Driver_Name", "TP_Count", "TP_Code", "TP_Name", "TP_DateCollect", "TP_DateFinished", "TP_ContactNum", "Vhc_PlateNum", "Vhc_ReffNum", "W_ID", "Ass_ID") VALUES ('DR0010', 'Azura Tan', 1, 'TP0010', 'SmileCycle Dental Waste Services', TO_DATE('2022-07-01', 'YYYY-MM-DD'), TO_DATE('2022-07-02', 'YYYY-MM-DD'), '0123456789', 'DEF 8901', 'VRF010', 'W00010', 'A00010')
SELECT * FROM dual;

-- Facility
INSERT ALL
INTO "Facility" ("Fac_ID", "Fac_StateCode", "Fac_Name", "Fac_PhoneNum", "Fac_Email", "Fac_BankNum", "Fac_BankName", "Op_Date", "Op_Type", "Bin_Num", "W_ID", "M_ID") VALUES ('F00001', '08', 'EcoDent Waste Solutions', '0123456781', 'eco.waste@gmail.com', '2394857698', 'MAYBANK', TO_DATE('2023-01-23', 'YYYY-MM-DD'), 'Incinerator, Storage', '16723', 'W00001', 'M00001')
INTO "Facility" ("Fac_ID", "Fac_StateCode", "Fac_Name", "Fac_PhoneNum", "Fac_Email", "Fac_BankNum", "Fac_BankName", "Op_Date", "Op_Type", "Bin_Num", "W_ID", "M_ID") VALUES ('F00002', '08', 'CleanSmile Waste Management', '0167890122', 'clean.smile@gmail.com', '2938274847', 'CIMB', TO_DATE('2023-06-06', 'YYYY-MM-DD'), 'Incinerator, Storage', '56472', 'W00002', 'M00002')
INTO "Facility" ("Fac_ID", "Fac_StateCode", "Fac_Name", "Fac_PhoneNum", "Fac_Email", "Fac_BankNum", "Fac_BankName", "Op_Date", "Op_Type", "Bin_Num", "W_ID", "M_ID") VALUES ('F00003', '08', 'GreenDental Disposal Services', '0192345673', 'green.dental@gmail.com', '2938472490', 'CIMB', TO_DATE('2023-02-27', 'YYYY-MM-DD'), 'Incinerator, Storage', '11334', 'W00003', 'M00003')
INTO "Facility" ("Fac_ID", "Fac_StateCode", "Fac_Name", "Fac_PhoneNum", "Fac_Email", "Fac_BankNum", "Fac_BankName", "Op_Date", "Op_Type", "Bin_Num", "W_ID", "M_ID") VALUES ('F00004', '10', 'WasteAway Dental Solutions', '0118765434', 'wasteaway.solutions@gmail.com', '4823937201', 'CIMB', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Incinerator, Storage', '28854', 'W00004', 'M00004')
INTO "Facility" ("Fac_ID", "Fac_StateCode", "Fac_Name", "Fac_PhoneNum", "Fac_Email", "Fac_BankNum", "Fac_BankName", "Op_Date", "Op_Type", "Bin_Num", "W_ID", "M_ID") VALUES ('F00005', '10', 'SmileSafe Waste Management', '0173456785', 'smile.safe@gmail.com', '3847592038', 'MAYBANK', TO_DATE('2022-12-12', 'YYYY-MM-DD'), 'Incinerator, Storage', '12412', 'W00005', 'M00005')
INTO "Facility" ("Fac_ID", "Fac_StateCode", "Fac_Name", "Fac_PhoneNum", "Fac_Email", "Fac_BankNum", "Fac_BankName", "Op_Date", "Op_Type", "Bin_Num", "W_ID", "M_ID") VALUES ('F00006', '14', 'DentRx Waste Disposal', '0145678906', 'dent.rx@gmail.com', '9998203301', 'MAYBANK', TO_DATE('2022-05-08', 'YYYY-MM-DD'), 'Incinerator, Storage', '19021', 'W00006', 'M00006')
INTO "Facility" ("Fac_ID", "Fac_StateCode", "Fac_Name", "Fac_PhoneNum", "Fac_Email", "Fac_BankNum", "Fac_BankName", "Op_Date", "Op_Type", "Bin_Num", "W_ID", "M_ID") VALUES ('F00007', '10', 'EnviroDent Waste Solutions', '0134567897', 'enviro.dent@gmail.com', '1001920391', 'CIMB', TO_DATE('2022-11-11', 'YYYY-MM-DD'), 'Incinerator, Storage', '20001', 'W00007', 'M00007')
INTO "Facility" ("Fac_ID", "Fac_StateCode", "Fac_Name", "Fac_PhoneNum", "Fac_Email", "Fac_BankNum", "Fac_BankName", "Op_Date", "Op_Type", "Bin_Num", "W_ID", "M_ID") VALUES ('F00008', '14', 'GreenDent Waste Management', '0167890128', 'green.dent@gmail.com', '2889103872', 'MAYBANK', TO_DATE('2023-06-04', 'YYYY-MM-DD'), 'Incinerator, Storage', '11106', 'W00008', 'M00008')
INTO "Facility" ("Fac_ID", "Fac_StateCode", "Fac_Name", "Fac_PhoneNum", "Fac_Email", "Fac_BankNum", "Fac_BankName", "Op_Date", "Op_Type", "Bin_Num", "W_ID", "M_ID") VALUES ('F00009', '10', 'PureSmile Waste Disposal', '0182345679', 'pure.smile@gmail.com', '9288291009', 'CIMB', TO_DATE('2022-02-22', 'YYYY-MM-DD'), 'Incinerator, Storage', '21053', 'W00009', 'M00009')
INTO "Facility" ("Fac_ID", "Fac_StateCode", "Fac_Name", "Fac_PhoneNum", "Fac_Email", "Fac_BankNum", "Fac_BankName", "Op_Date", "Op_Type", "Bin_Num", "W_ID", "M_ID") VALUES ('F00010', '16', 'SmileCycle Dental Waste Services', '0123456780', 'smile.cycle@gmail.com', '1199728001', 'MAYBANK', TO_DATE('2021-01-11', 'YYYY-MM-DD'), 'Incinerator, Storage', '15509', 'W00010', 'M00010')
SELECT * FROM dual;

-- Waste
INSERT ALL
INTO "Waste" ("W_ID", "W_Name", "W_Cat", "W_BinNum", "W_Weight", "W_Date_Create", "W_Desc", "W_Req", "Hand_Instruct", "Seg_Required", "Inv_ID", "Lab_ID", "Br_ID", "Driver_ID", "E_ID", "Fac_ID", "Mach_ID") VALUES ('W00001', 'CLINICAL WASTE', 'SW404', 16723, '1', TO_DATE('2023-06-27', 'YYYY-MM-DD'), 'General Waste', 'Designated waste bins', 'Do not destroy by landfill', 'No', 'INV0011', NULL, 'BR0001', 'DR0001', 'E00031', 'F00001', NULL)
INTO "Waste" ("W_ID", "W_Name", "W_Cat", "W_BinNum", "W_Weight", "W_Date_Create", "W_Desc", "W_Req", "Hand_Instruct", "Seg_Required", "Inv_ID", "Lab_ID", "Br_ID", "Driver_ID", "E_ID", "Fac_ID", "Mach_ID") VALUES ('W00002', 'CLINICAL WASTE', 'SW501', 18372, '0.5', TO_DATE('2023-06-30', 'YYYY-MM-DD'), 'Expired Medicine', 'Store in compatible containers', 'To be encapsule', 'No', 'INV0001', NULL, 'BR0002', 'DR0002', 'E00032', 'F00002', NULL)
INTO "Waste" ("W_ID", "W_Name", "W_Cat", "W_BinNum", "W_Weight", "W_Date_Create", "W_Desc", "W_Req", "Hand_Instruct", "Seg_Required", "Inv_ID", "Lab_ID", "Br_ID", "Driver_ID", "E_ID", "Fac_ID", "Mach_ID") VALUES ('W00003', 'CLINICAL WASTE', 'SW422', 19801, '1.2', TO_DATE('2023-06-29', 'YYYY-MM-DD'), 'Expired Medicine', 'Store in compatible containers', 'To be encapsule', 'No', 'INV0002', NULL, 'BR0003', 'DR0003', 'E00033', 'F00003', NULL)
INTO "Waste" ("W_ID", "W_Name", "W_Cat", "W_BinNum", "W_Weight", "W_Date_Create", "W_Desc", "W_Req", "Hand_Instruct", "Seg_Required", "Inv_ID", "Lab_ID", "Br_ID", "Driver_ID", "E_ID", "Fac_ID", "Mach_ID") VALUES ('W00004', 'CLINICAL WASTE', 'SW423', 11972, '0.8', TO_DATE('2023-06-28', 'YYYY-MM-DD'), 'Antibiotics', 'Store in designated containers', 'Consult local regulations', 'No', 'INV0003', NULL, 'BR0004', 'DR0004', 'E00034', 'F00004', NULL)
INTO "Waste" ("W_ID", "W_Name", "W_Cat", "W_BinNum", "W_Weight", "W_Date_Create", "W_Desc", "W_Req", "Hand_Instruct", "Seg_Required", "Inv_ID", "Lab_ID", "Br_ID", "Driver_ID", "E_ID", "Fac_ID", "Mach_ID") VALUES ('W00005', 'CLINICAL WASTE', 'SW417', 17638, '0.35', TO_DATE('2023-06-25', 'YYYY-MM-DD'), 'Expired Medicine', 'Store in compatible containers', 'Segregate based on categories', 'Yes', 'INV0004', NULL, 'BR0005', 'DR0005', 'E00035', 'F00005', NULL)
INTO "Waste" ("W_ID", "W_Name", "W_Cat", "W_BinNum", "W_Weight", "W_Date_Create", "W_Desc", "W_Req", "Hand_Instruct", "Seg_Required", "Inv_ID", "Lab_ID", "Br_ID", "Driver_ID", "E_ID", "Fac_ID", "Mach_ID") VALUES ('W00006', 'CLINICAL WASTE', 'SW323', 39827, '1.27', TO_DATE('2023-07-01', 'YYYY-MM-DD'), 'General Waste', 'Designated waste bins', 'Segregate based on categories', 'Yes', 'INV0012', NULL, 'BR0006', 'DR0006', 'E00036', 'F00006', NULL)
INTO "Waste" ("W_ID", "W_Name", "W_Cat", "W_BinNum", "W_Weight", "W_Date_Create", "W_Desc", "W_Req", "Hand_Instruct", "Seg_Required", "Inv_ID", "Lab_ID", "Br_ID", "Driver_ID", "E_ID", "Fac_ID", "Mach_ID") VALUES ('W00007', 'CLINICAL WASTE', 'SW325', 11378, '1.03', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 'Chemical Waste', 'According to SDS', 'Use appropriate PPE', 'No', 'INV0013', NULL, 'BR0007', 'DR0007', 'E00037', 'F00007', NULL)
INTO "Waste" ("W_ID", "W_Name", "W_Cat", "W_BinNum", "W_Weight", "W_Date_Create", "W_Desc", "W_Req", "Hand_Instruct", "Seg_Required", "Inv_ID", "Lab_ID", "Br_ID", "Driver_ID", "E_ID", "Fac_ID", "Mach_ID") VALUES ('W00008', 'CLINICAL WASTE', 'SW301', 28166, '2.02', TO_DATE('2023-07-07', 'YYYY-MM-DD'), 'Laboratory Waste', 'Leak-proof bags', 'Do not destroy by landfill', 'No', 'INV0014', 'L00008', 'BR0008', 'DR0008', 'E00038', 'F00008', 'MACH0015')
INTO "Waste" ("W_ID", "W_Name", "W_Cat", "W_BinNum", "W_Weight", "W_Date_Create", "W_Desc", "W_Req", "Hand_Instruct", "Seg_Required", "Inv_ID", "Lab_ID", "Br_ID", "Driver_ID", "E_ID", "Fac_ID", "Mach_ID") VALUES ('W00009', 'CLINICAL WASTE', 'SW404', 38177, '2.1', TO_DATE('2023-06-26', 'YYYY-MM-DD'), 'Laboratory Waste', 'Use standardized labeling systems', 'Consult local regulations', 'No', 'INV0015', 'L00009', 'BR0009', 'DR0009', 'E00039', 'F00009', 'MACH0017')
INTO "Waste" ("W_ID", "W_Name", "W_Cat", "W_BinNum", "W_Weight", "W_Date_Create", "W_Desc", "W_Req", "Hand_Instruct", "Seg_Required", "Inv_ID", "Lab_ID", "Br_ID", "Driver_ID", "E_ID", "Fac_ID", "Mach_ID") VALUES ('W00010', 'CLINICAL WASTE', 'SW404', 12876, '1.5', TO_DATE('2023-07-05', 'YYYY-MM-DD'), 'Discarded sharps', 'Designated sharps containers', 'Sharp waste management', 'No', 'INV0016', NULL, 'BR0010', 'DR0010', 'E00040', 'F00010', NULL)
SELECT * FROM dual;

-- Inventory
INSERT ALL
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0001', 'Available', 100, 'Medicine', 'Bottles', 10, 'MED20210601', TO_DATE('2021-11-12', 'YYYY-MM-DD'), TO_DATE('2021-10-08', 'YYYY-MM-DD'), 80, 'S00003', 'O00001', 'TRAN0001')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0002', 'Available', 100, 'Medicine', 'Bottles', 10, 'MED20210602', TO_DATE('2020-09-25', 'YYYY-MM-DD'), TO_DATE('2021-05-02', 'YYYY-MM-DD'), 90, 'S00003', 'O00002', 'TRAN0002')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0003', 'Available', 200, 'Medicine', 'Bottles', 20, 'MED20210603', TO_DATE('2020-07-19', 'YYYY-MM-DD'), TO_DATE('2021-07-15', 'YYYY-MM-DD'), 150, 'S00003', 'O00003', 'TRAN0003')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0004', 'Available', 50, 'Medicine', 'Packs', 5, 'MED20210604', TO_DATE('2020-12-03', 'YYYY-MM-DD'), TO_DATE('2020-12-27', 'YYYY-MM-DD'), 40, 'S00003', 'O00004', 'TRAN0004')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0005', 'Available', 100, 'Medicine', 'Bottles', 10, 'MED20210605', TO_DATE('2021-06-28', 'YYYY-MM-DD'), TO_DATE('2020-11-09', 'YYYY-MM-DD'), 70, 'S00003', 'O00005', 'TRAN0005')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0006', 'Not Available', 100, 'Medicine', 'Bottles', 10, 'MED20210606', TO_DATE('2021-01-05', 'YYYY-MM-DD'), TO_DATE('2020-04-18', 'YYYY-MM-DD'), 0, 'S00007', 'O00006', 'TRAN0006')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0007', 'Available', 150, 'Medicine', 'Bottles', 15, 'MED20210607', TO_DATE('2020-10-17', 'YYYY-MM-DD'), TO_DATE('2021-08-22', 'YYYY-MM-DD'), 120, 'S00007', 'O00007', 'TRAN0007')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0008', 'Available', 50, 'Medicine', 'Bottles', 5, 'MED20210608', TO_DATE('2021-03-20', 'YYYY-MM-DD'), TO_DATE('2021-01-10', 'YYYY-MM-DD'), 40, 'S00007', 'O00008', 'TRAN0008')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0009', 'Available', 100, 'Medicine', 'Packs', 10, 'MED20210609', TO_DATE('2020-11-02', 'YYYY-MM-DD'), TO_DATE('2021-06-21', 'YYYY-MM-DD'), 80, 'S00007', 'O00009', 'TRAN0009')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0010', 'Available', 200, 'Medicine', 'Bottles', 20, 'MED20210610', TO_DATE('2021-02-14', 'YYYY-MM-DD'), TO_DATE('2020-09-03', 'YYYY-MM-DD'), 180, 'S00007', 'O00010', 'TRAN0010')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0011', 'Available', 100, 'Material', 'Units', 10, 'MTR20210601', TO_DATE('2020-08-28', 'YYYY-MM-DD'), TO_DATE('2020-07-14', 'YYYY-MM-DD'), 80, 'S00002', 'O00011', 'TRAN0011')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0012', 'Available', 100, 'Material', 'Units', 10, 'MTR20210602', TO_DATE('2021-12-30', 'YYYY-MM-DD'), TO_DATE('2020-10-30', 'YYYY-MM-DD'), 90, 'S00002', 'O00012', 'TRAN0012')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0013', 'Available', 200, 'Material', 'Units', 20, 'MTR20210603', TO_DATE('2020-06-10', 'YYYY-MM-DD'), TO_DATE('2021-03-05', 'YYYY-MM-DD'), 150, 'S00002', 'O00013', 'TRAN0013')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0014', 'Available', 50, 'Material', 'Packs', 5, 'MTR20210604', TO_DATE('2021-09-16', 'YYYY-MM-DD'), TO_DATE('2021-09-12', 'YYYY-MM-DD'), 40, 'S00002', 'O00014', 'TRAN0014')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0015', 'Available', 100, 'Material', 'Units', 10, 'MTR20210605', TO_DATE('2021-05-01', 'YYYY-MM-DD'), TO_DATE('2021-04-30', 'YYYY-MM-DD'), 70, 'S00002', 'O00015', 'TRAN0015')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0016', 'Not Available', 100, 'Material', 'Units', 10, 'MTR20210606', TO_DATE('2021-02-04', 'YYYY-MM-DD'), TO_DATE('2020-04-23', 'YYYY-MM-DD'), 0, 'S00005', 'O00016', 'TRAN0016')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0017', 'Available', 200, 'Material', 'Units', 20, 'MTR20210607', TO_DATE('2020-03-07', 'YYYY-MM-DD'), TO_DATE('2021-11-26', 'YYYY-MM-DD'), 120, 'S00005', 'O00017', 'TRAN0017')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0018', 'Available', 50, 'Material', 'Units', 5, 'MTR20210608', TO_DATE('2021-08-09', 'YYYY-MM-DD'), TO_DATE('2020-05-21', 'YYYY-MM-DD'), 40, 'S00005', 'O00018', 'TRAN0018')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0019', 'Available', 100, 'Material', 'Packs', 10, 'MTR20210609', TO_DATE('2021-07-24', 'YYYY-MM-DD'), TO_DATE('2020-08-13', 'YYYY-MM-DD'), 80, 'S00005', 'O00019', 'TRAN0019')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0020', 'Available', 200, 'Material', 'Units', 20, 'MTR20210610', TO_DATE('2020-01-18', 'YYYY-MM-DD'), TO_DATE('2021-12-16', 'YYYY-MM-DD'), 180, 'S00005', 'O00020', 'TRAN0020')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0021', 'Available', 100, 'Instrument', 'Pieces', 10, 'INS20210601', TO_DATE('2020-11-30', 'YYYY-MM-DD'), TO_DATE('2020-06-25', 'YYYY-MM-DD'), 80, 'S00001', 'O00021', 'TRAN0021')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0022', 'Available', 100, 'Instrument', 'Pieces', 10, 'INS20210602', TO_DATE('2021-02-22', 'YYYY-MM-DD'), TO_DATE('2020-01-16', 'YYYY-MM-DD'), 90, 'S00001', 'O00022', 'TRAN0022')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0023', 'Available', 200, 'Instrument', 'Pieces', 20, 'INS20210603', TO_DATE('2021-10-13', 'YYYY-MM-DD'), TO_DATE('2020-03-29', 'YYYY-MM-DD'), 150, 'S00004', 'O00023', 'TRAN0023')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0024', 'Available', 50, 'Instrument', 'Sets', 5, 'INS20210604', TO_DATE('2021-04-05', 'YYYY-MM-DD'), TO_DATE('2021-07-03', 'YYYY-MM-DD'), 40, 'S00004', 'O00024', 'TRAN0024')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0025', 'Available', 100, 'Instrument', 'Pieces', 10, 'INS20210605', TO_DATE('2020-05-15', 'YYYY-MM-DD'), TO_DATE('2021-06-12', 'YYYY-MM-DD'), 70, 'S00006', 'O00025', 'TRAN0025')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0026', 'Not Available', 100, 'Instrument', 'Pieces', 10, 'INS20210606', TO_DATE('2021-02-09', 'YYYY-MM-DD'), TO_DATE('2020-12-08', 'YYYY-MM-DD'), 0, 'S00006', 'O00026', 'TRAN0026')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0027', 'Available', 150, 'Instrument', 'Pieces', 15, 'INS20210607', TO_DATE('2021-01-27', 'YYYY-MM-DD'), TO_DATE('2020-09-17', 'YYYY-MM-DD'), 120, 'S00008', 'O00027', 'TRAN0027')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0028', 'Available', 50, 'Instrument', 'Pieces', 5, 'INS20210608', TO_DATE('2020-09-10', 'YYYY-MM-DD'), TO_DATE('2020-11-26', 'YYYY-MM-DD'), 40, 'S00008', 'O00028', 'TRAN0028')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0029', 'Available', 100, 'Instrument', 'Sets', 10, 'INS20210609', TO_DATE('2021-06-03', 'YYYY-MM-DD'), TO_DATE('2021-03-25', 'YYYY-MM-DD'), 80, 'S00008', 'O00029', 'TRAN0029')
INTO "Inventory" ("Inv_ID", "Inv_Stat", "Inv_Quota", "Inv_Type", "Inv_Unit_Measure", "Inv_Min_Count", "Inv_BatchNum", "Inv_DateUse", "Inv_LastRestock", "Inv_QtyHand", "Supp_ID", "O_ID", "Tran_ID") VALUES ('INV0030', 'Available', 200, 'Instrument', 'Pieces', 20, 'INS20210610', TO_DATE('2021-03-18', 'YYYY-MM-DD'), TO_DATE('2020-12-06', 'YYYY-MM-DD'), 180, 'S00008', 'O00030', 'TRAN0030')
SELECT * FROM dual;

-- Medicine
INSERT ALL
INTO "Medicine" ("Med_ID", "Med_Name", "Med_DosForm", "Med_Usg_Instruct", "Med_ExpDate", "Med_Ingred", "Med_SideEff", "Med_Usg_Freq", "Med_Stor_Req", "Med_ShelfLife", "Inv_ID")
VALUES ('MED0001', 'Dentalgel', 'Gel', 'Apply a small amount on gums', TO_DATE('2024-02-28', 'YYYY-MM-DD'), 'Benzocaine, Menthol', NULL, '3 times daily', 'Store below 25°C', '3 years', 'INV0001')
INTO "Medicine" ("Med_ID", "Med_Name", "Med_DosForm", "Med_Usg_Instruct", "Med_ExpDate", "Med_Ingred", "Med_SideEff", "Med_Usg_Freq", "Med_Stor_Req", "Med_ShelfLife", "Inv_ID")
VALUES ('MED0002', 'Mouthwash', 'Liquid', 'Rinse mouth for 30 seconds', TO_DATE('2023-11-15', 'YYYY-MM-DD'), 'Chlorhexidine', NULL, 'Once daily', NULL, '2 years', 'INV0002')
INTO "Medicine" ("Med_ID", "Med_Name", "Med_DosForm", "Med_Usg_Instruct", "Med_ExpDate", "Med_Ingred", "Med_SideEff", "Med_Usg_Freq", "Med_Stor_Req", "Med_ShelfLife", "Inv_ID")
VALUES ('MED0003', 'Toothpaste', 'Paste', 'Brush teeth twice a day', TO_DATE('2023-09-30', 'YYYY-MM-DD'), 'Sodium Fluoride, Mint', NULL, 'Twice daily', 'Store in cool, dry place', '1 year', 'INV0003')
INTO "Medicine" ("Med_ID", "Med_Name", "Med_DosForm", "Med_Usg_Instruct", "Med_ExpDate", "Med_Ingred", "Med_SideEff", "Med_Usg_Freq", "Med_Stor_Req", "Med_ShelfLife", "Inv_ID")
VALUES ('MED0004', 'Dental Floss', 'String', 'Use between teeth', TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'Nylon', NULL, 'Once daily', NULL, '2 years', 'INV0004')
INTO "Medicine" ("Med_ID", "Med_Name", "Med_DosForm", "Med_Usg_Instruct", "Med_ExpDate", "Med_Ingred", "Med_SideEff", "Med_Usg_Freq", "Med_Stor_Req", "Med_ShelfLife", "Inv_ID")
VALUES ('MED0005', 'Dental Tray', 'Tray', 'Use for teeth whitening', TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'Plastic', NULL, 'As needed', 'Store in a clean, dry place', '5 years', 'INV0005')
INTO "Medicine" ("Med_ID", "Med_Name", "Med_DosForm", "Med_Usg_Instruct", "Med_ExpDate", "Med_Ingred", "Med_SideEff", "Med_Usg_Freq", "Med_Stor_Req", "Med_ShelfLife", "Inv_ID")
VALUES ('MED0006', 'Pain Relief Gel', 'Gel', 'Apply on affected area', TO_DATE('2023-12-31', 'YYYY-MM-DD'), 'Lidocaine, Camphor', NULL, '4 times daily', 'Store below 30°C', '3 years', 'INV0006')
INTO "Medicine" ("Med_ID", "Med_Name", "Med_DosForm", "Med_Usg_Instruct", "Med_ExpDate", "Med_Ingred", "Med_SideEff", "Med_Usg_Freq", "Med_Stor_Req", "Med_ShelfLife", "Inv_ID")
VALUES ('MED0007', 'Oral Antiseptic', 'Spray', 'Spray on oral wounds', TO_DATE('2024-03-25', 'YYYY-MM-DD'), 'Benzalkonium Chloride', NULL, 'As needed', 'Store in a cool place', '2 years', 'INV0007')
INTO "Medicine" ("Med_ID", "Med_Name", "Med_DosForm", "Med_Usg_Instruct", "Med_ExpDate", "Med_Ingred", "Med_SideEff", "Med_Usg_Freq", "Med_Stor_Req", "Med_ShelfLife", "Inv_ID")
VALUES ('MED0008', 'Gum Healing Gel', 'Gel', 'Apply on inflamed gums', TO_DATE('2023-10-05', 'YYYY-MM-DD'), 'Aloe Vera, Vitamin E', NULL, '3 times daily', 'Store at room temperature', '2 years', 'INV0008')
INTO "Medicine" ("Med_ID", "Med_Name", "Med_DosForm", "Med_Usg_Instruct", "Med_ExpDate", "Med_Ingred", "Med_SideEff", "Med_Usg_Freq", "Med_Stor_Req", "Med_ShelfLife", "Inv_ID")
VALUES ('MED0009', 'Teeth Whitening Strips', 'Strips', 'Apply on teeth for 1 hour', TO_DATE('2024-04-15', 'YYYY-MM-DD'), 'Hydrogen Peroxide', NULL, 'Once daily', 'Store in a dry place', '2 years', 'INV0009')
INTO "Medicine" ("Med_ID", "Med_Name", "Med_DosForm", "Med_Usg_Instruct", "Med_ExpDate", "Med_Ingred", "Med_SideEff", "Med_Usg_Freq", "Med_Stor_Req", "Med_ShelfLife", "Inv_ID")
VALUES ('MED0010', 'Dental Pain Capsules', 'Capsules', 'Take one capsule if needed', TO_DATE('2024-07-10', 'YYYY-MM-DD'), 'Ibuprofen', 'Drowsiness, Nausea', 'if needed', 'Store in a cool, dry place', '3 years', 'INV0010')
SELECT * FROM dual;

-- Material
INSERT ALL
INTO "Material" ("Mat_ID", "Mat_Name", "Mat_Color", "Mat_ExpDate", "Mat_Usg_Instruct", "Mat_Stor_Req", "Mat_Hazard", "Mat_ShelfLife", "Mat_Usg_Qty", "Mat_Desc", "Inv_ID", "Lab_ID", "Mach_ID") VALUES ('MTR0001', 'Dental Alloy', 'Silver', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'Use for dental restorations', 'Store in a dry place', 'Non-toxic', '5 years', '100 units', 'Dental alloy for dental restorations', 'INV0011', NULL, NULL)
INTO "Material" ("Mat_ID", "Mat_Name", "Mat_Color", "Mat_ExpDate", "Mat_Usg_Instruct", "Mat_Stor_Req", "Mat_Hazard", "Mat_ShelfLife", "Mat_Usg_Qty", "Mat_Desc", "Inv_ID", "Lab_ID", "Mach_ID") VALUES ('MTR0002', 'Composite Resin', 'White', TO_DATE('2023-11-30', 'YYYY-MM-DD'), 'Use for tooth-colored fillings', 'Store in a cool place', NULL, '2 years', '50 grams', 'Tooth-colored resin for fillings', 'INV0012', NULL, NULL)
INTO "Material" ("Mat_ID", "Mat_Name", "Mat_Color", "Mat_ExpDate", "Mat_Usg_Instruct", "Mat_Stor_Req", "Mat_Hazard", "Mat_ShelfLife", "Mat_Usg_Qty", "Mat_Desc", "Inv_ID", "Lab_ID", "Mach_ID") VALUES ('MTR0003', 'Dental Cement', 'Grey', TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'Apply for dental bonding', 'Store below 25°C', 'Irritant, Flammable', '3 years', '10 grams', 'Cement for dental bonding', 'INV0013', NULL, NULL)
INTO "Material" ("Mat_ID", "Mat_Name", "Mat_Color", "Mat_ExpDate", "Mat_Usg_Instruct", "Mat_Stor_Req", "Mat_Hazard", "Mat_ShelfLife", "Mat_Usg_Qty", "Mat_Desc", "Inv_ID", "Lab_ID", "Mach_ID") VALUES ('MTR0004', 'Impression Tray', 'Blue', NULL, 'Use for dental impressions', NULL, NULL, NULL, NULL, 'Tray for dental impressions', 'INV0014', NULL, NULL)
INTO "Material" ("Mat_ID", "Mat_Name", "Mat_Color", "Mat_ExpDate", "Mat_Usg_Instruct", "Mat_Stor_Req", "Mat_Hazard", "Mat_ShelfLife", "Mat_Usg_Qty", "Mat_Desc", "Inv_ID", "Lab_ID", "Mach_ID") VALUES ('MTR0005', 'Rubber Dam', 'Green', TO_DATE('2023-09-20', 'YYYY-MM-DD'), 'Isolate teeth during treatment', 'Store in a dry place', NULL, '1 year', NULL, 'Latex sheet for tooth isolation', 'INV0015', NULL, NULL)
INTO "Material" ("Mat_ID", "Mat_Name", "Mat_Color", "Mat_ExpDate", "Mat_Usg_Instruct", "Mat_Stor_Req", "Mat_Hazard", "Mat_ShelfLife", "Mat_Usg_Qty", "Mat_Desc", "Inv_ID", "Lab_ID", "Mach_ID") VALUES ('MTR0006', 'Dental Burs', 'Assorted', NULL, 'Use for tooth preparation', 'Store in a cool place', NULL, '2 years', NULL, 'Assorted dental bur set', 'INV0016', NULL, NULL)
INTO "Material" ("Mat_ID", "Mat_Name", "Mat_Color", "Mat_ExpDate", "Mat_Usg_Instruct", "Mat_Stor_Req", "Mat_Hazard", "Mat_ShelfLife", "Mat_Usg_Qty", "Mat_Desc", "Inv_ID", "Lab_ID", "Mach_ID") VALUES ('MTR0007', 'Gutta Percha', 'Yellow', TO_DATE('2024-06-28', 'YYYY-MM-DD'), 'Use for root canal treatment', 'Store in a dry place', 'Non-toxic', '3 years', '60 points', 'Filling material for root canals', 'INV0017', NULL, NULL)
INTO "Material" ("Mat_ID", "Mat_Name", "Mat_Color", "Mat_ExpDate", "Mat_Usg_Instruct", "Mat_Stor_Req", "Mat_Hazard", "Mat_ShelfLife", "Mat_Usg_Qty", "Mat_Desc", "Inv_ID", "Lab_ID", "Mach_ID") VALUES ('MTR0008', 'Orthodontic Wire', 'Silver', NULL, 'Use for braces', NULL, NULL, NULL, NULL, 'Wire for orthodontic braces', 'INV0018', NULL, NULL)
INTO "Material" ("Mat_ID", "Mat_Name", "Mat_Color", "Mat_ExpDate", "Mat_Usg_Instruct", "Mat_Stor_Req", "Mat_Hazard", "Mat_ShelfLife", "Mat_Usg_Qty", "Mat_Desc", "Inv_ID", "Lab_ID", "Mach_ID") VALUES ('MTR0009', 'Dental Amalgam', 'Grey', TO_DATE('2023-10-05', 'YYYY-MM-DD'), 'Use for dental fillings', 'Store in a dry place', 'Toxic', '5 years', '50 grams', 'Filling material for dental restorations', 'INV0019', NULL, NULL)
INTO "Material" ("Mat_ID", "Mat_Name", "Mat_Color", "Mat_ExpDate", "Mat_Usg_Instruct", "Mat_Stor_Req", "Mat_Hazard", "Mat_ShelfLife", "Mat_Usg_Qty", "Mat_Desc", "Inv_ID", "Lab_ID", "Mach_ID") VALUES ('MTR0010', 'Etching Gel', 'Blue', TO_DATE('2024-04-15', 'YYYY-MM-DD'), 'Apply for enamel etching', 'Store in a cool place', 'Irritant', '2 years', '10 ml', 'Gel for enamel surface preparation', 'INV0020', NULL, NULL)
SELECT * FROM dual;

-- Instrument
INSERT ALL
INTO "Instrument" ("In_ID", "In_Name", "In_Type", "In_Color", "In_WarExpDate", "In_WarDuration", "In_Strer_Stat", "In_Clean_Proc", "In_Cert_Stat", "In_Desc", "Inv_ID")
VALUES ('INS0001', 'Dental Mirror', 'Diagnostic', 'Silver', TO_DATE('2024-03-15', 'YYYY-MM-DD'), '2 years', 'Sterilized', 'Autoclave at 121°C', 'Certified', 'Mirror used for intraoral examination', 'INV0021')
INTO "Instrument" ("In_ID", "In_Name", "In_Type", "In_Color", "In_WarExpDate", "In_WarDuration", "In_Strer_Stat", "In_Clean_Proc", "In_Cert_Stat", "In_Desc", "Inv_ID")
VALUES ('INS0002', 'Extraction Forceps', 'Surgical', 'Gold', TO_DATE('2023-11-30', 'YYYY-MM-DD'), '3 years', 'Sterilized', 'Autoclave at 134°C', 'Certified', 'Forceps used for tooth extractions', 'INV0022')
INTO "Instrument" ("In_ID", "In_Name", "In_Type", "In_Color", "In_WarExpDate", "In_WarDuration", "In_Strer_Stat", "In_Clean_Proc", "In_Cert_Stat", "In_Desc", "Inv_ID")
VALUES ('INS0003', 'Dental Drill', 'Operative', 'Silver', TO_DATE('2024-05-10', 'YYYY-MM-DD'), '1 year', 'Not sterilized', 'Clean with disinfectant', 'Certified', 'Drill used for tooth preparation', 'INV0023')
INTO "Instrument" ("In_ID", "In_Name", "In_Type", "In_Color", "In_WarExpDate", "In_WarDuration", "In_Strer_Stat", "In_Clean_Proc", "In_Cert_Stat", "In_Desc", "Inv_ID")
VALUES ('INS0004', 'Scaler', 'Periodontal', 'Silver', NULL, NULL, 'Sterilized', 'Autoclave at 134°C', 'Certified', 'Instrument used for scaling and root planing', 'INV0024')
INTO "Instrument" ("In_ID", "In_Name", "In_Type", "In_Color", "In_WarExpDate", "In_WarDuration", "In_Strer_Stat", "In_Clean_Proc", "In_Cert_Stat", "In_Desc", "Inv_ID")
VALUES ('INS0005', 'Dental Tweezers', 'Diagnostic', 'Silver', TO_DATE('2023-09-20', 'YYYY-MM-DD'), '2 years', 'Not sterilized', 'Clean with disinfectant', 'Not certified', 'Tweezers used for handling small dental objects', 'INV0025')
INTO "Instrument" ("In_ID", "In_Name", "In_Type", "In_Color", "In_WarExpDate", "In_WarDuration", "In_Strer_Stat", "In_Clean_Proc", "In_Cert_Stat", "In_Desc", "Inv_ID")
VALUES ('INS0006', 'Dental Syringe', 'Operative', 'Blue', NULL, NULL, 'Sterilized', 'Autoclave at 121°C', 'Certified', 'Syringe used for administering dental solutions', 'INV0026')
INTO "Instrument" ("In_ID", "In_Name", "In_Type", "In_Color", "In_WarExpDate", "In_WarDuration", "In_Strer_Stat", "In_Clean_Proc", "In_Cert_Stat", "In_Desc", "Inv_ID")
VALUES ('INS0007', 'Orthodontic Pliers', 'Orthodontic', 'Silver', TO_DATE('2024-06-28', 'YYYY-MM-DD'), '3 years', 'Sterilized', 'Autoclave at 121°C', 'Certified', 'Pliers used in orthodontic procedures', 'INV0027')
INTO "Instrument" ("In_ID", "In_Name", "In_Type", "In_Color", "In_WarExpDate", "In_WarDuration", "In_Strer_Stat", "In_Clean_Proc", "In_Cert_Stat", "In_Desc", "Inv_ID")
VALUES ('INS0008', 'Endodontic Files', 'Endodontic', 'Assorted', NULL, NULL, 'Not sterilized', 'Clean with disinfectant', 'Not certified', 'Files used in root canal treatment', 'INV0028')
INTO "Instrument" ("In_ID", "In_Name", "In_Type", "In_Color", "In_WarExpDate", "In_WarDuration", "In_Strer_Stat", "In_Clean_Proc", "In_Cert_Stat", "In_Desc", "Inv_ID")
VALUES ('INS0009', 'Dental Forceps', 'Surgical', 'Silver', TO_DATE('2023-10-05', 'YYYY-MM-DD'), '5 years', 'Sterilized', 'Autoclave at 134°C', 'Certified', 'Forceps used for dental extractions', 'INV0029')
INTO "Instrument" ("In_ID", "In_Name", "In_Type", "In_Color", "In_WarExpDate", "In_WarDuration", "In_Strer_Stat", "In_Clean_Proc", "In_Cert_Stat", "In_Desc", "Inv_ID")
VALUES ('INS0010', 'Mouth Mirror', 'Diagnostic', 'Silver', TO_DATE('2024-04-15', 'YYYY-MM-DD'), '2 years', 'Sterilized', 'Autoclave at 121°C', 'Certified', 'Mirror used for oral cavity examination', 'INV0030')
SELECT * FROM dual;

-- Machine
INSERT ALL
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0001', 'Denture Machine 1', 'Denture Machine', 'REG001', TO_DATE('2022-05-10', 'YYYY-MM-DD'), 150000, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'Mechy Supplies', TO_DATE('2023-05-10', 'YYYY-MM-DD'), '800 W', 'BR0001', 'O00031', 'TRAN0031', 'M00001', 'S00009', 'L00001')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0002', 'X-Ray Machine 1', 'X-Ray Machine', 'REG002', TO_DATE('2022-05-10', 'YYYY-MM-DD'), 250000, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'X Manufac', TO_DATE('2023-05-10', 'YYYY-MM-DD'), '1200 W', 'BR0001', 'O00032', 'TRAN0032', 'M00001', 'S00010', 'L00001')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0003', 'Denture Machine 2', 'Denture Machine', 'REG003', TO_DATE('2022-06-15', 'YYYY-MM-DD'), 145000, TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'Mechy Supplies', TO_DATE('2023-06-15', 'YYYY-MM-DD'), '850 W', 'BR0002', 'O00033', 'TRAN0033', 'M00002', 'S00009', 'L00002')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0004', 'X-Ray Machine 2', 'X-Ray Machine', 'REG004', TO_DATE('2022-06-15', 'YYYY-MM-DD'), 240000, TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'X Manufac', TO_DATE('2023-06-15', 'YYYY-MM-DD'), '1100 W', 'BR0002', 'O00034', 'TRAN0034', 'M00002', 'S00010', 'L00002')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0005', 'Denture Machine 3', 'Denture Machine', 'REG005', TO_DATE('2022-07-20', 'YYYY-MM-DD'), 155000, TO_DATE('2024-07-20', 'YYYY-MM-DD'), 'Mechy Supplies', TO_DATE('2023-07-20', 'YYYY-MM-DD'), '900 W', 'BR0003', 'O00035', 'TRAN0035', 'M00003', 'S00009', 'L00003')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0006', 'X-Ray Machine 3', 'X-Ray Machine', 'REG006', TO_DATE('2022-07-20', 'YYYY-MM-DD'), 260000, TO_DATE('2024-07-20', 'YYYY-MM-DD'), 'X Manufac', TO_DATE('2023-07-20', 'YYYY-MM-DD'), '1300 W', 'BR0003', 'O00036', 'TRAN0036', 'M00003', 'S00010', 'L00003')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0007', 'Denture Machine 4', 'Denture Machine', 'REG007', TO_DATE('2022-08-25', 'YYYY-MM-DD'), 160000, TO_DATE('2024-08-25', 'YYYY-MM-DD'), 'Mechy Supplies', TO_DATE('2023-08-25', 'YYYY-MM-DD'), '950 W', 'BR0004', 'O00037', 'TRAN0037', 'M00004', 'S00009', 'L00004')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0008', 'X-Ray Machine 4', 'X-Ray Machine', 'REG008', TO_DATE('2022-08-25', 'YYYY-MM-DD'), 270000, TO_DATE('2024-08-25', 'YYYY-MM-DD'), 'X Manufac', TO_DATE('2023-08-25', 'YYYY-MM-DD'), '1400 W', 'BR0004', 'O00038', 'TRAN0038', 'M00004', 'S00010', 'L00004')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0009', 'Denture Machine 5', 'Denture Machine', 'REG009', TO_DATE('2022-09-30', 'YYYY-MM-DD'), 165000, TO_DATE('2024-09-30', 'YYYY-MM-DD'), 'Mechy Supplies', TO_DATE('2023-09-30', 'YYYY-MM-DD'), '1000 W', 'BR0005', 'O00039', 'TRAN0039', 'M00005', 'S00009', 'L00005')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0010', 'X-Ray Machine 5', 'X-Ray Machine', 'REG010', TO_DATE('2022-09-30', 'YYYY-MM-DD'), 280000, TO_DATE('2024-09-30', 'YYYY-MM-DD'), 'X Manufac', TO_DATE('2023-09-30', 'YYYY-MM-DD'), '1500 W', 'BR0005', 'O00040', 'TRAN0040', 'M00005', 'S00010', 'L00005')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0011', 'Denture Machine 6', 'Denture Machine', 'REG011', TO_DATE('2022-11-05', 'YYYY-MM-DD'), 175000, TO_DATE('2024-11-05', 'YYYY-MM-DD'), 'Mechy Supplies', TO_DATE('2023-11-05', 'YYYY-MM-DD'), '1050 W', 'BR0006', 'O00041', 'TRAN0041', 'M00006', 'S00009', 'L00006')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0012', 'X-Ray Machine 6', 'X-Ray Machine', 'REG012', TO_DATE('2022-11-05', 'YYYY-MM-DD'), 290000, TO_DATE('2024-11-05', 'YYYY-MM-DD'), 'X Manufac', TO_DATE('2023-11-05', 'YYYY-MM-DD'), '1600 W', 'BR0006', 'O00042', 'TRAN0042', 'M00006', 'S00010', 'L00006')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0013', 'Denture Machine 7', 'Denture Machine', 'REG013', TO_DATE('2022-12-10', 'YYYY-MM-DD'), 180000, TO_DATE('2024-12-10', 'YYYY-MM-DD'), 'Mechy Supplies', TO_DATE('2023-12-10', 'YYYY-MM-DD'), '1100 W', 'BR0007', 'O00043', 'TRAN0043', 'M00007', 'S00009', 'L00007')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0014', 'X-Ray Machine 7', 'X-Ray Machine', 'REG014', TO_DATE('2022-12-10', 'YYYY-MM-DD'), 310000, TO_DATE('2024-12-10', 'YYYY-MM-DD'), 'X Manufac', TO_DATE('2023-12-10', 'YYYY-MM-DD'), '1700 W', 'BR0007', 'O00044', 'TRAN0044', 'M00007', 'S00010', 'L00007')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0015', 'Denture Machine 8', 'Denture Machine', 'REG015', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 185000, TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'Mechy Supplies', TO_DATE('2024-01-15', 'YYYY-MM-DD'), '1150 W', 'BR0008', 'O00045', 'TRAN0045', 'M00008', 'S00009', 'L00008')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0016', 'X-Ray Machine 8', 'X-Ray Machine', 'REG016', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 330000, TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'X Manufac', TO_DATE('2024-01-15', 'YYYY-MM-DD'), '1800 W', 'BR0008', 'O00046', 'TRAN0046', 'M00008', 'S00010', 'L00008')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0017', 'Denture Machine 9', 'Denture Machine', 'REG017', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 190000, TO_DATE('2025-02-20', 'YYYY-MM-DD'), 'Mechy Supplies', TO_DATE('2024-02-20', 'YYYY-MM-DD'), '1200 W', 'BR0009', 'O00047', 'TRAN0047', 'M00009', 'S00009', 'L00009')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0018', 'X-Ray Machine 9', 'X-Ray Machine', 'REG018', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 350000, TO_DATE('2025-02-20', 'YYYY-MM-DD'), 'X Manufac', TO_DATE('2024-02-20', 'YYYY-MM-DD'), '1900 W', 'BR0009', 'O00048', 'TRAN0048', 'M00009', 'S00010', 'L00009')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0019', 'Denture Machine 10', 'Denture Machine', 'REG019', TO_DATE('2023-03-25', 'YYYY-MM-DD'), 195000, TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'Mechy Supplies', TO_DATE('2024-03-25', 'YYYY-MM-DD'), '1250 W', 'BR0010', 'O00049', 'TRAN0049', 'M00010', 'S00009', 'L00010')
INTO "Machine" ("Mach_ID", "Mach_Name", "Mach_Type", "Mach_RegNum", "Mach_InstallDate", "Mach_Price", "Mach_WarExpDate", "Mach_SProvider", "Next_MaintenanceDate", "Energy_Consump", "Br_ID", "O_ID", "Tran_ID", "M_ID", "Supp_ID", "Lab_ID") VALUES ('MACH0020', 'X-Ray Machine 10', 'X-Ray Machine', 'REG020', TO_DATE('2023-03-25', 'YYYY-MM-DD'), 370000, TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'X Manufac', TO_DATE('2024-03-25', 'YYYY-MM-DD'), '2000 W', 'BR0010', 'O00050', 'TRAN0050', 'M00010', 'S00010', 'L00010')
SELECT * FROM dual;

-- FacilityAddress
INSERT ALL
INTO "FacilityAddress" ("Fac_ID", "Add_ID") VALUES ('F00001', 'ADD00011')
INTO "FacilityAddress" ("Fac_ID", "Add_ID") VALUES ('F00002', 'ADD00012')
INTO "FacilityAddress" ("Fac_ID", "Add_ID") VALUES ('F00003', 'ADD00013')
INTO "FacilityAddress" ("Fac_ID", "Add_ID") VALUES ('F00004', 'ADD00014')
INTO "FacilityAddress" ("Fac_ID", "Add_ID") VALUES ('F00005', 'ADD00015')
INTO "FacilityAddress" ("Fac_ID", "Add_ID") VALUES ('F00006', 'ADD00016')
INTO "FacilityAddress" ("Fac_ID", "Add_ID") VALUES ('F00007', 'ADD00017')
INTO "FacilityAddress" ("Fac_ID", "Add_ID") VALUES ('F00008', 'ADD00018')
INTO "FacilityAddress" ("Fac_ID", "Add_ID") VALUES ('F00009', 'ADD00019')
INTO "FacilityAddress" ("Fac_ID", "Add_ID") VALUES ('F00010', 'ADD00020')
SELECT * FROM dual;

-- PatientAddress
INSERT ALL
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00001', 'ADD00031')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00002', 'ADD00032')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00003', 'ADD00033')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00004', 'ADD00034')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00005', 'ADD00035')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00006', 'ADD00036')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00007', 'ADD00037')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00008', 'ADD00038')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00009', 'ADD00039')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00010', 'ADD00040')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00011', 'ADD00041')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00012', 'ADD00042')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00013', 'ADD00043')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00014', 'ADD00044')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00015', 'ADD00045')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00016', 'ADD00046')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00017', 'ADD00047')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00018', 'ADD00048')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00019', 'ADD00049')
INTO "PatientAddress" ("Pat_ID", "Add_ID") VALUES ('PT00020', 'ADD00050')
SELECT * FROM dual;

-- EmployeeAddress
INSERT ALL
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00001', 'ADD00051')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00002', 'ADD00052')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00003', 'ADD00053')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00004', 'ADD00054')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00005', 'ADD00055')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00006', 'ADD00056')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00007', 'ADD00057')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00008', 'ADD00058')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00009', 'ADD00059')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00010', 'ADD00060')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00011', 'ADD00061')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00012', 'ADD00062')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00013', 'ADD00063')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00014', 'ADD00064')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00015', 'ADD00065')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00016', 'ADD00066')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00017', 'ADD00067')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00018', 'ADD00068')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00019', 'ADD00069')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00020', 'ADD00070')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00021', 'ADD00071')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00022', 'ADD00072')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00023', 'ADD00073')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00024', 'ADD00074')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00025', 'ADD00075')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00026', 'ADD00076')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00027', 'ADD00077')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00028', 'ADD00078')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00029', 'ADD00079')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00030', 'ADD00080')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00031', 'ADD00081')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00032', 'ADD00082')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00033', 'ADD00083')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00034', 'ADD00084')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00035', 'ADD00085')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00036', 'ADD00086')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00037', 'ADD00087')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00038', 'ADD00088')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00039', 'ADD00089')
INTO "EmployeeAddress" ("E_ID", "Add_ID") VALUES ('E00040', 'ADD00090')
SELECT * FROM dual;

-- SupplierAddress
INSERT ALL
INTO "SupplierAddress" ("Supp_ID", "Add_ID") VALUES ('S00001', 'ADD00021')
INTO "SupplierAddress" ("Supp_ID", "Add_ID") VALUES ('S00002', 'ADD00022')
INTO "SupplierAddress" ("Supp_ID", "Add_ID") VALUES ('S00003', 'ADD00023')
INTO "SupplierAddress" ("Supp_ID", "Add_ID") VALUES ('S00004', 'ADD00024')
INTO "SupplierAddress" ("Supp_ID", "Add_ID") VALUES ('S00005', 'ADD00025')
INTO "SupplierAddress" ("Supp_ID", "Add_ID") VALUES ('S00006', 'ADD00026')
INTO "SupplierAddress" ("Supp_ID", "Add_ID") VALUES ('S00007', 'ADD00027')
INTO "SupplierAddress" ("Supp_ID", "Add_ID") VALUES ('S00008', 'ADD00028')
INTO "SupplierAddress" ("Supp_ID", "Add_ID") VALUES ('S00009', 'ADD00029')
INTO "SupplierAddress" ("Supp_ID", "Add_ID") VALUES ('S00010', 'ADD00030')
SELECT * FROM dual;

-- SupplierBranch
INSERT ALL
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00001', 'BR0001')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00001', 'BR0001')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00002', 'BR0002')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00003', 'BR0002')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00003', 'BR0003')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00004', 'BR0003')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00004', 'BR0003')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00004', 'BR0004')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00005', 'BR0004')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00005', 'BR0004')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00005', 'BR0005')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00005', 'BR0005')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00006', 'BR0006')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00006', 'BR0007')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00007', 'BR0007')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00007', 'BR0007')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00007', 'BR0008')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00008', 'BR0008')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00008', 'BR0008')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00008', 'BR0008')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00009', 'BR0009')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00009', 'BR0009')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00010', 'BR0010')
INTO "SupplierBranch" ("Supp_ID", "Br_ID") VALUES ('S00010', 'BR0010')
SELECT * FROM dual;

-- PatientTreatment
INSERT ALL
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00001', 'TRE00001')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00002', 'TRE00002')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00003', 'TRE00003')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00004', 'TRE00004')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00005', 'TRE00005')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00006', 'TRE00006')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00007', 'TRE00007')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00008', 'TRE00008')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00009', 'TRE00009')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00010', 'TRE00010')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00011', 'TRE00011')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00012', 'TRE00012')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00013', 'TRE00013')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00014', 'TRE00014')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00015', 'TRE00015')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00016', 'TRE00016')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00017', 'TRE00017')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00018', 'TRE00018')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00019', 'TRE00019')
INTO "PatientTreatment" ("Pat_ID", "Treat_ID") VALUES ('PT00020', 'TRE00020')
SELECT * FROM dual;

-- PatientBranch
INSERT ALL
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00001', 'BR0001')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00002', 'BR0002')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00003', 'BR0003')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00004', 'BR0004')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00005', 'BR0005')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00006', 'BR0006')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00007', 'BR0007')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00008', 'BR0008')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00009', 'BR0009')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00010', 'BR0010')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00011', 'BR0001')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00012', 'BR0002')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00013', 'BR0003')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00014', 'BR0004')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00015', 'BR0005')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00016', 'BR0006')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00017', 'BR0007')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00018', 'BR0008')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00019', 'BR0009')
INTO "PatientBranch" ("Pat_ID", "Br_ID") VALUES ('PT00020', 'BR0010')
SELECT * FROM dual;

-- DentistPatient
INSERT ALL
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00001', 'PT00001')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00002', 'PT00002')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00003', 'PT00003')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00004', 'PT00004')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00005', 'PT00005')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00006', 'PT00006')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00007', 'PT00007')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00008', 'PT00008')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00009', 'PT00009')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00010', 'PT00010')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00001', 'PT00011')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00002', 'PT00012')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00003', 'PT00013')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00004', 'PT00014')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00005', 'PT00015')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00006', 'PT00016')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00007', 'PT00017')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00008', 'PT00018')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00009', 'PT00019')
INTO "DentistPatient" ("D_ID", "Pat_ID") VALUES ('D00010', 'PT00020')
SELECT * FROM dual;

-- AssistantPatient
INSERT ALL
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00001', 'PT00001')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00002', 'PT00002')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00003', 'PT00003')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00004', 'PT00004')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00005', 'PT00005')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00006', 'PT00006')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00007', 'PT00007')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00008', 'PT00008')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00009', 'PT00009')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00010', 'PT00010')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00001', 'PT00011')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00002', 'PT00012')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00003', 'PT00013')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00004', 'PT00014')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00005', 'PT00015')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00006', 'PT00016')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00007', 'PT00017')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00008', 'PT00018')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00009', 'PT00019')
INTO "AssistantPatient" ("Ass_ID", "Pat_ID") VALUES ('A00010', 'PT00020')
SELECT * FROM dual;

-- PatientSocMed
INSERT ALL
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00001', 'SM0001')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00002', 'SM0002')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00003', 'SM0003')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00004', 'SM0004')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00005', 'SM0005')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00006', 'SM0006')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00007', 'SM0007')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00008', 'SM0008')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00009', 'SM0009')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00010', 'SM0010')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00011', 'SM0001')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00012', 'SM0002')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00013', 'SM0003')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00014', 'SM0004')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00015', 'SM0005')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00016', 'SM0006')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00017', 'SM0007')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00018', 'SM0008')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00019', 'SM0009')
INTO "PatientSocMedia" ("Pat_ID", "SM_ID") VALUES ('PT00020', 'SM0010')
SELECT * FROM dual;

-- EmployeeInventory
INSERT ALL
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00001', 'INV0001')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00002', 'INV0002')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00003', 'INV0003')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00005', 'INV0004')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00006', 'INV0005')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00007', 'INV0006')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00009', 'INV0007')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00010', 'INV0008')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00011', 'INV0009')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00013', 'INV0010')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00014', 'INV0011')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00015', 'INV0012')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00017', 'INV0013')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00018', 'INV0014')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00019', 'INV0015')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00021', 'INV0016')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00022', 'INV0017')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00023', 'INV0018')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00025', 'INV0019')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00026', 'INV0020')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00027', 'INV0021')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00029', 'INV0022')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00030', 'INV0023')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00031', 'INV0024')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00033', 'INV0025')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00034', 'INV0026')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00035', 'INV0027')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00037', 'INV0028')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00038', 'INV0029')
INTO "EmployeeInventory" ("E_ID", "Inv_ID") VALUES ('E00039', 'INV0030')
SELECT * FROM dual;

-- AssistantTreatment
INSERT ALL
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00001', 'TRE00001')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00002', 'TRE00002')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00003', 'TRE00003')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00004', 'TRE00004')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00005', 'TRE00005')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00006', 'TRE00006')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00007', 'TRE00007')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00008', 'TRE00008')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00009', 'TRE00009')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00010', 'TRE00010')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00001', 'TRE00011')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00002', 'TRE00012')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00003', 'TRE00013')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00004', 'TRE00014')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00005', 'TRE00015')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00006', 'TRE00016')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00007', 'TRE00017')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00008', 'TRE00018')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00009', 'TRE00019')
INTO "AssistantTreatment" ("Ass_ID", "Treat_ID") VALUES ('A00010', 'TRE00020')
SELECT * FROM dual;

-- TechnicianMachine
INSERT ALL
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00001', 'MACH0001')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00001', 'MACH0002')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00002', 'MACH0003')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00002', 'MACH0004')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00003', 'MACH0005')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00003', 'MACH0006')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00004', 'MACH0007')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00004', 'MACH0008')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00005', 'MACH0009')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00005', 'MACH0010')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00006', 'MACH0011')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00006', 'MACH0012')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00007', 'MACH0013')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00007', 'MACH0014')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00008', 'MACH0015')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00008', 'MACH0016')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00009', 'MACH0017')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00009', 'MACH0018')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00010', 'MACH0019')
INTO "TechnicianMachine" ("T_ID", "Mach_ID") VALUES ('T00010', 'MACH0020')
SELECT * FROM dual;

-- TransporterFacility
INSERT ALL
INTO "TransporterFacility" ("Driver_ID", "Fac_ID") VALUES ('DR0001', 'F00001')
INTO "TransporterFacility" ("Driver_ID", "Fac_ID") VALUES ('DR0002', 'F00002')
INTO "TransporterFacility" ("Driver_ID", "Fac_ID") VALUES ('DR0003', 'F00003')
INTO "TransporterFacility" ("Driver_ID", "Fac_ID") VALUES ('DR0004', 'F00004')
INTO "TransporterFacility" ("Driver_ID", "Fac_ID") VALUES ('DR0005', 'F00005')
INTO "TransporterFacility" ("Driver_ID", "Fac_ID") VALUES ('DR0006', 'F00006')
INTO "TransporterFacility" ("Driver_ID", "Fac_ID") VALUES ('DR0007', 'F00007')
INTO "TransporterFacility" ("Driver_ID", "Fac_ID") VALUES ('DR0008', 'F00008')
INTO "TransporterFacility" ("Driver_ID", "Fac_ID") VALUES ('DR0009', 'F00009')
INTO "TransporterFacility" ("Driver_ID", "Fac_ID") VALUES ('DR0010', 'F00010')
SELECT * FROM dual;

-- PatientInventory
INSERT ALL
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00001', 'INV0011')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00002', 'INV0012')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00002', 'INV0021')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00003', 'INV0022')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00004', 'INV0023')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00005', 'INV0013')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00006', 'INV0014')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00006', 'INV0024')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00007', 'INV0015')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00007', 'INV0025')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00008', 'INV0001')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00008', 'INV0016')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00008', 'INV0026')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00009', 'INV0002')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00009', 'INV0017')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00009', 'INV0027')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00010', 'INV0003')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00010', 'INV0018')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00010', 'INV0028')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00011', 'INV0018')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00011', 'INV0029')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00012', 'INV0019')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00012', 'INV0030')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00013', 'INV0020')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00013', 'INV0021')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00014', 'INV0011')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00015', 'INV0004')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00015', 'INV0012')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00015', 'INV0022')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00016', 'INV0005')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00017', 'INV0013')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00017', 'INV0023')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00018', 'INV0024')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00019', 'INV0006')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00019', 'INV0014')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00019', 'INV0025')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00020', 'INV0007')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00020', 'INV0015')
INTO "PatientInventory" ("Pat_ID", "Inv_ID") VALUES ('PT00020', 'INV0026')
SELECT * FROM dual;

-- BranchInventory
INSERT ALL
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0001', 'INV0001')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0002', 'INV0002')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0003', 'INV0003')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0004', 'INV0004')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0005', 'INV0005')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0006', 'INV0006')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0007', 'INV0007')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0008', 'INV0008')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0009', 'INV0009')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0010', 'INV0010')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0001', 'INV0011')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0002', 'INV0012')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0003', 'INV0013')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0004', 'INV0014')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0005', 'INV0015')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0006', 'INV0016')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0007', 'INV0017')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0008', 'INV0018')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0009', 'INV0019')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0010', 'INV0020')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0001', 'INV0021')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0002', 'INV0022')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0003', 'INV0023')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0004', 'INV0024')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0005', 'INV0025')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0006', 'INV0026')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0007', 'INV0027')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0008', 'INV0028')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0009', 'INV0029')
INTO "BranchInventory" ("Br_ID", "Inv_ID") VALUES ('BR0010', 'INV0030')
SELECT * FROM dual;

-- TreatmentInventory
INSERT ALL
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00001', 'INV0011')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00002', 'INV0021')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00003', 'INV0022')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00004', 'INV0023')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00005', 'INV0012')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00006', 'INV0013')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00007', 'INV0014')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00008', 'INV0001')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00009', 'INV0002')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00010', 'INV0003')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00011', 'INV0015')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00012', 'INV0024')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00013', 'INV0016')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00014', 'INV0025')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00015', 'INV0026')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00016', 'INV0004')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00017', 'INV0017')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00018', 'INV0027')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00019', 'INV0028')
INTO "TreatmentInventory" ("Treat_ID", "Inv_ID") VALUES ('TRE00020', 'INV0005')
SELECT * FROM dual;

-- Defining all foreign keys
ALTER TABLE "Employee"
ADD CONSTRAINT "FK_Employee_Branch"
FOREIGN KEY ("Br_ID") REFERENCES "Branch" ("Br_ID");

ALTER TABLE "Manager"
ADD CONSTRAINT "FK_Manager_Employee"
FOREIGN KEY ("E_ID") REFERENCES "Employee" ("E_ID");

ALTER TABLE "Technician"
ADD CONSTRAINT "FK_Technician_Employee"
FOREIGN KEY ("E_ID") REFERENCES "Employee" ("E_ID");

ALTER TABLE "Technician"
ADD CONSTRAINT "FK_Technician_Laboratory"
FOREIGN KEY ("Lab_ID") REFERENCES "Laboratory" ("Lab_ID");

ALTER TABLE "Dentist"
ADD CONSTRAINT "FK_Dentist_Employee"
FOREIGN KEY ("E_ID") REFERENCES "Employee" ("E_ID");

ALTER TABLE "Dentist"
ADD CONSTRAINT "FK_Dentist_Laboratory"
FOREIGN KEY ("Lab_ID") REFERENCES "Laboratory" ("Lab_ID");

ALTER TABLE "Assistant"
ADD CONSTRAINT "FK_Assistant_Employee"
FOREIGN KEY ("E_ID") REFERENCES "Employee" ("E_ID");

ALTER TABLE "SocMedia"
ADD CONSTRAINT "FK_SocMedia_Assistant"
FOREIGN KEY ("Ass_ID") REFERENCES "Assistant" ("Ass_ID");

ALTER TABLE "SocMedia"
ADD CONSTRAINT "FK_SocMedia_Branch"
FOREIGN KEY ("Br_ID") REFERENCES "Branch" ("Br_ID");

ALTER TABLE "Laboratory"
ADD CONSTRAINT "FK_Laboratory_Branch"
FOREIGN KEY ("Br_ID") REFERENCES "Branch" ("Br_ID");

ALTER TABLE "Salary"
ADD CONSTRAINT "FK_Salary_Transaction"
FOREIGN KEY ("Tran_ID") REFERENCES "Transaction" ("Tran_ID");

ALTER TABLE "Salary"
ADD CONSTRAINT "FK_Salary_Employee"
FOREIGN KEY ("E_ID") REFERENCES "Employee" ("E_ID");

ALTER TABLE "Transaction"
ADD CONSTRAINT "FK_Transaction_Supplier"
FOREIGN KEY ("Supp_ID") REFERENCES "Supplier" ("Supp_ID");

ALTER TABLE "Transaction"
ADD CONSTRAINT "FK_Transaction_Manager"
FOREIGN KEY ("M_ID") REFERENCES "Manager" ("M_ID");

ALTER TABLE "Transaction"
ADD CONSTRAINT "FK_Transaction_Facility"
FOREIGN KEY ("Fac_ID") REFERENCES "Facility" ("Fac_ID");

ALTER TABLE "Order"
ADD CONSTRAINT "FK_Order_Transaction"
FOREIGN KEY ("Tran_ID") REFERENCES "Transaction" ("Tran_ID");

ALTER TABLE "Order"
ADD CONSTRAINT "FK_Order_Supplier"
FOREIGN KEY ("Supp_ID") REFERENCES "Supplier" ("Supp_ID");

ALTER TABLE "Order"
ADD CONSTRAINT "FK_Order_Branch"
FOREIGN KEY ("Br_ID") REFERENCES "Branch" ("Br_ID");

ALTER TABLE "Supplier"
ADD CONSTRAINT "FK_Supplier_Manager"
FOREIGN KEY ("M_ID") REFERENCES "Manager" ("M_ID");

ALTER TABLE "Treatment"
ADD CONSTRAINT "FK_Treatment_Branch"
FOREIGN KEY ("Br_ID") REFERENCES "Branch" ("Br_ID");

ALTER TABLE "Treatment"
ADD CONSTRAINT "FK_Treatment_Dentist"
FOREIGN KEY ("D_ID") REFERENCES "Dentist" ("D_ID");

ALTER TABLE "Payment"
ADD CONSTRAINT "FK_Payment_Patient"
FOREIGN KEY ("Pat_ID") REFERENCES "Patient" ("Pat_ID");

ALTER TABLE "Payment"
ADD CONSTRAINT "FK_Payment_Branch"
FOREIGN KEY ("Br_ID") REFERENCES "Branch" ("Br_ID");

ALTER TABLE "Payment"
ADD CONSTRAINT "FK_Payment_Treatment"
FOREIGN KEY ("Treat_ID") REFERENCES "Treatment" ("Treat_ID");

ALTER TABLE "Address"
ADD CONSTRAINT "FK_Address_Branch"
FOREIGN KEY ("Br_ID") REFERENCES "Branch" ("Br_ID");

ALTER TABLE "Address"
ADD CONSTRAINT "FK_Address_Laboratory"
FOREIGN KEY ("Lab_ID") REFERENCES "Laboratory" ("Lab_ID");

ALTER TABLE "Transporter"
ADD CONSTRAINT "FK_Transporter_Waste"
FOREIGN KEY ("W_ID") REFERENCES "Waste" ("W_ID");

ALTER TABLE "Transporter"
ADD CONSTRAINT "FK_Transporter_Assistant"
FOREIGN KEY ("Ass_ID") REFERENCES "Assistant" ("Ass_ID");

ALTER TABLE "Facility"
ADD CONSTRAINT "FK_Facility_Waste"
FOREIGN KEY ("W_ID") REFERENCES "Waste" ("W_ID");

ALTER TABLE "Facility"
ADD CONSTRAINT "FK_Facility_Manager"
FOREIGN KEY ("M_ID") REFERENCES "Manager" ("M_ID");

ALTER TABLE "Waste"
ADD CONSTRAINT "FK_Waste_Inventory"
FOREIGN KEY ("Inv_ID") REFERENCES "Inventory" ("Inv_ID");

ALTER TABLE "Waste"
ADD CONSTRAINT "FK_Waste_Laboratory"
FOREIGN KEY ("Lab_ID") REFERENCES "Laboratory" ("Lab_ID");

ALTER TABLE "Waste"
ADD CONSTRAINT "FK_Waste_Branch"
FOREIGN KEY ("Br_ID") REFERENCES "Branch" ("Br_ID");

ALTER TABLE "Waste"
ADD CONSTRAINT "FK_Waste_Transporter"
FOREIGN KEY ("Driver_ID") REFERENCES "Transporter" ("Driver_ID");

ALTER TABLE "Waste"
ADD CONSTRAINT "FK_Waste_Employee"
FOREIGN KEY ("E_ID") REFERENCES "Employee" ("E_ID");

ALTER TABLE "Waste"
ADD CONSTRAINT "FK_Waste_Facility"
FOREIGN KEY ("Fac_ID") REFERENCES "Facility" ("Fac_ID");

ALTER TABLE "Waste"
ADD CONSTRAINT "FK_Waste_Machine"
FOREIGN KEY ("Mach_ID") REFERENCES "Machine" ("Mach_ID");

ALTER TABLE "Inventory"
ADD CONSTRAINT "FK_Inventory_Supplier"
FOREIGN KEY ("Supp_ID") REFERENCES "Supplier" ("Supp_ID");

ALTER TABLE "Inventory"
ADD CONSTRAINT "FK_Inventory_Order"
FOREIGN KEY ("O_ID") REFERENCES "Order" ("O_ID");

ALTER TABLE "Inventory"
ADD CONSTRAINT "FK_Inventory_Transaction"
FOREIGN KEY ("Tran_ID") REFERENCES "Transaction" ("Tran_ID");

ALTER TABLE "Medicine"
ADD CONSTRAINT "FK_Medicine_Inventory"
FOREIGN KEY ("Inv_ID") REFERENCES "Inventory" ("Inv_ID");

ALTER TABLE "Material"
ADD CONSTRAINT "FK_Material_Inventory"
FOREIGN KEY ("Inv_ID") REFERENCES "Inventory" ("Inv_ID");

ALTER TABLE "Material"
ADD CONSTRAINT "FK_Material_Machine"
FOREIGN KEY ("Mach_ID") REFERENCES "Machine" ("Mach_ID");

ALTER TABLE "Instrument"
ADD CONSTRAINT "FK_Instrument_Inventory"
FOREIGN KEY ("Inv_ID") REFERENCES "Inventory" ("Inv_ID");

ALTER TABLE "Machine"
ADD CONSTRAINT "FK_Machine_Branch"
FOREIGN KEY ("Br_ID") REFERENCES "Branch" ("Br_ID");

ALTER TABLE "Machine"
ADD CONSTRAINT "FK_Machine_Order"
FOREIGN KEY ("O_ID") REFERENCES "Order" ("O_ID");

ALTER TABLE "Machine"
ADD CONSTRAINT "FK_Machine_Transaction"
FOREIGN KEY ("Tran_ID") REFERENCES "Transaction" ("Tran_ID");

ALTER TABLE "Machine"
ADD CONSTRAINT "FK_Machine_Manager"
FOREIGN KEY ("M_ID") REFERENCES "Manager" ("M_ID");

ALTER TABLE "Machine"
ADD CONSTRAINT "FK_Machine_Supplier"
FOREIGN KEY ("Supp_ID") REFERENCES "Supplier" ("Supp_ID");

ALTER TABLE "Machine"
ADD CONSTRAINT "FK_Machine_Laboratory"
FOREIGN KEY ("Lab_ID") REFERENCES "Laboratory" ("Lab_ID");