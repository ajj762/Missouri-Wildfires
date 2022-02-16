# Missouri Wildfires
 
This is an analysis of Missouri wildfire reporting data from 2002 to 2021 including data cleaning, an initial exploratory analysis with integrity checks and a full analysis with explanations of the process.

This data set was downloaded from the Missouri Department of Conservation's wildfire reporting at this link [<https://mdc12.mdc.mo.gov/Applications/MDCFireReporting/Home/FireReportSearch>].

The data was downloaded by selecting a time range from Jan. 1, 2002 to Nov. 16, 2021. There are 69,745 rows of data and 7 variables including view, discovered date, county, station, cause, acres burned and the member who reported the wildfire. All possible causes of wildfire were selected including arson, campfire, children, debris, equipment, fireworks, lightning, miscellaneous, not reported, powerline, railroad, smoking, structure and unknown. Data for prescribed and controlled fires is not included in this data set. All counties were chosen for for the data downloaded.

It is unclear what the definitions are for some of the causes of fire. For example, the cause labeled "children" is vague. I plan to reach out to someone to clarify the definitions of these causes.

There are 1,393 NAs in the acres burned category, approximately 2% of the data. While these rows exist as a report, I'm not sure if this means no acres were burned or it wasn't reported. I believe the dataset still has sufficient information for analysis.

Wildfire reports are categorized by county. However, there are 124 counties listed, including a Decatur, which is not a county in Missouri, and a category called "out of state". I know there must be other duplicates or errors since there are only 115 counties (including city of St. Louis) in Missouri.

This analysis focuses on Missouri as a whole and counties, acres burned, number of reports, and various time periods. The year 2020 is analyzed the most since it is the most recent full-year of data, but data from 2021 is included in analysis of trends over time. Because columns including the member who reported the wildfire and the name of the station are dirty, no conclusions will be drawn using these columns. Some exploratory analysis will be done using these columns.

The full analysis is 
