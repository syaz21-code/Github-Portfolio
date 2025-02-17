# This is the R script file for the analysis to make prediction of total victim count

# Library imported
library(readr)
library(ggplot2)
library(dplyr)

# General dataset
dataset_gun <- read_csv("C:/Users/user/OneDrive/Desktop/Syaz/2nd Year/2nd sem/DS/Project/us_gun_violence_data_2024.csv")

# Data Cleaning
# Column State & Coordinates_Found containing missing values therefore data cleaning is required
    # Handling missing values in State column
missing_state <- which(is.na(dataset_gun$State))
correct_state <- c("Tennessee", "Ohio", "New York", "Alabama", "Ohio", "California", "Texas", "California")
dataset_gun$State[missing_state] <- correct_state

    # Handling missing values in Coordinates_Found column
for (i in 1:nrow(dataset_gun)){
    if (is.numeric(dataset_gun$Latitude[i]) && is.numeric(dataset_gun$Longitude[i])){
        dataset_gun$Coordinates_Found[i] <- "Yes"       # Value Yes if got coordinate on latitude and longitude
    }else if (!is.numeric(dataset_gun$Latitude[i]) || !is.numeric(dataset_gun$Longitude[i])){
        dataset_gun$Coordinates_Found[i] <- "No"        # Value No if no coordinate on latitude or longitude
    }
}

    # Create new features: 'Total Victim' and 'Month'
dataset_gun$'Total Victim' <- dataset_gun$'Victims Killed' + dataset_gun$'Victims Injured'
dataset_gun <- dataset_gun[, c(1:7, ncol(dataset_gun), 9:ncol(dataset_gun)-1)]  # Position 'Total Victim' column next to 'Victims Injured' column

dataset_gun$`Incident Date` <- as.Date(dataset_gun$`Incident Date`, format="%B %d, %Y")
dataset_gun <- dataset_gun %>% arrange(`Incident Date`)
dataset_gun$Month <- format(dataset_gun$`Incident Date`, "%B")
dataset_gun <- dataset_gun[, c(1:2, ncol(dataset_gun), 4:ncol(dataset_gun)-1)]

    # Create new data frame: Monthly victim
dataset_gun$Month <- factor(dataset_gun$Month, levels = month.name)
monthly_victims <- dataset_gun %>% group_by(Month) %>% 
summarise(
    Total_Victims = sum(`Total Victim`, na.rm = TRUE),
    'Victims Killed' = sum(`Victims Killed`, na.rm = TRUE),
    'Victims Injured' = sum(`Victims Injured`, na.rm = TRUE)
    )
View(monthly_victims)
    # Using boxplot to check any outliers in 'Total Victim' column in monthly_victim data frame
boxplot(monthly_victims$'Victims Killed', main = "Total Victims Killed for Every Month") # No outliers found
boxplot(monthly_victims$'Victims Injured', main = "Total Victims Injured for Every Month") # 1 outlier found
boxplot(monthly_victims$Total_Victims, main = "Total Victims for Every Month") # 1 outlier found

    # handling outliers for Victims Injured
first_q<-quantile(monthly_victims$'Victims Injured', 0.25)
third_q<-quantile(monthly_victims$'Victims Injured', 0.75)
iqr<-IQR(monthly_victims$'Victims Injured')
le<-round(first_q- 1.5 * iqr, digits = 0)
ue1<-round(third_q + 1.5 * iqr, digits = 0)

#avg <- round(mean(monthly_victims$'Victims Injured'), digits = 0)
monthly_victims$'Victims Injured'[monthly_victims$'Victims Injured' > ue1] <- ue1 # replace the outliers with ue1
boxplot(monthly_victims$'Victims Injured', main = "Check Outlier Victims Injured")

    # handling outliers for Total Victim
first_q<-quantile(monthly_victims$Total_Victims, 0.25)
third_q<-quantile(monthly_victims$Total_Victims, 0.75)
iqr<-IQR(monthly_victims$Total_Victims)
le<-round(first_q- 1.5 * iqr, digits = 0)
ue2<-round(third_q + 1.5 * iqr, digits = 0)
#avg <- round(mean(monthly_victims$Total_Victims), digits = 0)
monthly_victims$Total_Victims[monthly_victims$Total_Victims>ue2] <- ue2 # replace the outliers with ue2
boxplot(monthly_victims$Total_Victims, main = "Check Outlier Total Victim")

# Data Visualization using line graph
killed <- data.frame(Month = monthly_victims$Month,Victim = monthly_victims$`Victims Killed`,Type = "killed")
injured <- data.frame(Month = monthly_victims$Month,Victim = monthly_victims$`Victims Injured`,Type = "injured")
total <- data.frame(Month = monthly_victims$Month,Victim = monthly_victims$Total_Victims, Type = "total")
plot_data <- rbind(killed, injured, total)

ggplot(plot_data, aes(x = Month, y = Victim, group = Type, color = Type)) +
  geom_line(linewidth = 1) +  # Draw lines
  geom_point(size = 3) +  # Highlight data points
  labs(
    title = "Victim Count from Mass Shootings in USA (2024)",
    x = "Month",
    y = "Victim Count"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Building Predictive Model using polynomial regression modell
    # building the prediction model
monthly_victims$Month_Num <- match(monthly_victims$Month, month.name)
poly_model <- lm(Total_Victims ~ poly(Month_Num, df = 6), data = monthly_victims)
future_months <- data.frame(Month_Num = c(11, 12))
predict_victimCount <- round(predict(poly_model, newdata = future_months), digits = 0)

    # update new data frame with predicted values
future_months$Total_Victims <- predict_victimCount
future_months$Month <- c("November", "December")
future_months <- future_months[, c("Month", "Total_Victims", "Month_Num")]

# Prediction model evaluation using MAPE calculation
actual_values <- monthly_victims$Total_Victims
predicted_values <- round(predict(poly_model, newdata = monthly_victims), digits = 0)
MAPE <- mean(abs((actual_values - predicted_values) / actual_values) * 100)

# Visualize the actual and predicted values
    # Combine actual and predicted data for plotting
plot_data <- rbind(
  data.frame(Month = monthly_victims$Month, Total_Victims = actual_values, Type = "Actual"),
  data.frame(Month = future_months$Month, Total_Victims = future_months$Total_Victims, Type = "Predicted")
)
    # Plot the line chart
ggplot(plot_data, aes(x = Month, y = Total_Victims, group = Type, color = Type)) +
  geom_line(linewidth = 1) +  # Draw lines
  geom_point(size = 3) +  # Highlight data points
  labs(
    title = "Total Victim Count from Mass Shootings in USA (2024)",
    x = "Month",
    y = "Total Victims"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

cat("Predicted total victim in November and December:\n")
print(predict_victimCount)
cat("Mean Absolute Percentage Error percentage of the model:", round(MAPE, 2), "%\n")

