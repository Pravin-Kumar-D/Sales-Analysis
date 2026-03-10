
-- Create a new database to store Superstore data
Create database superstore

-- Switch context to the Superstore database
Use superstore

-- View raw Superstore data from the original table
Select * from [dbo].[Superstore]

-- Create a staging table by copying data from the raw Superstore table
Select * into stg_superstore
from [dbo].[Superstore]

-- Verify data loaded into the staging table
select * from stg_superstore

-- Identify duplicate records based on Order_ID and Product_ID
With CTE as
(
Select *, ROW_NUMBER() over (Partition by Order_ID,Product_ID Order by Row_id) as rn
from stg_superstore
)
select * from CTE where rn>1

-- Remove duplicate records while keeping the first occurrence
With CTE as
(
Select *, ROW_NUMBER() over (Partition by Order_ID,Product_ID Order by Row_id) as rn
from stg_superstore
)
Delete from CTE where rn>1

-- Clean and standardize text fields by trimming spaces and normalizing case
UPDATE Stg_Superstore
SET Customer_Name = LTRIM(RTRIM(Customer_Name)),
    City = UPPER(LTRIM(RTRIM(City))),
    State = UPPER(LTRIM(RTRIM(State))),
    Region = UPPER(LTRIM(RTRIM(Region))),
    Product_Name = LTRIM(RTRIM(Product_Name))

-- Add ShippingDelay column to calculate days between order and shipment
ALTER TABLE stg_superstore
ADD 
ShippingDelay AS DATEDIFF(day,Order_Date, Ship_Date)

-- Add ProfitMargin column with safe division to avoid divide-by-zero errors
ALTER TABLE stg_superstore
ADD 
ProfitMargin AS (
        CASE 
            WHEN Sales = 0 THEN 0
            ELSE Profit / NULLIF(Sales,0)
        END
  )

-- Add derived date columns for time-based analysis
ALTER TABLE stg_superstore
ADD
OrderYear AS (YEAR(Order_Date)),
OrderMonth AS (MONTH(Order_Date)),
OrderQuarter AS (DATEPART(QUARTER,Order_Date))

-- Identify data quality issues where shipping occurred before the order date
Select * from stg_superstore
where Ship_Date<Order_Date 