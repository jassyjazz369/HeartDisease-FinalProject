
library(labelled)
library(gtsummary)
library(dplyr)

var_label(heart_data) <- list(
  age = "Age",
  sex_status = "Sex",
  resting_bp = "Resting blood pressure",
  cholesterol = "Cholesterol",
  max_heart_rate = "Maximum heart rate",
  heart_disease_status = "Heart disease status"
)

summary_table <- heart_data |>
  select(
    heart_disease_status,
    age,
    sex_status,
    resting_bp,
    cholesterol,
    max_heart_rate
  ) |>
  tbl_summary(
    by = heart_disease_status
  ) |>
  modify_spanning_header(
    c("stat_1", "stat_2") ~ "**Heart Disease Status**"
  ) |>
  add_overall() |>
  add_p()
