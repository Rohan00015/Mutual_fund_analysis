-- Dimension Table

CREATE TABLE dim_fund (
    amfi_code INTEGER PRIMARY KEY,
    fund_house TEXT,
    scheme_name TEXT,
    category TEXT,
    sub_category TEXT,
    risk_category TEXT
);

CREATE TABLE dim_date (
    date_id INTEGER PRIMARY KEY,
    date DATE
);

-- Fact Table: NAV

CREATE TABLE fact_nav (
    nav_id INTEGER PRIMARY KEY AUTOINCREMENT,
    amfi_code INTEGER,
    date_id INTEGER,
    nav REAL,
    FOREIGN KEY (amfi_code)
        REFERENCES dim_fund(amfi_code),
    FOREIGN KEY (date_id)
        REFERENCES dim_date(date_id)
);

-- Fact Table: Investor Transactions

CREATE TABLE fact_transactions (
    transaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
    investor_id INTEGER,
    amfi_code INTEGER,
    date_id INTEGER,
    transaction_type TEXT,
    amount_inr REAL,
    state TEXT,
    city TEXT,
    payment_mode TEXT,
    kyc_status TEXT,
    FOREIGN KEY (amfi_code)
        REFERENCES dim_fund(amfi_code),
    FOREIGN KEY (date_id)
        REFERENCES dim_date(date_id)
);

-- Fact Table: Scheme Performance

CREATE TABLE fact_performance (
    performance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    amfi_code INTEGER,
    expense_ratio REAL,
    one_year_return REAL,
    three_year_return REAL,
    five_year_return REAL,
    FOREIGN KEY (amfi_code)
        REFERENCES dim_fund(amfi_code)
);

-- Fact Table: AUM

CREATE TABLE fact_aum (
    aum_id INTEGER PRIMARY KEY AUTOINCREMENT,
    amfi_code INTEGER,
    date_id INTEGER,
    aum REAL,
    FOREIGN KEY (amfi_code)
        REFERENCES dim_fund(amfi_code),
    FOREIGN KEY (date_id)
        REFERENCES dim_date(date_id)
);