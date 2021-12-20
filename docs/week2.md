# Week 2: Generating Data to Test a Hypothesis

This week we are going to generate a data set to test our hypothesis. This will include more detailed data collection for analysis than the exploratory measurement from Week 1.

[Background Reading for Week 2](#background-reading)

[Reminder: Reporting Data with Significant Figures](#reminder-on-reporting-data-with-significant-figures)

[Data Collection for Week 2](#data-collection)

## Background Reading

At the end of this week you should have a complete data set for the measured critical angle for (at least) five different masses.
Before you begin taking data, there are two principles that we would like to introduce: **real-time data visualization** and **iterative experimental design**. In taking experimental data, we don't want to just blindly follow the procedure laid out in the experimental design. We need to ensure the data we are taking is reasonable and that our conclusions are well-founded and impactful. One way to ensure the data is reasonable is to have some real-time visualization set up (“plotting as you go”). That way we can see our data as we are taking it, and adapt based on any new information.

*Warning:* when “plotting as we go” we don’t want to make a real-time decision that incorrectly shapes our conclusions. For example, suppose we had made a plan to take 10 data points based on our exploratory measurements. But in taking the first 3 data points we notice they are all close to the value we expected, and if we just stop taking data now, we end up with a reasonable conclusion. If we stop our hypothesis testing based on whether or not the data gives us the answer we are looking for, then we might draw **incorrect** conclusions based on the spread of just a few data points as [explained here](https://replicationindex.com/2015/01/24/questionable-research-practices-definition-detect-and-recommendations-for-better-practices/){:target="_blank"}. If this puzzles you, you might look back to the discussion of [random uncertainty](uncertainty-introduction#random-uncertainty){:target="_blank"}. Related concerns are also raised [here](https://www.explainxkcd.com/wiki/index.php/882:_Significant){:target="_blank"}.

It *is* okay to change your plan if it turned out to be a bad one, but changes should be justified by something more than whether we like the initial data or not. Here we will provide more details about the two principles that can guide procedural changes and make sure they are justified: **real-time data visualization** and **iterative experimental design**. We encourage you to refer back to them as you undertake your detailed data collection.

### Real-time Data Visualization

An important habit we would like you to develop as an experimentalist is to plot/visualize your data as you take it. Even though you made a plan with your experimental design, there are many unexpected things that can happen. You should set up your data collection (in Google Sheets) so that entering each data point automatically updates a plot of your data and calculates statistical quantities (sample mean, sample standard deviation, and standard error of the mean). Here are some things to keep an eye out for as you take your data:

+ Is your sample mean very different from what you measured in your exploratory analysis?
    + If so, then try to troubleshoot what the differences might be (e.g. a calculation error, an uncontrolled variable), and then revise your approach if necessary.

+ Does your data look roughly **normally distributed** (like a Gaussian bell-shaped curve)?
    + If not, then you should try to investigate uncontrolled variables or perhaps increase the number data points of your experimental design.

    **Note: if you have taken only a few data points, you shouldn’t expect your data to look like it’s normally distributed, even if it was being sampled from a normal distribution. Make sure you take enough data before worrying about whether it's normally distributed.**

### Making an Experimental Plan

---------------------------------

#### Mini-question: Making an experimental plan
[*Click here to open in a new tab*](https://forms.gle/tb17PdvLxG1Q8aY78){:target="_blank"}

<iframe src="https://docs.google.com/forms/d/e/1FAIpQLSeDfsXQ_oZD63gIQcvD2Owi-4uvYaC0O2wBbnInH6jlJzF2pA/viewform?embedded=true" width="640" height="300" frameborder="0" marginheight="0" marginwidth="0">Loading…
</iframe>

-------------------

*A factor to consider when making an experimental plan:* How many data points would you need to take in order for any effect of changing mass to be larger than your random uncertainty?


#### Mini-question: How Many Trials
*[Click here to open in a new tab](https://forms.gle/Zc7GbHhS1ySxQbnFA){:target="_blank"}*


<iframe src="https://docs.google.com/forms/d/e/1FAIpQLSe7JH6ImWbMSDfMZkXMq2pYSVCpLyeMy4QVmInBqcK7j2yNqw/viewform?embedded=true" width="640" height="300" frameborder="0" marginheight="0" marginwidth="0">Loading…
</iframe>

Before delving deeply into data collection it is helpful to take a step back and consider whether your experimental plan is practical. In this case, will you be able to complete the data collection in the time that should be allocated to a 1-unit class or is your plan unrealistic?  Remember our goal is to make the strongest conclusion we can, which involves minimizing the experimental uncertainty. But more trials will take more time to perform, and there are diminishing returns to taking more data points. There is no right answer for balancing these two, but if your calculations suggest you need 10,000 data points to achieve your desired resolution your time might be better spent redesigning the experiment. While there is no magic number, for the purpose of this course, balancing realistic expectations on your time, we will generally be satisfied with 5 data points. Anything less than this becomes very suspect in terms of statistical analysis, but we do want to respect realistic limits on your time and encourage you to be mindful of this as well. This means that for this experiment we expect you to look at 5 different masses and to begin by collecting 5 data points for each mass. This “rule of thumb” will set our expectations throughout the course. However, a rule of thumb is just a guide and there may be times when you find you need to collect additional data to obtain a complete data set. This week in particular, you should begin with 5 data points for each mass, but if it looks like your histograms could benefit from additional data points for each mass you should collect additional data and include it in your analysis.


### Iterative Experimental Design

If your real-time data visualization indicates something is going wrong, you should iterate on your experimental design. Sometimes this is just as simple as taking more repeated trials and making a note in your lab notebook of the revised plan. For example, *“The first 5 trials had a sample standard deviation larger than what was observed in the exploratory measurement. Instead of 5 trials, from now on I will take 10.”*

Or maybe you’ve noticed some uncontrolled factor in your experiment and you need to start over. In that case, carefully note any data that was taken, but do not delete it! Even if you exclude faulty data from your final analysis, it’s important to keep a record of what happened. Here’s an example of how you might document such an event in your lab notebook: *“My experimental design called for 5 data points, but in my first 3 data points I noticed a larger standard deviation than I expected based on my exploratory measurements. I noticed that the mass(es) inside my container sometimes shifted before the container began to slip on the ramp. The first 3 trials were taken without carefully controlling that factor, and I will not include them in my analysis. In subsequent trials, I will make sure the mass in my container is already resting against the ‘downhill’ side of the container before starting. I will take 5 new data points according to my experimental design.”*

Often even if things go as planned and we finish taking data according to our experimental design, we can end up with an inconclusive or unclear result. Just because you complete your data collection according to the planned experimental design doesn't mean you are done with your experiment! It's far easier to communicate your results when there is a clear conclusion. It's often worth the effort to revise your plan and take more data, which will save you time trying to communicate your results (which we will do in Week 3) and allow you to reach a stronger conclusion. (Quality of data will be one of the considerations in grading your final deliverable.)

As an experimentalist, you have to make the tough decision of when the experiment is complete. It takes years of experience to build up the knowledge and intuition to comfortably decide “when am I done?”. Even collaborators in the same research group can disagree on this point. To help get you started, let's look at a few examples in the following mini-question.

-------

#### Mini-question: Iterative Experimental Design
[*Click here to open in a new tab*](https://forms.gle/sC1e3oDHZkgPxwAX9){:target="_blank"}
<iframe src="https://docs.google.com/forms/d/e/1FAIpQLSeyFal_30OZSOz6SSoOeJ_ZyLkEv8VSClnloKLNQLbwGuMDBw/viewform?embedded=true" width="640" height="600" frameborder="0" marginheight="0" marginwidth="0">Loading…
</iframe>

-----


## Reminder on Reporting Data with Significant Figures

In week 1 we introduced you to the idea of significant figures. As a reminder: we don't want to round intermediate results in a calculation (in this experiment, values of $$\theta_c$$), but in presenting final results (in this case, $$\mu_s$$ values) we only want to report digits that are significant — that accurately reflect the precision of what we learned from the experiment. Here are the rules we ask you to use in this class:

1. Round and keep only one digit in your uncertainty

    + For example we might report an uncertainty of $$\delta \mu_s = 0.006$$

    **Exception**: if the first non-zero digit — is a 1 or 2, then report two digits in the uncertainty. For example: if your uncertainty is 0.0237304 then its first non-zero digit is a 2 so we will keep two digits, resulting in an uncertainty of 0.024 after rounding.

2. Round your measured value so the place value of the least significant digit matches that of the rounded uncertainty. Wow, that sounds confusing so let’s see how this applies to our example above:

    + Suppose we began with 0.44030407 ± 0.01203726. We determined that the uncertainty should be 0.012, meaning the least significant digit of the uncertainty is in the 3rd decimal place. We need to round our measurement value to the same digit so the value we will report for our measurement is **0.440 ± 0.012**.

#### Mini-question: Reporting Significant Figures
*[Click here to open in a new tab](https://forms.gle/9FnE5SnK7z5i9QNWA){:target="_blank"}*

<iframe src="https://docs.google.com/forms/d/e/1FAIpQLScXf6FeCt2rfBGMoQ7bln9a56mMxyHwQ0e8aYBs9vjnH9Yd6A/viewform?embedded=true" width="640" height="300" frameborder="0" marginheight="0" marginwidth="0"> Loading…
</iframe>

---------------------------


## Week 2 - Generating Data to Test a Hypothesis



## Data Collection

With the background reading complete, you are now ready to start the data collection process.

### Step 1: Set Up a Spreadsheet

You will use the same Google sheets document as last week, but should make use of the second tab "Week 2: Data Collection" (click on the appropriate tab at the bottom left of the worksheet).

Your spreadsheet should allow you to:
+ Record data.
+ Plot your data in real time.
+ Analyze your data. In this case your goal is to determine the coefficient of static friction for each mass.

Please take a look at our [Spreadsheet preparation guide](Spreadsheet) for instructions on preparing your spreadsheet.


----------------------------------


### Step 2: Collect and analyze data

Make sure to record all relevant details such as what mass you are using. You should take note of both the initial mass of the container (there is a scale at the back of the room) and the added mass for each trial. Always include units when recording data. 

It is not a good idea to collect all of your data for the lightest mass, then to do the same thing for the next lightest, continuing on through to the heaviest mass. Take a moment to think about why this might be problematic. If you're unsure, this would be a good time to talk to your instructor.

So what should you do? It is a good idea to randomize the order in which you collect your data. When switching back and forth between the masses to randomize your experiment, be very careful about where in your spreadsheet you are recording your data.  

As you collect data, be on the lookout for problems like those mentioned in the [Real-time Data Visualization](#real-time-data-visualization) section above. The histogram and summary statistics of your critical angle will help you identify if you need to adjust your plan.

### Step 3: Reflect and Iterate

It is important to take a moment to reflect on your results. Are there any anomalies in your data? (This is often a reason to collect more data.) Are your final results and uncertainties reasonable? How do your results compare with your hypothesis?

At this point, you need to consider if your results are conclusive. Do they allow you to say something meaningful about your original hypothesis?  Review the section [Iterative Experimental Design](#iterative-experimental-design) above. If your results are inconclusive, then can you think of some reasonable* steps that you can take to improve your measurement? If so, then come up with a revised experimental plan and try it!

**“Reasonable” is subjective. We don't expect for the purposes of our Module 1 that you will take hundreds of data points. But if taking 5 more data points will result in a stronger conclusion, then we encourage you to do so! It is also important to recognize that statistical analysis is not valid for very small numbers of data points. As a rough guide we would not consider a statistical analysis relying on less than 5 data points to be valid and therefore recommend you collect no fewer than 5 data points for each mass.*

When analyzing data keep in mind that the data points' error bars do not need to all overlap for the data to be in agreement. A rule of thumb is that **a data point that agrees with some value has a roughly two-thirds chance of falling within one error bar of that value.** We will learn more about this in the coming weeks.

## Before you leave lab today

Make sure you have the following:

+ a good picture of your experimental setup. You will need this for your final deliverable. A good image should minimize unnecessary clutter, include everything of relevance to understanding your experimental setup, and include a scale bar. Therefore, it is important that you plan for this when taking your photo (i.e., there needs to be an item in your photo whose dimensions you know and can use to add the scale bar later). The image should also be in focus and be taken from an angle that showcases your experimental setup but does not lead to distortion (make sure your scale bar is an accurate representation). This picture will be included in your final deliverable, so take the time to take a good picture.

+ A set of data for each of 5 different masses. Quality of data will be taken into consideration in grading your final deliverable.

## Checkpoint #2

Please submit the following to Module 1, Checkpoint #2 on Gradescope. 

**As a reminder: Please prepare your assignment in a separate document, enter all entries in a single sitting without using the "save" button and then make use of the "submit" button to submit your work. You may not resubmit your work once it has been submitted (and saving in Gradescope is equivalent to submitting).**

+ A link to your organized assigned spreadsheet with your data and analysis.

+ A picture of your experimental setup. You do not need to include a scale bar this week, but you should have a plan for adding one next week (i.e., there needs to be an item in your picture whose dimensions you know).

+ A histogram for each mass tested, showing the distribution of the number of data points collected as a function of the angle $$\theta_c$$. You should have collected data for five different masses, with a minimum of 5 data points for each mass. Note that 5 data points is a minimum; you may need to collect more data to have reasonable histograms. If so, make sure you include all of the data you have collected in your histograms (or clearly indicate in your spreadsheet why some data was excluded).

+ The value you obtained for the coefficient of static friction, $$\mu_s$$, for 3 of the 5 masses (smallest, middle, and largest), including the estimated uncertainty. The $$\mu_s$$ value for each mass should be based on data from all trials shown in your histogram for that mass.  Please make sure to use significant figures appropriately. If unsure please reread the section on significant figures, come to office hours to discuss, and/or consult your classmates through Piazza.

+ A single-sentence, preliminary conclusion that you can draw about the hypothesis based on your experimental data

## Grading Considerations:
Your work will be graded based on:

+ organization of your spreadsheet
+ correct calculation of expected results - the calculations must be performed within the provided spreadsheet
+ a clear image of the experimental setup (without unnecessary distractions)
+ image of the experimental setup includes everything of significance to understanding the experiment: phone, container, weights used, any apparatus used to aid in the controlled raising of the ramp and recording of data,...
+ histograms show good quality data with a reasonable distribution
+ axes are appropriately labelled and include correct units
+ results are not rounded prior to the final result
+ final result is presented with appropriate significant figures


Don't forget to double check that you've completed [all of this week's miniquestions at this link.](mini-questions#week-2){:target="_blank"}
