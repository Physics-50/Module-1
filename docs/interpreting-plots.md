## Interpreting the results of a Least Squares Fit

In our [introduction to plotting](curve-fitting-motivation we introduced the parameter $$\chi^2$$:

\begin{equation}\label{eq:weighted}
\chi^2 = \underset{m,b}{\mathrm{min}} \sum_{i=1}^{n} \left(\frac{y_i - (mx_i+b)}{\delta y_i}\right)^2
\end{equation}
Here, $$\chi$$ is the Greek letter "chi" (pronounced like ["Kai"](https://www.marketplace.org/2020/10/01/canadas-tourist-driven-pne-pivots-to-hosting-film-production/){:target="_blank"}).

In particular we defined a least squares fit as the the linear function that minimized this parameter.

Now that you've performed the fit, the next question is how to interpret the results.


#### 1. Uncertainties in the fitted slope and intercept

The [provided fitting script](https://physics.hmc.edu/fitter/), is a weighted curve-fitting script that can fit either a horizontal line, a line in which the slope is determined by the fit parameters, or a quadratic fit, depending on the settings. The script also provides an estimate of the uncertainty for each of the fit parameters. The uncertainty in the slope and intercept are determined from the error bars and from how scattered the data are about the fit line. 


#### 2. Using reduced chi-squared, $$\chi_\nu^2$$, to determine how good your fit is

Also reported below the plot is the "reduced chi-squared", $$\chi_\nu^2$$, which is a normalized version of $$\chi^2$$ from Eq. \eqref{eq:weighted}. The reduced chi-squared is defined by 
\begin{equation}
\chi_\nu^2 = \frac{\chi^2}{\text{num data points -- num fitting parameters}}
\end{equation}

In the example data above, we had 11 data points and two fitting parameters ($$m$$ and $$b$$). Roughly speaking, the reduced $$\chi^2$$ value tells us on average how many error bars away each data point is from the fitted line. So the value $$\chi_\nu^2 = 0.91$$ in the example means that *on average* each data point is just within its error bar of the fitted line. Looking at the data and fit above, although there are a couple of data points that are farther away from the line than their error bars, on average they fall within their error bar of the fitted line.

**The value of $$\chi_\nu^2$$ is important because it can tell us how good our fit is (or sometimes, how well we estimated the error bars).** If the error bars are an accurate representation of the uncertainty in the data, we would expect *on average* each data point to be approximately one error bar away from the line: $$\chi_\nu^2 \approx 1$$. In the example above, the value of $$\chi_\nu^2 = 0.91$$ supports the idea that our linear fit is a good model of the data.

Let's look at two examples where our reduced $$\chi^2$$ value differs significantly from 1. First, here's an example where $$\chi_\nu^2$$ is small:

![overfit example](images/errors-too-big.png)
In this example, each data point is much closer than 1 error bar to the fitted line. There are a few ways that a $$\chi_\nu^2 \ll 1$$ can occur: 

+ perhaps we have too many free parameters in the fitting function, allowing the function to hit all the data points. However, we only have 2 parameters here ($$m$$ and $$b$$), so that's not the issue;
+ perhaps it was just a random coincidence that the values lined up, but we have many data points lining up, so that's probably not it either; 
+ we overestimated the error bars.

The third option seems most likely in this case. So **if our data looked like this, we should double-check the calculation of uncertainties.**

Finally, let's take a look at an example where the data points are typically much further than 1 error bar away from the fitted line:
![underfit example](images/errors-too-small.png)


This large value of $$\chi_\nu^2$$ tells us that:

+ perhaps our model (fitting function) isn't right;
+ perhaps there's a coincidence occurring, but we have many data points not falling on the line so that's probably not the issue;
+ perhaps we underestimated the uncertainties.

The first and third options are both plausible, so we would have to think carefully about how to proceed. If we are sure about our data and reasonably confident in our uncertainty estimate, maybe we need to re-think the theoretical model we are using!

### MATLAB Code

To use the MATLAB code first make sure you have the "curve fitting toolbox" and the "statistics and machine learning toolbox" installed. In the MATLAB environment, go to "HOME"-->"Add-Ons"-->"Get Add-Ons":

![get add ons](images/get_add_ons.png)

and search for the "curve fitting toolbox":

![curve fitting toolbox](images/curve_fitting_toolbox.png)

If it says "Installed" you are good to go. Otherwise, click on the Curve Fitting Toolbox page and install it. Now do the same for the "Statistics and Machine Learning Toolbox".

Now download this file for [weighted curve fitting of data with uncertainties](curve_fitting.m) and run the script. 

Every time you run the scripts, you will get the following warning in the command window:
![warning](images/warning.png)

This warning appears because we aren't providing the fit function with an initial guess of the slope and intercept. The function is picking an initial guess randomly. The initial guess might affect the fitting if you have many fitting parameters, but because we only have 2 fitting parameters $$(m,b)$$, **you can safely ignore this warning.**

To use the script for your own data, replace the "import data" section of the code (lines 8--10) with your own data pasted in. You should also customize the plot appearance (lines 15--25) and change the axis labels (lines 38--40). Everything else should not need modification in the script if you are fitting a straight line to your data.

#### Optional 

In the future (i.e., not needed in Ph50), if you'd like to fit a different function to your data, you can change line 52 of the code to a different function. You could, for example, fit to a quadratic by replacing line 52 with:

``` MATLAB
fit_func = @(a,b,c,x) a*x.^2 + b*x + c;  
```
