-- THIRD FILE

SELECT DISTINCT
    Person.Person_IC_Num,
    Person.Person_name,
    Franchise.Franchise_id,
    Franchise.Franchise_Name,
    Customer.Customer_id,
    Customer.Customer_total_spent,
    Reservation.Reservation_confirmed,
    Reservation.Reservation_table_no,
    Orders.Order_code,
    Orders.Order_totalquantityproduct,
    Payment.Payment_total_amount,
    Payment.Payment_method
FROM PERSON_FRANCHISE
         JOIN Person ON PERSON_FRANCHISE.Person_IC_Num = Person.Person_IC_Num
         JOIN Franchise ON PERSON_FRANCHISE.FRANCHISE_ID = Franchise.Franchise_id
         JOIN Customer ON Person.Person_IC_Num = Customer.Person_IC_Num
         JOIN Reservation ON Customer.Customer_id = Reservation.Customer_id
         JOIN Orders ON Reservation.Reservation_id = Orders.Reservation_id
         JOIN Payment ON Orders.Order_id = Payment.Order_id
         JOIN Person_Payment ON Payment.Payment_id = Person_Payment.Payment_id
         JOIN Person_Order ON Orders.Order_id = Person_Order.Order_id
WHERE Customer.Customer_total_spent > 20
  AND Orders.Order_totalquantityproduct < 5
  AND Payment.Payment_total_amount > 100;