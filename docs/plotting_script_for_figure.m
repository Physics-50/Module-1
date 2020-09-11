%% initializing workspace
close all; % close all figure windows
clearvars; % clear variables from the workspace

%% import data (manual entry)
distances = [5, 30]; % distance from the bottom of the cutting board in cm  
mus = [0.49512, 0.37151];  % measured coefficient of friciton
muerrors = [0.00923, 0.0173]; % uncertainty in the coefficient of friciton

%% plot the data -- basic version
fig1 = figure('color','w'); % create a new figure window
errorbar(distances,mus,muerrors,'ko');  % Plot the data with errorbars
                                        % x-axis: distances
                                        % y-axis: mus
                                        % y error bars: muerrors
                                        % marker specification: 'ko' ('k'=black 'o'=circle)
                                        
xlabel('distance from bottom of cutting board (cm)'); %label x axis (with units)
ylabel('coefficient of static friction \mu_s'); % label y axis (backslash for Greek symbols)
xlim([0,35]); ylim([0.3,0.55]); % set limits of the axes

exportgraphics(fig1,'static-friciton-plot-basic.jpg','Resolution',600); % export figure 1 as "static-friciton-plot-basic.jpg" 
                                                                  % using a resolution of 600 dots per inch (high resolution)

%% plot the data -- improved version, considering "salience" & "simplicity"
fig2 = figure('color','w'); % create a new figure window
errorbar(distances,mus,muerrors,'ko','MarkerFaceColor','k','LineWidth',1,'MarkerSize',7); % plot the data
                    % x-axis: distances
                    % y-axis: mus
                    % y error bars: muerrors
                    % marker specification: 'ko' ('k'=black 'o'=circle)
                    % MarkerFaceColor = 'k' (black), for "salience" 
                    % Linewidth = 1 pt, thicker lines for "salience"
                    % MarkerSize = 7 pt, bigger data points for "salience"
                                       
                                       
xlabel('distance from bottom of cutting board (cm)','FontSize',18); %label x axis (with units), increasing FontSize for "salience"
ylabel('coefficient of static friction \mu_s','FontSize',18); % label y axis (backslash for Greek symbols), increasing FontSize for "salience" 
xlim([0,35]); ylim([0.3,0.55]); % set limits of the axes
set(gca,'XTick',[0, 10, 20, 30]); % set the x-tick locations manually (reduce number of ticks for "simplicity")
set(gca,'YTick',[0.3, 0.4, 0.5]); % set the y-tick locations manually (reduce number of ticks for "simplicity")

exportgraphics(fig2,'static-friciton-plot-improved.jpg','Resolution',600); % export figure 2 as "static-friciton-plot-improved.jpg" 
                                                                           % using a resolution of 600 dots per inch (high resolution)