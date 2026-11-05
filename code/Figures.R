
make_cholesterol_figure <- function() {
  hist(
    heart_data$cholesterol,
    main = "Distribution of Cholesterol Levels",
    xlab = "Cholesterol in mg/dL"
  )
}

make_heart_rate_figure <- function() {
  boxplot(
    max_heart_rate ~ heart_disease_status,
    data = heart_data,
    main = "Maximum Heart Rate by Heart Disease Status",
    xlab = "Heart Disease Status",
    ylab = "Maximum Heart Rate"
  )
}

