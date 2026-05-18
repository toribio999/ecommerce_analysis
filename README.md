# 📊 Ecommerce Sales Analysis

Analytical dashboard developed in Power BI for a multi-channel e-commerce business. It enables monitoring of sales performance, profit margins and purchasing behaviour across 4 pages of interactive analysis with cross-filtering.

---

## 🛠️ Technology Stack

- **Power BI Desktop** — report development and visualisations
- **DAX** — calculated measures (MoM%, Profit Margin, dynamic KPIs)
- **Power Query (M)** — dataset transformation and cleaning
- **Excel / CSV** — source data

---

## 📁 Project Structure

```
ecommerce-sales-analysis/
├── report/
│   └── ecommerce_sales.pbix
├── data/
│   └── dataset.csv
├── images/
│   ├── home.png
│   ├── gender_disclosure.png
│   ├── profit_analysis.png
│   └── extra.png
└── README.md

```

## 📄 Report Pages

### 🏠 Dashboard 1/3 — Home Overview

This dashboard corresponds to the main page (1/3) of the ecommerce analysis and provides a general overview of business performance. It summarises the key indicators for the current quarter, including total sales, profits, average profit margin and month-on-month growth (MoM), enabling a quick assessment of financial health. Monthly sales and profit trends are also presented to identify patterns and seasonality, alongside a breakdown by product category showing both the contribution to sales and the profitability of each segment. The top filters allow segmentation of the analysis by order priority, device type, payment method and quarter, enabling dynamic data exploration.


![Name](./images/home_over.png)


**💡 Key Insights**

- **Fashion dominates sales** with 55.62% of the total ($43M), being by far the most relevant category in both volume and profit generated.
- **The overall margin of 46.22%** is solid, although Electronics shows the lowest profit of the four categories, suggesting higher costs or a lower average selling price.
- **The monthly sales trend** shows peaks in May and December, indicating marked seasonality that can be leveraged for promotional campaigns.
- **Home & Furniture** represents the second largest sales block (25.29%), with relevant profit, making it a strategic growth category.
- **MoM growth (average 10.89%)** shows an overall positive trend, closing at around 10.89%, confirming sustained growth; however, it is not linear. There are strong peaks (April–May) followed by sharp drops (June and August), indicating month-on-month volatility. This suggests that growth is driven by one-off events (promotions, campaigns or seasonality) rather than completely stable demand.


**Relevant Comments**

Overall, solid and consistent growth is observed in both sales and profits, with positive MoM growth and healthy margins (~46%), indicating a profitable and well-controlled operation. However, not all categories contribute equally: Fashion clearly leads in sales volume, while other categories maintain similar margins but a lower share, which opens an opportunity to optimise the product mix or push underexploited categories. From a time perspective, there is some seasonality with peaks towards the middle and end of the year, suggesting that campaigns or seasonal demand are having a significant influence. Overall, the business is growing, but the logical next step is not simply to sell more, but to diversify revenue and improve the performance of lower-contributing categories without sacrificing margin.

MoM shows a generally positive trend, closing at around 10.89%, confirming sustained growth; however, it is not linear. There are strong peaks (April–May) followed by sharp drops (June and August), indicating month-on-month volatility. This suggests that growth is driven by one-off events (promotions, campaigns or seasonality) rather than completely stable demand.


### 👥 Dashboard 2/3 — Customer Analysis

This second dashboard of the **Ecommerce Sales Analysis** project provides an in-depth look at the profile and behaviour of the platform's customers. Complementing the general sales analysis from the first dashboard, the focus here shifts to who buys, how they buy and how frequently, enabling identification of key segments and loyalty patterns. The dashboard includes interactive filters by order priority, device type, payment method and quarter.


![Name](./images/client_analysis.png)

---

### 📌 Key KPIs

| Metric | Value |
|---|---|
| Unique Customers | 39,000 |
| Avg. Order Value | $2,000 |
| Orders per Customer | 1.32 |
| Repeat Rate | 26.07% |

---

### 📊 Results & Insights

**Gender Distribution**

Women account for **55.15%** of total sales (43 million) compared to **44.85%** for men (35 million). This difference is consistent across all dashboard visualisations, with the female segment being dominant both in sales volume and in number of unique customers month on month.

**Access Channel: Web vs. Mobile**

The **Web** channel concentrates the vast majority of sales volume across both genders, far outpacing Mobile. This indicates that, despite the rise of mobile commerce, customers on this platform still prefer or complete their purchases primarily via desktop, which may signal both a demographic profile and an opportunity for improvement in the mobile experience.

**Login Type and Value Generated**

**Member** users are by far the ones generating the highest profit, well above Guest, First SignUp and New. This highlights that membership acts as a value accelerator: registered and loyal customers not only buy more, but do so with higher order values. Incentivising the conversion from Guest to Member emerges as a clear strategic lever.

**Loyalty and Frequency**

With a repeat rate of **26.07%** and an average of **1.32 orders per customer**, there is ample room for improvement in retention. One in four customers makes a repeat purchase, which is a reasonable starting point, but suggests that reactivation and loyalty strategies (email marketing, points programmes, personalised offers) could have a significant impact.

**Monthly Evolution of Unique Customers**

The customer base remains stable between January and April, with a notable acceleration from **May** onwards. The highest peaks are recorded in **November and December**, aligned with seasonal campaigns such as Black Friday and the Christmas season. This marked seasonality underscores the importance of planning capacity and acquisition efforts well in advance for the final quarter of the year.

**Payment Method**

**Credit card** clearly dominates transaction volume, followed by **money order** and, to a lesser extent, **e-wallet** and other methods. The pattern is similar across genders, with no relevant differences in payment preferences.

**Top Customers**

The highest-value individual customers accumulate sales of between **$8,940 and $9,940**, with profits ranging from **$4,432 to $5,469** per customer. The cumulative total of the top 10 amounts to **$92,500 in sales and $49,561 in profit**, reflecting solid profitability in the premium segment and opening the door to personalised service strategies or VIP programmes.


## 📊 Dashboard 3/3 — Profit Analysis

The third and final panel of the analysis focuses on **business profitability**.

![Name](./images/profit_analysis.png)

The active catalogue comprises **42 unique products**, with an average discount applied of **3.04%** and an average profit per order (**Profit AOV**) of **$926**, reflecting a high ticket value and healthy margins.

The waterfall chart shows how total profit (~$38M) is built up by category: **Fashion** provides the most solid base (~$20M), followed by **Home & Furniture** and **Auto & Accessories**, while **Electronics**, despite being the category with the highest sales volume, adds the final increment. The quarterly analysis by category reveals **notable stability** throughout the year, with margins ranging between 40% and 45% across all segments and quarters, with no significant peaks or drops — a sign of a well-calibrated pricing and discount policy.

The discount vs. profit scatter plot reveals a slight tension: **Electronics and Fashion** operate with higher discounts (3–4%) but manage to maintain margins above 43%, suggesting that volume compensates for the discount. **Electronics** stands out particularly for its relatively large sales volume (larger bubble).

Finally, the **Top 10 most profitable products** ranking is led by **Apple Laptop**, **T-Shirts** and **Tyre**, which combine high percentage profit with controlled discounts. Products such as **Titak Watch** and **Car Pillow & Neck Rest** carry proportionally higher discounts, which could be reviewed to optimise net margin without sacrificing demand.


## 🎛️ Available Filters

All dashboards support cross-filtering via the following global slicers:

`Order Priority` · `Device Type` · `Payment Method` · `Quarter` · `Product Category` · `MonthName`

---
