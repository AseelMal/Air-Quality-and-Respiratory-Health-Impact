# Air Quality and Respiratory Health Impact

### Overview

Air pollution is a known risk factor for many respiratory diseases, from asthma to lung cancer. With growing concerns about global air quality, it's important to understand how it actually affects public health.
This project looks at the relationship between the Air Quality Index (AQI) and the prevalence and mortality rates of respiratory diseases across various countries from 2017 to 2023. It also considers other factors like urbanization, healthcare access, and recovery rates to see how they might influence health outcomes.

### Data sets

The datasets used in this project are available from Kaggle, and include:
- Dataset 1: Air Quality Index (AQI) across countries (CSV); https://www.kaggle.com/datasets/beridzeg45/air-quality-index-across-the-world
- Dataset 2: Respiratory health statistics (CSV); https://www.kaggle.com/datasets/malaiarasugraj/global-health-statistics/data

### Tools

- Microsoft Excel — Data Profiling & Wrangling
- DBeaver + DuckDB — SQL-based Data Cleaning, Transformation & Integration
- Tableau — Interactive Data Visualization & Dashboarding

### Data Cleaning/Preparation Steps

1. Apply Excel filter to the dataset (Excel) to examine the data and ensure proper organization.
2. Check for missing or strange values (Excel), particularly in critical columns like country or year.
3. Remove unnecessary columns (Excel), such as the "Disease Category" column if it's redundant for analysis.
4. Change data types (SQL), for instance, converting the "Availability of Vaccines/Treatment" column to VARCHAR to handle boolean values correctly.
5. Split the "City" column into two (Excel) into "City" and "Country" to make the data more structured.
6. Handle missing values in the "Country" column (SQL) by removing rows with null values.
7. Update values like "United Kingdom" to "UK" (SQL) for consistency across datasets.
8. Calculate average AQI per country and year (SQL) by grouping the data and computing the mean.
9. Merge AQI data with Health data using JOIN (SQL) to combine relevant information from both datasets based on "Country" and "Year".

### Exploratory Data Analysis

Does poor air quality actually lead to worse respiratory health outcomes?
To explore this, I began by analyzing the Average Air Quality Index (AQI) across countries and years. The stats showed that most countries had fairly low AQI values, averaging around 19, with a max of 85, min of 4, and a standard deviation of 14. A right-skewed histogram confirmed this, with a few high-AQI outliers standing out. Shifting focus to respiratory health indicators—including prevalence, incidence, and mortality rates—I noticed their values followed uniform distributions, averaging 10%, 8%, and 5% respectively. Surprisingly, diseases like COVID-19, HIV/AIDS, and Malaria dominated the data, while Asthma, which is directly linked to air quality, ranked lower.

Curious about possible relationships, I plotted scatter plots between AQI and each health metric and calculated correlation coefficients. Results? All correlations were near zero, meaning there was no strong linear relationship. In fact, some counterintuitive trends emerged—like slightly lower mortality at higher AQI levels—suggesting either confounding variables or data limitations. To dig deeper, I compared India and Australia, countries with very different AQI levels, and found nearly identical prevalence rates. I also looked at healthcare access and recovery rates, but again, correlations with AQI were weak.

Conclusion: While air quality is a critical environmental issue, this dataset suggests its direct impact on respiratory health outcomes is minimal or complex, potentially masked by other factors like healthcare infrastructure or socioeconomic conditions.

### Datafolio

![_Datafolio  (1)](https://github.com/user-attachments/assets/332e47da-fb5d-4503-9d5b-755e952a04e0)



### Dashboard

![AQI   Health Overview 1](https://github.com/user-attachments/assets/378e3434-432d-418c-a549-4d1d5cd9e571)


![AQI   Health Overview 2 ](https://github.com/user-attachments/assets/97b721a6-2865-4675-b48d-dd3698d92b7e)


The dashboard serves as a dynamic analytical tool that allows users to:

1.	Track Global Air Quality (AQI) Levels: Users can explore air pollution trends across different regions and compare them over time from 2017-2023.
2.	Analyse Disease Prevalence & Mortality Rates: By linking AQI data with disease statistics, users can identify correlations between pollution and health risks.
3.	Examine Healthcare Access & Recovery Trends: Understanding which regions have higher recovery rates and stronger healthcare access can inform strategies for improving global health.
4.	Compare Urbanization & Health Outcomes: Users can see how urban growth affects healthcare infrastructure, helping city planners make better healthcare decisions.

The dashboard is designed for ease of use and deep exploration. Users can:

1.	Filter by country, year, disease name, or age to see specific trends over time.
2.	Hover over data points to view precise figures and regional comparisons.
3.	Interact with visualizations such as line charts, scatter plots, and maps to explore relationships between variables.
4.	Compare multiple regions side by side, enabling cross country analysis for better policy recommendations.


### Results/Findings

Air Quality and Respiratory Health: A Weaker-than-Expected Connection

The dashboards showed that, even in areas with worse air quality, respiratory disease rates didn’t necessarily increase. This challenges the common assumption that more pollution directly leads to more illnesses. One possible explanation is that most of the regions in the dataset already maintain moderate to good air quality, meaning the differences aren’t drastic enough to reveal strong trends.

Healthcare Systems Play a Bigger Role

One of the most striking insights from the analysis is the crucial role that healthcare access plays in mitigating respiratory disease severity. The dashboards indicate that around 75% of patients receive adequate medical care, and recovery rates remain high regardless of air quality. This suggests that well-functioning healthcare systems can significantly buffer the effects of pollution by ensuring timely diagnosis and treatment.


### Future Work

The current dataset primarily includes regions with good - moderate air quality. To gain a clearer understanding of pollution’s effects, future studies should incorporate data from countries or cities with severe pollution levels. This could reveal stronger patterns that were not evident in this dataset. Also, the dashboards focus on annual trends, but many respiratory diseases develop over decades. A long-term study tracking individuals health over time could help detect delayed effects of pollution exposure, offering more definitive insights.
  
