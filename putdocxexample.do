webuse set https://www.ucl.ac.uk/~ccaajim/
* webuse results, clear

putdocx begin
putdocx paragraph, style(Title)
putdocx text ("Report on Maths Scores")
* Next we add a heading for the description of our data:
putdocx paragraph, style(Heading1)
putdocx text ("Introduction to the data")
* Now we are ready to add a standard paragraph where we cite the source of our dataset.
putdocx paragraph
putdocx text ("We have data on examination scores out of 100 for 30 students from three classes.")
putdocx paragraph
putdocx text ("Fifteen of the students were male and fifteen female.")
putdocx save examinationscores

* Add more content
putdocx begin
putdocx paragraph, style(Heading1)
putdocx text ("Summary statistics")
summarize maths
table class, statistic(mean maths) nototals
putdocx collect
return list
putdocx paragraph
putdocx text ("We have the scores for `r(N)' students ")
putdocx text ("with an average maths score of ")
putdocx text (" `r(mean)' "), nformat(%5.2f)
putdocx text (".")
putdocx save examinationscores, append

putdocx begin
putdocx paragraph, style(Heading1)
putdocx text ("Regression results")
regress maths english i.class, noheader
putdocx table mathsreg = etable, title("Linear regression of maths")
putdocx save examinationscores, append