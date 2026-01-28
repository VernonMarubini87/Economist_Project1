**Corruption and Human Development Project :**

**Overview**
This R project analyses the relationship between corruption perceptions and human development across countries using data visualization techniques with ggplot2.


**Project Description**
  •	The project creates an informative scatter plot that visualizes the correlation between:
  •	Corruption Perceptions Index (CPI): 2011 data where 10 = least corrupt
  •	Human Development Index (HDI): 2011 data where 1 = best
  •	The visualization colours points by world region and includes trend lines and selective country labels to highlight key observations.

**Key Features
Data Visualization Components**:
  •	Scatter Plot: Points sized and shaped as empty circles, coloured by region
  •	Trendline: Log-linear regression line showing overall relationship
  •	Selective Labeling: Only labels countries in the pointsToLabel vector
  •	Clean Theme: Uses theme_bw() and theme_economist_white() for publication-quality styling
  •	Proper Axis Scaling: Custom limits and breaks for both CPI and HDI axes

**Countries Highlighted:**
28 countries including Russia, Venezuela, Iraq, China, United States, Germany, Japan, and others of particular interest.

**TECHNICAL DETAILS
Packages Used:**
  •	ggplot2: For creating the visualization
  •	data.table, readr: For data manipulation
  •	ggthemes: For additional ggplot themes
  •	dplyr: For data manipulation functions

**Data Source:**
Economist_Assignment_Data.csv - Contains CPI and HDI scores for various countries along with regional classifications.

**Core Visualization Code Flow:**
  •	Load and inspect data
  •	Create basic scatter plot with region colouring
  •	Enhance point aesthetics (size=4, shape=1)
  •	Add log-linear trendline (red color, no confidence interval)
  •	Apply selective country labeling with overlap checking
  •	Apply clean theme and proper axis scaling
  •	Add informative title

**How to Run:**
  •	Ensure all required packages are installed
  •	Set the correct file path for the CSV data
  •	Run the script sequentially to generate the visualization
  •	Final plot can be saved using ggsave() if needed

**Insights:**
The visualization helps explore questions such as:
  •	Is there a correlation between lower corruption and higher human development?
  •	Which countries are outliers (high corruption but high HDI, or vice versa)?
  •	How do regions cluster in terms of corruption and development?

