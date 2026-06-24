import pandas as pd

fund_master = pd.read_csv("data/raw/01_fund_master.csv")
nav_history = pd.read_csv("data/raw/02_nav_history.csv")
aum_by_fund_house = pd.read_csv("data/raw/03_aum_by_fund_house.csv")
monthly_sip_inflows = pd.read_csv("data/raw/04_monthly_sip_inflows.csv")
category_inflows = pd.read_csv("data/raw/05_category_inflows.csv")
industry_folio_count = pd.read_csv("data/raw/06_industry_folio_count.csv")
scheme_performance = pd.read_csv("data/raw/07_scheme_performance.csv")
investor_transactions = pd.read_csv("data/raw/08_investor_transactions.csv")
portfolio_holdings = pd.read_csv("data/raw/09_portfolio_holdings.csv")
benchmark_indices = pd.read_csv("data/raw/10_benchmark_indices.csv")

print(fund_master.shape)
print(fund_master.dtypes)
print(fund_master.head())