SELECT * FROM customer.customer_segmentation_data1 Limit 10;
Select gender, Count(*) from customer.customer_segmentation_data1 group by gender;
Select preferred_category, count(*) from customer.customer_segmentation_data1 group by preferred_category;
Select
	SUM(case when age is null then 1 else 0 end) as null_age,
    SUM(case when gender is null then 1 else 0 end) as null_gender,
    SUM(case when income is null then 1 else 0 end) as null_income,
	SUM(case when spending_score is null then 1 else 0 end) as null_spending_score,
    SUM(case when membership_years is null then 1 else 0 end) as null_membership_years,
    SUM(case when purchase_frequency is null then 1 else 0 end) as null_purchase_frequency,
    SUM(case when last_purchase_amount is null then 1 else 0 end) as null_last_purchase_amount
FROM customer.customer_segmentation_data1;

Select preferred_category, count(*)
from customer.customer_segmentation_data1
group by preferred_category
having count(*) > 1;