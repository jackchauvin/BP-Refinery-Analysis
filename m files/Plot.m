%% Plot Script
% Plots Graphs of Demand and Production on ceratain days

format compact
format bank
% Script is meant to be run after LoadData
% Demand and totalProd will be defined
demand=Demand;       
production=totalProd;

% Input time frame to analyze
% Calculates time interval Domain for February 2, 2014
startIndex=find(date=='02-Feb-2014');
endIndex=find(date=='03-Feb-2014')-1;
% Creates a vector of dates from specific time interval (step-size 15 min)
febdate=date(startIndex:endIndex);    
% Creates a vector of demands from specific time interval  (MW) 
newdemand=demand(startIndex:endIndex); 

% Plots Demand from February 2, 2014 on subplot
figure           
subplot(2,1,1)
plot(febdate,newdemand);

title('Demand of February 2, 2014');
xlabel('Time (hrs)');
ylabel('Demand (MW)')

% Calculates time interval Domain for January 2, 2014
startIndex=find(date=='02-Jan-2014');  
endIndex=find(date=='03-Jan-2014')-1;
% Creates a vector of dates from specific time interval  (step-size 15 min)
jandate=date(startIndex:endIndex);  
% Creates a vector of demands from specific time interval  (MW)
newdemandJan=demand(startIndex:endIndex);  

% Plots Demand form January 2, 2014 on subplot
subplot(2,1,2)
plot(jandate,newdemandJan) 

title('Demand of January 2, 2014');
xlabel('Time (hrs)');
ylabel('Demand (MW)')

% Calculates time interval Domain for March 6, 2015  (step-size 15 min)
startIndex=find(date=='06-Mar-2015');
endIndex=find(date=='07-Mar-2015')-1;
% Creates a vector of dates from specific time interval  (step-size 15 min)
Marchdate=date(startIndex:endIndex);  
% Creates a vector of demands from specific time interval  (MW)
Marchdemand=demand(startIndex:endIndex);  
% Creates a vector of productions from specific time interval (MW)
Marchprod=production(startIndex:endIndex);       
 
figure  % Plots Demands and Production for March 6, 2015 on a new, single plot 
plot(Marchdate,Marchdemand,Marchdate,Marchprod,'r')

title('Demand and Production of March 6, 2015');
xlabel('Time (hrs)');
ylabel('(MW)');
legend('Demand','Production');

% Calculates unmet Demand on March 6, 2015 (MW)
[unmetDemand]=UnmetDemand(startIndex,endIndex,demand,production);  
% Creates a vector of Sale Prices from specific time interval ($/MWhr) 
MarchsalePrice=salePrice(startIndex:endIndex)';
% Calculates lost revenues for March 6, 2015 every 15 minutes and creates a vector ($) 
LostRev=unmetDemand.*MarchsalePrice*.25;  
Total_lost_Rev=sum(LostRev)