
### install the packages that are needed to wrangle the data.
install.packages("tidyverse")
install.packages("lubridate")
install.packages("hms")




library(tidyverse)
library(janitor)
library(lubridate)
library(hms)


aug_2021 <- read.csv("C:/Users/syamc/OneDrive/Desktop/cyclistic/files csv/202108-divvy-tripdata.csv")
sep_2021 <- read.csv("C:/Users/syamc/OneDrive/Desktop/cyclistic/files csv/202109-divvy-tripdata.csv")
oct_2021 <- read.csv("C:/Users/syamc/OneDrive/Desktop/cyclistic/files csv/202110-divvy-tripdata.csv")
nov_2021 <- read.csv("C:/Users/syamc/OneDrive/Desktop/cyclistic/files csv/202111-divvy-tripdata.csv")
dec_2021 <- read.csv("C:/Users/syamc/OneDrive/Desktop/cyclistic/files csv/202112-divvy-tripdata.csv")
jan_2022 <- read.csv("C:/Users/syamc/OneDrive/Desktop/cyclistic/files csv/202201-divvy-tripdata.csv")
feb_2022 <- read.csv("C:/Users/syamc/OneDrive/Desktop/cyclistic/files csv/202202-divvy-tripdata.csv")
mar_2022 <- read.csv("C:/Users/syamc/OneDrive/Desktop/cyclistic/files csv/202203-divvy-tripdata.csv")
apr_2022 <- read.csv("C:/Users/syamc/OneDrive/Desktop/cyclistic/files csv/202204-divvy-tripdata.csv")
may_2022 <- read.csv("C:/Users/syamc/OneDrive/Desktop/cyclistic/files csv/202205-divvy-tripdata.csv")
jun_2022 <- read.csv("C:/Users/syamc/OneDrive/Desktop/cyclistic/files csv/202206-divvy-tripdata.csv")
jul_2022 <- read.csv("C:/Users/syamc/OneDrive/Desktop/cyclistic/files csv/202207-divvy-tripdata.csv")


compare_df_cols_same(aug_2021, sep_2021, oct_2021, nov_2021, dec_2021, jan_2022, feb_2022, mar_2022, apr_2022, may_2022, jun_2022,jul_2022,bind_method = c("bind_rows", "rbind"), verbose = TRUE)

cyclistic <- rbind(aug_2021, sep_2021, oct_2021, nov_2021, dec_2021, jan_2022, feb_2022, mar_2022, apr_2022, may_2022, jun_2022,jul_2022)

summary(cyclistic)

View(cyclistic)

str(aug_2021)
 

# PROCESS
# Remove geographical indication contained in columns 9 to 12
cyclistic <- cyclistic[ -c(9:12) ]


# Check for duplicates
length(unique(cyclistic$ride_id)) == nrow(cyclistic)
## Here ride_id is the unique entry and it can't be duplicate. so, compare the unique ride_id withe number of rows 


# Remove rows containing NA and NULL values
cyclistic[cyclistic == '' ] <- NA
cyclistic<- na.omit(cyclistic)


# Check for misspelled strings/categories
unique(cyclistic$rideable_type)
unique(cyclistic$member_casual)


# Convert character to datetime
cyclistic$started_at <- as.POSIXct(cyclistic$started_at, format = "%Y-%m-%d %H:%M:%S")
cyclistic$ended_at <- as.POSIXct(cyclistic$ended_at, format = "%Y-%m-%d %H:%M:%S")

#check if it was converted or not
str(cyclistic)

# Calculate ride length
cyclistic$ride_length <- difftime(cyclistic$ended_at, cyclistic$started_at, units = "mins")
cyclistic$ride_length <- round(cyclistic$ride_length, digits = 2)


# Remove negative and/or zero ride lengths
cyclistic <- subset(cyclistic, ride_length > 0)


# Create new date columns
cyclistic$month <- format(as.Date(cyclistic$started_at), "%m")
cyclistic$day <- format(as.Date(cyclistic$started_at), "%d")
cyclistic$year <- format(as.Date(cyclistic$started_at), "%Y")
cyclistic$weekday <- format(as.Date(cyclistic$started_at), "%A")
cyclistic$time <- as_hms((cyclistic$started_at))
cyclistic$hour <- as_hms(floor_date(cyclistic$started_at, unit = "hour"))


# Order weekday
cyclistic$weekday <- ordered(cyclistic$weekday, levels = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"))


# Save new data set
write.csv(cyclistic, "cyclistic.csv")


# ANALYZE

## Compare members and casual users
aggregate(cyclistic$ride_length ~ cyclistic$member_casual, FUN = mean)
aggregate(cyclistic$ride_length ~ cyclistic$member_casual, FUN = median)
aggregate(cyclistic$ride_length ~ cyclistic$member_casual, FUN = max)
aggregate(cyclistic$ride_length ~ cyclistic$member_casual, FUN = min)

# See the average ride time by each day for members vs casual users
aggregate(cyclistic$ride_length ~ cyclistic$member_casual + cyclistic$weekday, FUN = mean)

# Order by weekday
cyclistic$weekday <- ordered(cyclistic$weekday, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

# Now see Average time by Each day
aggregate(cyclistic$ride_length ~ cyclistic$member_casual + cyclistic$weekday, FUN = mean)

# Rides by User Type
cyclistic %>%
  count(member_casual)


# Rides by Bike Type
cyclistic %>%
  group_by(rideable_type, member_casual) %>% 
  count(rideable_type)


# Rides by Hour
cyclistic %>%
  group_by(member_casual) %>% 
  count(hour)


# Rides by Weekday
cyclistic %>%
  group_by(member_casual) %>% 
  count(weekday)


# Rides by Month
cyclistic %>%
  group_by(member_casual) %>% 
  count(month)


# Average Ride Length by User Type
cyclistic %>% 
  group_by(member_casual) %>% 
  summarise(Mean = mean(ride_length))


# Average Ride Length by Bike Type
cyclistic %>% 
  group_by(rideable_type, member_casual) %>% 
  summarise(Mean = mean(ride_length))


# Average Ride Length by Hour
cyclistic %>% 
  group_by(member_casual, hour) %>% 
  summarise(Mean = mean(ride_length))


# Average Ride Length by Weekday
cyclistic %>% 
  group_by(member_casual, weekday) %>% 
  summarise(Mean = mean(ride_length))


# Average Ride Length by Month
cyclistic %>% 
  group_by(member_casual, month) %>% 
  summarise(Mean = mean(ride_length))



