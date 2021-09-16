%% initializing w   orkspace
close all; % close all figure windows
clearvars; % clear variables from the workspace

%% Use LaTeX to interpret text in labels
set(groot,'defaultAxesTickLabelInterpreter', 'latex');
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');

%% import data (manual entry)
distances = [5, 30]; % distance from the bottom of the cutting board in cm  
mus = [0.49512, 0.37151];  % measured coefficient of friction
muerrors = [0.00923, 0.0173]; % uncertainty in the coefficient of friciton

%% plot the data -- basic version
fig1 = figure('color','w'); % create a new figure window with a white background
errorbar(distances,mus,muerrors,'ko');
    % Plot the data with errorbars
    % x-axis: distances
    % y-axis: mus
    % y error bars: muerrors
    % marker specification: 'ko' ('k'=black 'o'=circle)
                                        
xlabel('$x$ (cm)'); %label x axis (with units)
ylabel('$\mu_s$'); % label y axis (backslash for Greek symbols)
xlim([0,35]); ylim([0.3,0.55]); % set limits of the axes
pause(0.5); % overcomes a bug in MATLAB on some platforms
exportgraphics(fig1,'static-friction-plot-basic.png','Resolution',300); 
% export figure 1 as "static-friction-plot-basic.png" 
% using a resolution of 300 dots per inch (high resolution)

%% plot the data -- improved version, considering "salience" & "simplicity"
fig2 = figure('color','w'); % create a new figure window
errorbar(distances,mus,muerrors,'ko','MarkerFaceColor',...
    'k','LineWidth',1,'MarkerSize',7); % plot the data
    % x-axis: distances
    % y-axis: mus
    % y error bars: muerrors
    % marker specification: 'ko' ('k'=black 'o'=circle)
    % MarkerFaceColor = 'k' (black), for "salience" 
    % Linewidth = 1 pt, thicker lines for "salience"
    % MarkerSize = 7 pt, bigger data points for "salience"
                                       
ax = gca; % get handle to the axes object using gca (get current axes)
ax.FontSize = 18; % sets the default font size for axis and tick labels
                  % this is how to set tick font size
set(ax,'XTick',[0, 10, 20, 30]); % set the x-tick locations manually
                              % (reduce number of ticks for "simplicity")
set(ax,'YTick',[0.3, 0.4, 0.5]); % set the y-tick locations manually
                              % (reduce number of ticks for "simplicity")
                                       
xlabel('$x$ (cm)','FontSize',18); % label x axis (with units), dollar signs
                        % for math mode, increased FontSize for "salience"
ylabel('$\mu_s$','FontSize',18); % label y axis, dollar signs for math
                        % mode, backslash for Greek letters, increased
                        % FontSize for "salience"
xlim([0,35]); ylim([0.3,0.55]); % set limits of the axes
pause(0.5); % overcomes a bug in MATLAB on some platforms
exportgraphics(fig2,'static-friction-plot-improved.png','Resolution',300);
% export figure 2 as "static-friction-plot-improved.png" 
% using a resolution of 300 dots per inch (high resolution)