%% Emissions Plot
% This script plots the emissions of the avg. CO and NOx Emissions throughout 
% the month of July 2015

% Set time period to be analyzed
% Creates a time index of July 2015
startIndex=find(date=='01-Jul-2015'); 
endIndex=find(date=='01-Aug-2015')-1;

NOx=turbine1NOx; % Sums the total NOx emissions
CO=turbine1CO; % Sums the total CO Emissions

[rangeNOx,rangeCO] = EmissionsRange(startIndex,endIndex,date,NOx,CO);
 
% Plots the Emissions of NOx in the month of 
% July 2015 and marks the overages
figure
JulyDate=(date(startIndex:endIndex));
plot(JulyDate,rangeNOx)
hold on 
% Finds the points at which the threshold has been breached
overNOx=find(rangeNOx>=3); 
a=rangeNOx(overNOx); 
b=JulyDate(overNOx);

plot(b,a,'*')
title('NOx Emissions in July 2015');
xlabel('Days of July');
ylabel('Emissions in ppm');
legend('Emissions','Emissions over Threshold of 3 ppm','Location','NorthWest');

% Plots the Emissions of CO in the month of 
% July 2015 and marks the overages
figure
plot(JulyDate,rangeCO)
hold on 
% Finds the points at which the threshold has been breached
overCO=find(rangeCO>=9);
c=rangeCO(overCO); 
d=JulyDate(overCO);
plot(d,c,'*')
title('CO Emissions in July 2015');
xlabel('Days of July');
ylabel('Emissions in ppm');
legend('Emissions','Emissions over Threshold of 9 ppm','Location','NorthWest');