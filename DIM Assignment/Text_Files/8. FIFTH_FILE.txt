-- FIFTH FILE

CREATE VIEW View_Supp_Asset_SuppItem AS
SELECT
    Supplier.Supplier_id,
    Asset.Asset_id,
    SupplierItem.SupplierItem_id
FROM Supplier
JOIN Asset ON Supplier.Supplier_id = Asset.Supplier_id
JOIN SupplierItem ON Supplier.Supplier_id = SupplierItem.Supplier_id
WHERE Supplier.SUPPLIER_SUPPLYFREQUENCY = 'Weekly';

SELECT * FROM View_Supp_Asset_SuppItem;

-- DROP VIEW View_Supp_Asset_SuppItem;