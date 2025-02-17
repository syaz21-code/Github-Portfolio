-- 1st Join File
SELECT lab."Lab_Email", mach."Mach_Name"
FROM "Laboratory" lab, "Machine" mach
WHERE lab."Lab_ID" = mach."Lab_ID";