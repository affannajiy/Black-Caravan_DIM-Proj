-- SECOND FILE

SELECT
    Staff.STAFF_WORK_EMAIL,
    SUM(Payment.Payment_total_amount) AS Total_Received
FROM STAFF_RESERVATION
JOIN Staff ON STAFF_RESERVATION.STAFF_ID = Staff.STAFF_ID
JOIN Reservation ON STAFF_RESERVATION.RESERVATION_ID = RESERVATION.RESERVATION_ID
JOIN Orders ON Reservation.Reservation_ID = Orders.Reservation_ID
JOIN Payment ON Orders.Order_ID = Payment.Order_ID
WHERE Orders.Order_Date = TO_TIMESTAMP('2025-02-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
    AND Payment.Payment_Tax < 10
GROUP BY Staff.STAFF_WORK_EMAIL;