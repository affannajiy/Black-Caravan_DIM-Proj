-- FIRST FILE

SELECT SupplierItem_name, Supplier_Companyname
FROM SupplierItem
JOIN Supplier ON SupplierItem.Supplier_id = Supplier.Supplier_id;