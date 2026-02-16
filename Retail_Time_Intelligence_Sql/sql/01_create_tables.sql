CREATE DATABASE RetailTI;
GO
USE RetailTI;

CREATE TABLE dim_date (
    date_key        INT             NOT NULL PRIMARY KEY,  -- YYYYMMDD
    full_date       DATE            NOT NULL,
    day             TINYINT         NOT NULL,
    month           TINYINT         NOT NULL,
    month_name      VARCHAR(15)     NOT NULL,
    quarter         TINYINT         NOT NULL,
    year            SMALLINT        NOT NULL,
    week_number     TINYINT         NOT NULL,
    fiscal_month    TINYINT         NOT NULL,
    fiscal_quarter  TINYINT         NOT NULL,
    fiscal_year     SMALLINT        NOT NULL,
    is_weekend      BIT             NOT NULL,
    is_holiday      BIT             NOT NULL,
    holiday_name    VARCHAR(50)     NULL
);

SELECT * FROM dim_date;