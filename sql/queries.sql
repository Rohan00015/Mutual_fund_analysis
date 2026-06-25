SELECT *
FROM fact_aum
ORDER BY aum DESC
LIMIT 5;

SELECT
strftime('%Y-%m',date),
AVG(nav)
FROM fact_nav
GROUP BY 1;

SELECT
state,
COUNT(*)
FROM fact_transactions
GROUP BY state;

SELECT *
FROM fact_performance
WHERE expense_ratio < 1;

SELECT *
FROM fact_performance
ORDER BY one_year_return DESC
LIMIT 10;

-- Lowest risk funds

SELECT *
FROM dim_fund
ORDER BY risk_category;

-- Highest NAV

SELECT *
FROM fact_nav
ORDER BY nav DESC
LIMIT 10;

-- Most transactions

SELECT
amfi_code,
COUNT(*) total_txns
FROM fact_transactions
GROUP BY amfi_code
ORDER BY total_txns DESC;

-- Fund house counts

SELECT
fund_house,
COUNT(*)
FROM dim_fund
GROUP BY fund_house;

-- Average SIP amount

SELECT
AVG(amount_inr)
FROM fact_transactions
WHERE transaction_type='SIP';
