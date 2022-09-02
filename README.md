# Capstone-Project "Cyclistic Data Analysis"
### Author: Shyam chand
### Date: 2022-08-24


# Introduction 
Welcome to the Cyclistic bike-share analysis case study! In this case study, I perform a real-world tasks of a junior data analyst. This is a fictional company, Cyclistic, and meet different characters and team members. In order to answer the key Business questions.



# Scenario
I'm a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore,my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, My team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.

# Characters and Teams

### ● Cyclistic:
A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself
apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with
disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about
8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to
commute to work each day.

### ● Lily Moreno: 
The director of marketing and your manager. Moreno is responsible for the development of campaigns
and initiatives to promote the bike-share program. These may include email, social media, and other channels.

### ● Cyclistic marketing analytics team:
A team of data analysts who are responsible for collecting, analyzing, and reporting data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy learning about Cyclistic’s mission and business goals — as well as how you, as a junior data analyst, can help Cyclistic
achieve them.

### ● Cyclistic executive team:
The notoriously detail-oriented executive team will decide whether to approve the recommended marketing program.


# About the Company

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that
are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments.One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic
program and have chosen Cyclistic for their mobility needs.

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

# Ask
Three questions will guide the future marketing program:

1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

# Prepare

### Data Preparation:
I will use Cyclistic’s historical trip data to analyze and identify trends.

#### Data Location:
Download the last one year Data set here (https://divvy-tripdata.s3.amazonaws.com/index.html)

#### Data Organisation:
The data is organised into Months. Each month Data frame have an average observations of 4-5 millions, 13 variables/columns.

### Data bias and credibility:
The data is completely collected by Divvy trip.
The data covers upto Aug 2022.

### Data licensing, privacy and security/accessibility:

#### Licensing: 
The data is shared publicly on the internet.

#### Privacy: 
The data does not contain any Personal Identiable Information(PII) that can be used to attack personal privacy.

#### Security/Accessibility: 
The data can be view on the internet.

### Data integrity:

#### Input validation: 
The dataset has been randomly checked to eliminate duplicates, anomalies, incorrect data types, incorrect values,
and odd data point.

#### Data validation:
Several functions such as ORDER BY, and UNIQUE was implemented to check for an unreasonable data point in the dataset. This will result in NULL value for Equity.

#### Removal of anomalies: 
Some record missing 0, and there was a few unreasonable valuations due to typos that have been removed.

#### Data backup: 
The original dataset was backup separately on Google Drive. The data set that is used to analyze is the copy version of the original data set.

#### Access Control:
This project is available for public view.

#### Audit trail implementation:
The data require several small corrections, all of the edit history was saved within R Code.

### Data Processing:
Tools such as R/Excel/spreadsheets/SQL are used for analysis.

Tableau for Data visualization.

# Analysis & Visualization

All these analysis and visualizations are done in Tableau Public, it can be view here (https://public.tableau.com/app/profile/shyam.chand.chenimeni?publish=yes) labelled as CYCLISTIC 1,2,3.....

## 1. Of the total users how many casual users and member users?
![1](https://user-images.githubusercontent.com/106597804/187942320-ed3c164a-3d8e-425d-b9bf-ec162d84815e.png)

The above Pie_chart shows that there are total count of 4,548,829 users, of these 42.57% are casual useers and 57.43% are membership users. 
It shows that there are having more member users than casual users.


## 2. what is the average Ride length by user?
![2](https://user-images.githubusercontent.com/106597804/187942501-3835eb33-5805-4907-bd67-26480569cf68.png)

Eventhough there are more member users the Average length by casual users is apperantley more than member users.

## 3. Which bike type they are using the most?
![bike type](https://user-images.githubusercontent.com/106597804/187942814-e45f09a4-40ed-4b75-b56f-18999679b8d1.png)

There are 3 types of bikes i.e., classic, electric and docked. 
Here we can find that average ride length by docked bikes is more and these bikes are used only by casual users.

## 4. How many rides my each members on everyday?
![number of rides](https://user-images.githubusercontent.com/106597804/187943066-c195341e-37e3-4a24-84d8-e15cbb6df04d.png)

On weekends (sat, sun) there are comparatively more number of rides and these are mostly used by casual users.

## 5. What is the average ride length by users on monthly basis?
![avg Ride len by Month](https://user-images.githubusercontent.com/106597804/187943231-e710e47e-c0a0-4157-a1c6-c04428688300.png)

The above graph shows clearly that casual users have the long ride length than the member users especially in the month of Jan there is a peak ride lengths.

## 6. What is the average ride length by users on weekdays basis?
![weekdays](https://user-images.githubusercontent.com/106597804/187943324-be2fb490-23f9-4561-9128-d2bca6f70cd8.png)

The above tree graph shows on sunday by casual users are the highest ride length and the Lowest ride length is by member user on tuesday.

## 7. What is the average ride length by users on Hourly basis?
![hour](https://user-images.githubusercontent.com/106597804/187943416-087f2eb8-81df-4d87-9b4e-a70cfde2d7cf.png)

The line graph shows that average ride length is increasing at 7Am to 11Am and from 10Pm to 2Am.
And the member user avg ride length is almost linear and is ranges in between 10-15 km.

## 8. What are top 20 start station name used by casual users?
![top start c](https://user-images.githubusercontent.com/106597804/187943533-e69c7a3f-dd5f-4771-87a8-00897317b8d8.png)
 
 The top start station used ny casual users is Streeter Dr & Grand ave

## 9. What are top 20 start station name used by member users?
![top start m](https://user-images.githubusercontent.com/106597804/187943611-b371cf98-e2f9-4296-8786-326a56ff38e3.png)

The top start station used by member user is KingsburySt & KInzie St

## 10. What are top 20 end station name used by casual users?
![top end c](https://user-images.githubusercontent.com/106597804/187943694-0de0e9b6-f86a-4906-abf3-4f724ed35694.png)

 The top end station used ny casual users is Streeter Dr & Grand ave
 
## 11. What are top 20 end station name used by member users?
![top end m ](https://user-images.githubusercontent.com/106597804/187943916-f3d73d08-90a1-4429-8468-c32d6eaa26a6.png)

The top end station used by member user is KingsburySt & KInzie St

# Act (Recommentations)

### Summary
percentage of Casual riders are lower than Member riders. It clearly shows that Members users are taking more rides than casual users. But when we look at the average ride lengths taken by both users, In every aspect the casual users are make longer rides than the member users. Especially in weekdays the casual users are almost twice to the member users. so, there is a scope to change the casual users to member users.

## Recommendations
Plan a direct maketing campaign in the top 5 Start Stations and top 5 End Stations used by casual users.

Create an app and highlight the benefits of Member users over casual users.
**Use social media platforms to advertise the Brand and encourage new users.



