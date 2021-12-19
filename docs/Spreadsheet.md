### Setting up a Spreadsheet

Here are some general guidelines for setting up a spreadsheet. We use the week 2 spreadsheet for Module 1 as an example. Note that we've done some of these steps for you in the template we have provided.

Your spreadsheet should allow you to:
+ Record data.
+ Plot your data in real time.
+ Analyze your data. In this case your goal is to determine the coefficient of static friction for each mass.


## Key Considerations in Organizing a Spreadsheet

+ You should set up formulas that make use of your data, called by its cell location. For example if you want to convert the data in cell A2 from mm to m, then in a new cell (say B2) you can enter **=A2\*1000**. Now if you want to do the same for cell A3, then you can copy the contents of cell B2 to cell B3. The formula will automatically adjust to **=A3\*1000**. Selecting cell B2 and dragging down through cell B10 will populate those cells with the formulas **=A2\*1000** through **=A10\*1000**.

+ If there is a number that you will need to use for all cells, do not enter it as a column of identical numbers. Instead enter it as a single cell at the top of your spreadsheet. Use of the $ sign before a column letter or row number will ensure the cell location is not updated when copying formulas. For example if you want to multiply both cell A2 and cell A3 by the contents of cell B1 and enter the result in C2 and C3, you could enter **=A2\*B$1** into cell C2; then when you copy the contents of C2 to C3 it will update to **=A3\*B$1**.  If you might also want to multiply cell D2 by the contents of cell B1, you should use **=A2\*$B$1** to begin with, so that the formula continues to refer to cell B1 even when you copy it to a new column as well as a new row.





<details>
<summary markdown='span'>Click here for detailed steps to guide you through the process of setting up your spreadsheet
</summary>

These steps will guide you through this process:


1. Begin by creating a new sheet in your worksheet for this module using the add sheet button in the bottom left (this part has been done for you)
2. Set up a table to determine the critical angle for the first mass (this part has also been done for you).

    + Give the table a title.

    + Title the column you will be using for data collection ($$\theta_c$$)

    + Use the borders feature to outline the table.

        <img src="images/borders.JPG" alt="The border button will allow you to outline your table" width="125"/>


3. Set up a graph to plot your data in real time. For this experiment you will want to plot a histogram of your measurements of the critical angle $$\theta_c$$. Today we are setting up an informal plot to look at our data in real time. This is different from a more formal figure that you would use to share/communicate your results --- creating formal figures is a more careful process, we will do that next week after we've collected and reflected on our data. Here we summarize how to create a histogram in Sheets. You can find more extensive information at: [*Click here to open in a new tab*](https://support.google.com/docs/answer/9146867?hl=en){:target="_blank"}

    + You can add a chart by selecting "insert" and then "chart" from the drop down menus.

    + A new “Chart Editor” menu will appear on the RHS of the screen. Use the drop down menu under chart type to select “histogram," as shown below.

        <img src="images/Histogram.JPG" alt="Histograms are in the Other category and you can hover over a chart image to see its name" width="125"/>

    + On the next line of the “Chart Editor” set data range to be the cells in which you plan to insert your data (you may have to go back and edit this later if you collect more data than expected).

    + Press the x in the top right to exit the chart editor.

    + Click on your chart and move it to a convenient spot in your worksheet. You will want to customize the chart further once you begin collecting data.

4. Now enter formulas to calculate the average value for the critical angle, $$\theta_c$$, and standard error. Please enter these formulas in the region already prepared for you to report your final results (lower left of the prepared table). You can look back to the week 1 template for guidance on formulas to enter.

6. Now add the formulas to calculate the coefficient of static friction, $$\mu_s$$ and its uncertainty, for your new data set, continuing to make use of the indicated regions of the prepared template.

7. Now you need to set up your worksheet to collect data for the second mass. You will want to do this in the column to the right of your first column, duplicating the equations for your calculations. You should then create a second histogram to monitor the data from the second mass in real time.

Once you have collected a few data points you will want to go back to the chart editor and select “customize." Next week we will focus on polishing our plot for communicating our results but even for your own records you want to make a few adjustments while collecting data.

+ Use the Chart and axis title dropdown to add a chart title.  Especially with multiple charts, an informative title can make it easy to see which data set is visualized in which plot!

+ Within the same dropdown menu, if you click on chart title you can change the dropdown to “Horizontal axis title”. Go ahead and label your axis.

+ The histogram dropdown will allow you to change the bucket size (by default it will be on auto which you may or may not find satisfactory depending on your data)


A spreadsheet that is set up well will update in real time as you enter new data, as shown with the histograms in the brief demonstration below:

![spreadsheet example](images/plot-as-you-go.gif)
