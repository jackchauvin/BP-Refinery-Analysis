%% Load Data Script
% This script loads data from a data file: "data.csv"

% Loads individual column vectors for each category in file provided by BP 

data=csvread('data.csv',1,0); %Loads Data

%Creates an individual vector for each column/category

date=data(:,1);  % (step-size 15 min)        
salePrice=data(:,2); % ($/MWhr)
fuelCost=data(:,3);  % ($/MBTU)
Demand=data(:,4);  % (MW)
totalProd=data(:,5);  % (MW)
SteamSold=data(:,6);  % (kip/hr)
turbine1Prod=data(:,7); % (MW)
turbine1Fuel=data(:,8); % (hSCF/hr)
turbine1CO=data(:,9);  % (ppm)
turbine1NOx=data(:,10);  % (ppm)
turbine2Prod=data(:,11);  % (MW)
turbine2Fuel=data(:,12);  % (hSCF/hr)
turbine2CO=data(:,13);  % (ppm)
turbine2NOx=data(:,14);  % (ppm)
db1Fuel=data(:,15);  % (hSCF/hr)  
db1Steam=data(:,16);  % (kip/hr)
db2Fuel=data(:,17);  % (hSCF/hr)
db2Steam=data(:,18);  % (kip/hr)
steamProd=data(:,19);  % (MW)
steamFuel=data(:,20);  % (kip/hr)
natGasDensity=data(:,21);  % (BTU/SCF)
temp=data(:,22);  % (F)
% Reforms how have appear from Vector
% Converts to dd-mm-yyyy format from day format
date=datetime(date,'ConvertFrom','Excel');