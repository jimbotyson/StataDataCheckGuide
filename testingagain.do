import delimited https://www.ucl.ac.uk/~ccaajim/results.csv, clear

putdocx begin

putdocx paragraph, style(Title)
putdocx text ("Report on Exam Scores")

putdocx paragraph, style(Heading1)
putdocx text ("A Scatter Plot")

scatter english history
graph export eh.png

putdocx save ehreport, append