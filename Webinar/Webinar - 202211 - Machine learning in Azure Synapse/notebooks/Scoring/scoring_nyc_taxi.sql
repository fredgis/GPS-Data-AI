-- Create a stored procedure for storing the scoring script.
CREATE PROCEDURE nyc_taxi_procedure
AS
BEGIN
-- Select input scoring data and assign aliases.
WITH InputData AS
(
    SELECT
        CAST([fareAmount] AS [real]) AS [fareAmount],
        CAST([paymentType] AS [bigint]) AS [paymentType],
        CAST([passengerCount] AS [bigint]) AS [passengerCount],
        CAST([tripDistance] AS [real]) AS [tripDistance],
        [tripTimeSecs],
        CAST([pickupTimeBin] AS [varchar]) AS [pickupTimeBin]
    FROM [dbo].[nyc_taxi]
)
-- Using T-SQL Predict command to score machine learning models. 
SELECT *
FROM PREDICT (MODEL = (SELECT [model] FROM aml_models WHERE [ID] = 'nyc_taxi_tip_predict:1'),
              DATA = InputData,
              RUNTIME = ONNX) WITH ([output_label] [bigint])
END
GO

-- Execute the above stored procedure.
EXEC nyc_taxi_procedure