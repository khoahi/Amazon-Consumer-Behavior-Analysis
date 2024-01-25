select * from dbo.[Amazon Customer Behavior Survey]

select count (timestamp) from dbo.[Amazon Customer Behavior Survey]

#Phân tích theo nguyên nhân Cart_Abandonment
- Phân tích frequency lượng KH đã thanh toán trên giỏ hàng
SELECT Cart_Completion_Frequency, COUNT(*) AS Quantity
FROM dbo.[Amazon Customer Behavior Survey]
WHERE Cart_Completion_Frequency IS NOT NULL
GROUP BY Cart_Completion_Frequency
Order by Quantity DESC
- Phân tích nguyên nhân dẫn đến Cart Abandonment
SELECT Cart_Abandonment_Factors AS 'Factors Lead To Abandonment', COUNT(*) AS Quantity
FROM dbo.[Amazon Customer Behavior Survey]
WHERE Cart_Abandonment_Factors IS NOT NULL
GROUP BY Cart_Abandonment_Factors
ORDER BY Quantity DESC;

#Phân tích feedback của khách hàng
_Satisfaction Level
SELECT Shopping_Satisfaction AS 'Level Of Satisfaction', COUNT(*) AS Quantity
FROM dbo.[Amazon Customer Behavior Survey]
WHERE Shopping_Satisfaction IS NOT NULL
GROUP BY Shopping_Satisfaction;
- Điểm tốt
SELECT Service_Appreciation AS 'Competitive Advantage', COUNT(*) AS Quantity
FROM dbo.[Amazon Customer Behavior Survey]
WHERE Service_Appreciation IS NOT NULL
GROUP BY Service_Appreciation
ORDER BY Quantity DESC;
- Điểm cần cải thiện
SELECT Improvement_Areas AS 'Improvement Areas', COUNT(*) AS Quantity
FROM dbo.[Amazon Customer Behavior Survey]
WHERE Improvement_Areas IS NOT NULL
GROUP BY Improvement_Areas
ORDER BY Quantity DESC;


