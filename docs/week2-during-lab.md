# Module 1 Week 2 During Lab


## Experimental Iteration

We noticed that many of your results showed significant discrepancies between the measured speed of sound and the expected result. Please take a moment to reflect on those results. As a scientist, you must often track down the source of seemingly contradictory results:

Based on your exploratory observations, can the sources of uncertainty you've looked at so far account for the discrepancy?

Was the experiment flawed, or does the theory need to be modified?

When you come into the lab this week, please set up the experiment *using only your notes from last week* (not the lab manual). If you need to refer back to the lab manual, it is a sign that your notes are insufficiently comprehensive. *Take the time to prepare more detailed notes.*

Once you are confident that you have made a reasonable effort to explore the likely sources of systematic error in this experiment, please proceed to the following mini-question. You should not spend more than 30 minutes in lab before answering this mini-question, in order to ensure you have time to complete the rest of this week's work.

**If you are reading the lab manual before coming to lab please stop reading here!!!**

----------------------

#### Miniquestion 1: Week 2 Results Check-in
**You will only receive credit for this mini-question if you complete it in lab - do not complete it before coming to class.**

*[Click here to open in a new tab](https://docs.google.com/forms/d/e/1FAIpQLSfkUH0P7Mx8g1YyPjyyiVmqMdgyozESacqSwz08cqXdtNWfDQ/viewform){:target="_blank"}*

<iframe src="https://docs.google.com/forms/d/e/1FAIpQLSfkUH0P7Mx8g1YyPjyyiVmqMdgyozESacqSwz08cqXdtNWfDQ/viewform?embedded=true" width="640" height="699" frameborder="0" marginheight="0" marginwidth="0">Loading…
</iframe>

<br><br>

------------------------------

**Please do not read further until after completing the preceding mini-question (in lab)**

.
.
.
.







## Resolving the Puzzle

You have surveyed a range of potential systematic errors and hopefully determined which ones appeared to be the most significant. After such a careful investigation it must have been satisfying to get a result that agreed with the expected value to within experimental error...... unless of course that is not what you got. 

Throughout this course we have we have asked you to pay careful attention to uncertainties. Here are some sample results reported by students last semester:

| Speed of Sound          | Uncertainty  | 
| ----------------------- | ------------ | 
| 360.5 m/s               | 1.2 m/s      | 
| 369.1 m/s               | 1.1 m/s      |
| 359.1 m/s               | 1.7 m/s      |

If you have appropriately controlled for systematic errors and accounted for random errors, your results should differ from the true value by approximately their uncertainty. That is not the case for the sample data above.  

But perhaps you still feel the above results are "close enough" to the expected value (343 m/s at $$20^{o}$$C). The results above differ from the expected value for the speed of sound by amounts on the order of _ten times_ their uncertainty! To get a sense of how unlikely that is, for a normal distribution a $$5 \sigma$$ event, (i.e. 5 error bars away from the mean) has a probability of 1 in $$\approx$$3.5 million, and a $$6 \sigma$$ event has a probability of 1 in $$\approx$$500 million. Clearly we should give some more thought to explaining the discrepancy between these results and the expected value.

When experimental results don't agree with the expected value it is a good idea to:
1. Check to make sure you trust your experimental results. Were you careful to minimize potential sources of systematic error?  Do other groups in your section see results consistent with yours, or could they point you toward a mistake you are making?
2. Check to make sure you trust the "expected value." For example, 343 m/s is the accepted value of the speed of sound under a specific set of conditions. Do those match the conditions in the lab? 343 m/s is the appropriate speed at $$20^{o}$$C. While the speed of sound depends on temperature, our laboratory conditions were close enough to $$20^{\circ}$$ C that we aren't going to be able to explain the discrepancy with temperature. You might also consider pressure, but the dependence of the speed of sound on pressure is extremely weak.
3. When all else fails it can be a good idea to check if you are confident in your theory. 

The theory we have relied upon assumes plane waves of sound (waves of frequency $$\nu$$ traveling at speed $$V$$ with planar wavefronts distance $$\lambda$$ apart). Wouldn't it be nice if we could _see_ the sound waves to assess if this is a reasonable assumption?  It turns out we can, and we have!  You used garlic powder last week to visualize the shape of the standing waves.  If you don't have a record of this, quickly repeat the exercise now and record your observations.

Take a look at the pattern of the sound waves using garlic powder - you should see significant deviations from plane wave behavior. The curved wavefronts you see can be mathematically modeled by integrating up a distribution of plane waves propagating in slightly different directions.  By analyzing the math in detail, we can find that the effective wavelength of a focused wave like the one in our amplifier is distorted away from that of a plane wave!  Rather than the wavelength $$\lambda$$ that appears in the simple plane-wave relationship $$\lambda\nu=V$$, what we have measured in our focused standing wave is a slightly different _effective wavelength_ $$\lambda_{\rm eff}$$. 

You will not be responsible for the details of the more complete theory but are encouraged to [read a summary here](gouy).  The **bottom line** is this:

You can account for the curvature of the standing waves by applying the following correction to get the actual wavelength ($$\lambda$$) from  your measured value, $$\lambda_{\rm eff}$$:

\begin{equation}
  \lambda = \frac{\pi n \lambda_{\rm eff}}{1+ \pi n}
\end{equation}

For our acoustic levitators, the instructors have determined that $$n=4.5 \pm 0.25$$. ([see previously mentioned supplemental materials](gouy)). 

Please make use of this correction to estimate the speed of sound. Do you get a more reasonable result?


## Goals for This Week

At the end of this week you should have a final determination of the speed of sound based on careful measurements and the revised theory.  You will need to:
+ measure bead spacing by photographing beads with a ruler as an appropriately-placed scale bar.  Measuring bead spacing in pixels offers much finer resolution than direct measurement with a ruler.
+ combine data from at least five different images, resetting whatever features of the experiment are required to randomize important systematic errors.
+ calculate speed of sound from your measured $$\lambda_{\rm eff}$$ using the revised theory, and calculate uncertainty in speed of sound based on both uncertainty in $$\lambda_{\rm eff}$$ and uncertainty in $$n$$.
+ make sure you have comprehensive photographs of your apparatus before leaving lab today.  These should not just be the images you analyze, but additional photographs that show the placement and orientation of the levitator, ruler, imaging camera, and anything else that is relevant to understanding your results.

<!-- ### Making an Experimental Plan

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



-------

#### Mini-question: Iterative Experimental Design
[*Click here to open in a new tab*](https://forms.gle/sC1e3oDHZkgPxwAX9){:target="_blank"}
<iframe src="https://docs.google.com/forms/d/e/1FAIpQLSeyFal_30OZSOz6SSoOeJ_ZyLkEv8VSClnloKLNQLbwGuMDBw/viewform?embedded=true" width="640" height="600" frameborder="0" marginheight="0" marginwidth="0">Loading…
</iframe>

------ -->
<h2 style="text-align:left;">[Previous: Pre-Lab](week2-prelab)</h2> 
<h2 style="text-align:right;">[Next: Post-Lab](week2-postlab)</h2>