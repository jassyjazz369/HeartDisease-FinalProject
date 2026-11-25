Report-1.html: Report-1.Rmd code/data.R code/Tables.R code/Figures.R data/heart.dat
	Rscript -e 'rmarkdown::render("Report-1.Rmd")'

.PHONY: clean install

clean:
	rm -f Report-1.html

install:
	Rscript -e 'renv::restore(prompt = FALSE)'