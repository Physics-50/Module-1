%% initializing workspace
close all; % close all figure windows
clearvars; % clear variables from the workspace

%% import data (manually entering data)
% NOTE: the fit function needs column vectors, 
% so we use the transpose operator (') on the row vectors below to yield column vectors
x = [50 100 150 200 250]';
y = [.543, .518, .547, 0.563, 0.543]';
y_err = [0.007 0.010 0.007 0.008 0.006]';


%% Use LaTeX to interpret text in labels
set(groot,'defaultAxesTickLabelInterpreter', 'latex');
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');

%% plot the data with errorbars
fig1 = figure('color','w'); % create a new figure window
hold on; % new plots add to the figure, not replace contents of figure
box on; % add bounding box to the plot

errorbar(x,y,y_err,'ko','MarkerFaceColor','k','LineWidth',1,'MarkerSize',7); % plot the data
xlabel("$m$ (g)"); % Set the x axis label. Algebraic values are set
                   % in math mode, which is between dollar signs
ylabel("$\mu_s$"); % In math mode, Greek letters are preceded by a backslash

x_range = xlim; % get current x-axis limits, store in variable "x_range"
xlim([x_range(1)-50, x_range(2)+50]); % expand the x-axis limits by 50 on each side
y_range = ylim; % get current y-axis limits, store in variable "y_range"
ylim([y_range(1)-0.02, y_range(2)+0.02]); % expand the y-axis limits by 0.05 on each side
ax = gca; % gca means get current axes, so ax is a handle to the axes object
ax.FontSize = 18; % sets the default font size for axis and tick labels
                  % this is how to set the tick font size

%% perform a weighted fit of a horizontal line to the data

fit_func = @(b,x) b+x.*0;   % here, y = b (constant function); 
                            % 1 free fit parameter "b";
                            % need to "trick" MATLAB into thinking this is
                            % a function of x (otherwise the "fit" function below throws an error)
                            % x.*0 creates a vector of zeros the size of x
                            % the .* is an element-by-element multiplication

%fit_func = @(m,b,x) b+m*x; % this version would allow a nonzero slope
                           
weights = 1./y_err.^2;  % each datapoint will be weighted by 1/(uncertainty^2)
                        % --> points with more uncertainty contribute less to the fit

[curve, goodness, output] = fit(x,y,fit_func,'Weights',weights);
% perform a fit of the function "fit_func" to the data (x,y) with weighting
% the fitted parameters are stored as, e.g., "curve.b"
                                
%% plot the fit        
x_range = xlim; % get and store x-axis limits
x_values = linspace(x_range(1),x_range(2),100); % define 100 points to plot the fit curve at
plot(x_values,feval(curve,x_values),'-','LineWidth',1.5,...
    'Color', [0 0 0 0.33]); % feval evaluates the fitted curve at the points in x_values 
    % the Color parameter is black, but with an alpha value of 0.33 to make it partially
    % transparent

% set the x-tick locations manually (reduce number of ticks for "simplicity")
set(ax,'XTick',[0, 100, 200, 300]);
% set the y-tick locations manually (reduce number of ticks for "simplicity")
set(ax,'YTick',[0.5, 0.55, 0.6]);

%% calculate uncertainty in fitted parameters

% First step is to calculate the reduced chi2
% for a succesfull fit (assuming many data points) we expect 
% the reduced chi2 to be approximately 1
reduced_chi2 = sum(output.residuals.^2)/goodness.dfe;
% note the residuals stored in the output from the fit 
% are normalized by the error bars already

                                                      
% TWO METHODS TO ESIMATE UNCERTAINTIY IN FITTED PARAMETERS

% METHOD #1 based on the distribution of the residuals 
% (good if the reduced chi2>1 and you're sure about the model) 
% the confidence intervals of the fitted curve that MATLAB auto-calculates
% are based on this approach
% we convert the 95% confidence interval into a standard error:
SE1 = diff(confint(curve,.95))/(2*tinv(.975,goodness.dfe));

% METHOD #2 based on the value of the error bars
% we could calculate this from the unnormalized covariance matrix
% but we have a shortcut because method 2 and method 1 are related by:
SE2 = SE1/sqrt(reduced_chi2);

% the two methods are equivalent when the reduced chi2 = 1
% let's take a conservative approach 
% and report the maximum of the two methods
parameter_uncertainty = max(SE1,SE2);

%% add uncertainty information to legend

% get information about fitted curve
formula_string = "y = " + formula(curve);
parameter_names = coeffnames(curve);
parameter_values = coeffvalues(curve);

% assemble fitting information into a list of strings
% that can be combined at the end with a join operation
info_string = [];

% The following assumes algebraic symbols for the parameter names.
% They will get set in italics in LaTeX, thanks to the dollar signs.
for i=1:length(parameter_names)
    info_string = [info_string, ...
        "$"+parameter_names{i}+" = "+ num2str(parameter_values(i))...
        + " \pm " + num2str(parameter_uncertainty(i))+"$"];
end

% optionally add reduced chi2 to string
% info_string = [info_string, "reduced $\chi_{\nu}^2 = "+ ...
%    sprintf("%.2g $", reduced_chi2)];

fitting_info_string = join(info_string, newline);

% There is no need for a legend, since we only have a single data
% series. However, we would like to display the fitting information
% To specify where to put the text, we can use an array of four values
% [left, bottom, width, height]. If you need to adjust, feel free!

location = [0.5 0.15 0.45 0.3]; % see above comment on how to adjust

annotation('textbox', location, 'interpreter', 'latex',...
    'String', fitting_info_string, 'LineStyle', 'none',...
    'VerticalAlignment', 'bottom', FontSize=18);

% To save the graphic, use a line like the following
% Portable network graphics (PNG) is a lossless compression format
% appropriate for bitmaps of line art. For best resolution, however
% use a vector graphics format (pdf or wmf) in which the drawing
% commands are stored, rather than the pixels that result. 

% exportgraphics(fig1, 'mylovelyplot.png', 'Resolution',300);

