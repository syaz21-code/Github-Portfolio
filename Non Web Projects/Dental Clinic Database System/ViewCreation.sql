-- 5th File (View Statement)
DROP VIEW "DoctorTreat";

CREATE VIEW "DoctorTreat"
AS SELECT emp."E_ID", den."D_ID", tr."Treat_ID"
	FROM "Employee" emp
	JOIN "Dentist" den ON den."E_ID" = emp."E_ID"
	JOIN "Treatment" tr ON tr."D_ID" = den."D_ID"
	WHERE "E_Type" = 'Full-time'
	ORDER BY "E_ID";
	
-- Display the view content
SELECT * FROM "DoctorTreat";