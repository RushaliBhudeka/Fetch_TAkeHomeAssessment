
--Which user spent the most money in the month of August?
SELECT TOP 1 [USER_ID],SUM(TOTAL_SPENT) AS MOST_SPENT FROM DBO.RECEIPTS
WHERE MONTH([PURCHASE_DATE])=8
GROUP BY [USER_ID]
ORDER BY SUM(TOTAL_SPENT) DESC

---------------------------------------------------------------------------------------------------------------------------

--How many users scanned in each month?
SELECT MONTH([DATE_SCANNED]) AS MONTHS,COUNT(DISTINCT [USER_ID]) AS NO_OF_USERS_SCANNED_PER_MONTH
FROM [dbo].[receipts]
group by MONTH([DATE_SCANNED])
ORDER BY MONTH([DATE_SCANNED]) 

---------------------------------------------------------------------------------------------------------------------------
