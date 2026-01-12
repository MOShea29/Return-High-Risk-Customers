# Return-High-Risk-Customers

A short query that returns a set of high-risk customers, identified as those having a credit utilisation over 80% and at least one prior default.

The customer table contains the customer id, age, income, and region.

The accounts table contains the customer id, credit limit, and current balance.

The defaults table contains the customer id, and last default date, if any. 

An example output can be seen below.

"customer_id"	| "current_balance"	| "credit_limit"	| "credit_utilisation"	| "previous_defaults"
--------------|-------------------|-----------------|-----------------------|--------------------
6	            |    77000	        |           95000	|0.81052631578947368421	|  1
10	          |      90000	      |        105000	  |0.85714285714285714286	|  1
