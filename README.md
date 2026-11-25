# Heart Disease Final Project

## Project Overview
This project analyzes heart disease data from 270 patients. The analysis examines patient characteristics and compares age, cholesterol, resting blood pressure, and maximum heart rate among patients with and without heart disease.

## Repository Contents

- Report-1.Rmd: R Markdown file containing the final report.
- code/data.R: Loads heart disease dataset.
- code/Tables.R: Creates the summary table comparing patients by heart disease status.
- code/Figures.R: Contains the code for creating the cholesterol histogram and maximum heart rate boxplot.
- data/heart.data: Heart disease dataset used in the analysis.
- Makefile: Instructions for generating the final report.

## How to Generate the Final Report
Open the project in RStudio and make sure all required packages are installed
To generate the report run ``` rmarkdown::render("Report-1.Rmd")``` in the RStudio Console or Knit
The final report will be generated as `Report-1.html`.

## Table and Figure Code
Table:The code for the patient characteristics summary table is located in `code/Tables.R`.
Figures: The code for the cholesterol distribution histogram and maximum heart rate boxplot is located in `code/Figures.R`.

## Data Source
The dataset is from the UCI Machine Learning Repository, Statlog Heart dataset.

## Synchronizing the Package Environment
This project uses renv to manage the R packages needed to generate the report.
To synchronize the package environment, open the terminal in the project directory and run:
    make install
This will restore the packages and versions recorded in the renv.lock file.

## Generating the Report
To generate the report, run:
    make
To remove the generated report, run:
    make clean