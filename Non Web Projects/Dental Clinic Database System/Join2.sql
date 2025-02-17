-- 2nd Join File
SELECT pay."P_Amount"
FROM "Patient" pat
JOIN "Payment" pay ON pay."Pat_ID" = pat."Pat_ID"
JOIN "PatientTreatment" ptr ON ptr."Pat_ID" = pat."Pat_ID"
JOIN "Treatment" tr ON tr."Treat_ID" = ptr."Treat_ID"
JOIN "Dentist" den ON den."D_ID" = tr."D_ID"
WHERE "Patient_Satisf" = 'Excellent'
AND "Pat_Race" = 'Indian'
GROUP BY pay."P_Amount"
ORDER BY pay."P_Amount";

