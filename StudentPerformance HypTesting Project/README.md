# Student Performance Hypothesis Testing Project

The intention of this project was to practice a few different Hypothesis Tests, as well as refine my skills with some slightly more complex visualizations.

This dataset I used included math, reading, and writing exam scores, as well as demographic data including gender, race/ethnicity (masked with generic A - E labels), parental level of education, and whether the student receives free/reduced or standard lunch program.  
It also includes a column on whether each student completed a test preparation course prior to taking their scored exams.

It is worth noting that this is *fictional* data.  [Sourced from Kaggle](https://www.kaggle.com/spscientist/students-performance-in-exams).

After taking a look through the imported data, I did a brief cleaning process that included renaming columns and certain values to be variable-friendly, and pushing the parental level of education categories to be ordinal.

Then the real work began after I decided on several Hypotheses that I wanted to test and create visuals for.
Specifically, I wanted to look at relationships between
- Gender and exam scores (math, reading, writing)
- Lunch program (standard or free/reduced) and exam scores (math, reading, writing)
- Parent's level of education and whether the student was enrolled in the free/reduced lunch program
- Whether they completed the test prep course and their exam scores (math, reading, writing)
- Their race/ethnic group and exam scores (math, reading, writing)


### Summary of Findings
Surprisingly (or perhaps not, since it was fictional data) I found statistical significance, using a 95% significance threshhold for each, in all *but one* of my hypothesis tests.
Hover over each image to see the p-value found from the respective significance tests.

#### Gender and Exam Scores
![gender_math_hist.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/gender_math_hist.png?raw=true "P-Value: 9.120185549328822e-08")
![gender_reading_hist.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/gender_reading_hist.png?raw=true  "P-Value: 4.680538743933289e-15")
![gender_writing_hist.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/gender_writing_hist.png?raw=true  "P-Value: 2.019877706867934e-22")
For this set of analyses I found the difference in mean test scores between genders, created overlapping transparent histograms with axvlines to show their respective means, and used Two Sample T-Tests to test for significance.
**_I found that male students scored higher on the math exam, but female students scored higher in reading and writing._**

#### Lunch Program and Exam Scores
![lunch_math_hist.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/lunch_math_hist.png?raw=true "P-Value: 2.4131955993137074e-30")
![lunch_reading_hist.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/lunch_reading_hist.png?raw=true "P-Value: 2.0027966545279011e-13")
![lunch_writing_hist.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/lunch_writing_hist.png?raw=true "P-Value: 3.1861895831664765e-15")
Similar to the last set, I once again found the difference in mean test scores, this time between students in the free/reduced lunch program vs those in standard lunch, created overlapping transparent histograms with axvlines to show their respective means (this time I had to relocate the legends so that they woudn't cover some of the data), and used Two Sample T-Tests to test for significance.
**_In all three exams, students receiving free/reduced lunch scored significantly lower on average.  This implies that students of lower socio-economic status at this school are academically disadvantaged._**

#### Parent's Education Level and Lunch Program
![lunch_parentEd_bar.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/lunch_parentEd_bar.png?raw=true "P-Value: 0.9531014927218223")
For this analysis I created a side-by-side bar chart comparing the proportion of students that receive free/reduced lunch for each level of parental education.
I used a Chi-Square hypothesis test, and this was the only analysis piece from this project that did not turn out to have statistically significant results.  I thought I may see a trend in which higher educated parents would have less need for their children to receive free and reduced lunch, but this was shown not to be the case.  You can see it visually in the graphic as well, that the proportion of students that received free/reduced lunch vs standard lunch was visibly similar for each level of parent education.
**_This implies that, at least among these fictional students, socio-economic status is not associated with parents' education level._**

#### Test Preparation Course and Exam Scores
![testprep_math.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/testprep_math.png?raw=true "P-Value: 1.5359134607147415e-08")
![testprep_reading.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/testprep_reading.png?raw=true "P-Value: 9.081783336892205e-15")
![testprep_writing.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/testprep_writing.png?raw=true "P-Value: 3.68529173524572e-24")
Since this was once again a comparison of a binary categorical variable to a quantitative variable I started by finding the difference in mean test scores, this time between students who completed a Test Prep Course vs those who did not, and again used Two Sample T-Tests.
**_For all three exams, I found that students who completed the Test Prep Course received statistically significantly higher scores on average._**
To practice with a different visualization type, this time I created side-by-side box plots for each set of analyses.

#### Race/Ethnic Groups and Exam Scores
![ethnicity_math.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/ethnicity_math.png?raw=true "The largest difference in math scores was 12.1922% between group A and group E")
![ethnicity_reading.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/ethnicity_reading.png?raw=true "The largest difference in reading scores was 8.3544% between group A and group E")
![ethnicity_writing.png](https://github.com/TheStarCloud/Projects/blob/main/StudentPerformance%20HypTesting%20Project/graphics/ethnicity_writing.png?raw=true "The largest difference in writing scores was 8.733% between group A and group E")
For this analysis I created side-by-side box plots for each exam subject, broken down by ethnic group.  For the Hypothesis Tests I used ANOVA, followed by Tukey's Range Test to see which groups showed the significant differences.
When you hover over each of these images, you will see the key finding from that subject analysis rather than the P-value; I thought it would be a more useful piece of information for this set.
**_For each exam, there was statistically significant differences in exam scores between some - but not all - of the ethnic groups.  Notably for all three exam subjects, the greatest differences were between students of ethnic groups A and E - with group E scoring highest and group A scoring lowest._**

### Other Thoughts
My favorite challenge that I came across while working on this project was creating a human-readable output from the Tukey Range test without hard-coding the print statement of results.
I first created a nested list of the rows from the output table so that I could reference the individual elements.  This allowed me to create a for-loop that outputted only the pairs of groups that had statistically significant results.

Then i decided that I should also include a statement about which pairing had the *greatest* differece - and what that difference was - so I ended up needing to convert the Tukey table to a dataframe. I realize I could have done this in the first place for the previous part, but didn't want to remove my perfectly functional success of what I'd done so far.
```python
rows = tukey_results.summary().data[1:]

print("There are statistically siginificant differences in reading scores between:")
for list in rows:
    group1 = list[0]
    group2 = list[1]
    significance = list[-1]
    if significance == True:
        print(group1 + " and " + group2)
print()
        
tukey_df = pd.DataFrame(rows, columns = ['group1',  'group2', 'meandiff', 'p_adj',   'lower',   'upper',  'reject'])
max_meandiff = tukey_df.meandiff.max()
max_meandiff_row = tukey_df.meandiff.idxmax()
 
max_diff_group1 = tukey_df.iloc[max_meandiff_row][0]  
max_diff_group2 = tukey_df.iloc[max_meandiff_row][1]  
print("The largest difference in reading scores was " + str(max_meandiff) + "% between " + str(max_diff_group1) + " and " + str(max_diff_group2))
```
Output example from the reading section: 
```
There are statistically siginificant differences in reading scores between:
group A and group D
group A and group E
group B and group E

The largest difference in reading scores was 8.3544% between group A and group E 
```
