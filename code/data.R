
heart_data <- read.table(
  "data/heart.dat",
  header = FALSE
)

names(heart_data) <- c(
  "age",
  "sex",
  "chest_pain",
  "resting_bp",
  "cholesterol",
  "fasting_blood_sugar",
  "resting_ecg",
  "max_heart_rate",
  "exercise_angina",
  "oldpeak",
  "slope",
  "major_vessels",
  "thal",
  "heart_disease"
)

heart_data$heart_disease_status <- ifelse(
  heart_data$heart_disease == 1,
  "Absent",
  "Present"
)

heart_data$sex_status <- ifelse(
  heart_data$sex == 1,
  "Male",
  "Female"
)