-- 4th Join File
SELECT  emp."E_FName", man."M_Lead_Skill", br."Br_Name", inv."Inv_Type", tr."Tran_Amount", med."Med_ShelfLife", o."O_Priority", supp."Supp_Name"
FROM "Employee" emp
JOIN "Manager" man ON man."E_ID" = emp."E_ID"
JOIN "Transaction" tr ON tr."M_ID" = man."M_ID"
JOIN "Order" o ON o."Tran_ID" = tr."Tran_ID"
JOIN "Supplier" supp ON supp."Supp_ID" = o."Supp_ID"
JOIN "Inventory" inv ON inv."Tran_ID" = tr."Tran_ID"
JOIN "Medicine" med ON med."Inv_ID" = inv."Inv_ID"
JOIN "BranchInventory" bri ON bri."Inv_ID" = inv."Inv_ID"
JOIN "Branch" br ON br."Br_ID" = bri."Br_ID"
WHERE "Inv_Unit_Measure" = 'Packs'
AND "Tran_Amount" > 500
AND "O_Qty" = 50
AND "Supp_Prod_Cat" = 'Dental Consumables'
ORDER BY "Tran_Amount" DESC;
