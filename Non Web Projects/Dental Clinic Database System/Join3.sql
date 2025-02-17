-- 3rd Join File
SELECT ass."Ass_Fitness", ass."Ass_Ethic", emp."E_FName", emp."E_LName", br."Br_ID", br."Br_Name", ws."W_Name", ws."W_Cat", tp."Driver_Name", tp."Vhc_PlateNum", fac."Fac_Name", fac."Fac_StateCode"
FROM "Waste" ws
JOIN "Facility" fac ON fac."Fac_ID" = ws."Fac_ID"
JOIN "Transporter" tp ON tp."Driver_ID" = ws."Driver_ID"
JOIN "Branch" br ON br."Br_ID" = ws."Br_ID"
JOIN "Employee" emp ON emp."E_ID" = ws."E_ID"
JOIN "Assistant" ass ON ass."E_ID" = emp."E_ID"
WHERE "E_BankName" = 'CIMB'
AND "Br_Stat" = 'Open'
AND "Seg_Required" = 'No';
