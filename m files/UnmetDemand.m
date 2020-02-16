function [ unmetDemand ] = UnmetDemand( startIndex,endIndex,demand,production )
%% UNMETDEMAND _Function_ UnmetDemand
% Uses for loop to calculate unmet demand over a certain period of time
    
    % Shortens demand and production vectors to specific time period
    demand=demand(startIndex:endIndex);  
    production=production(startIndex:endIndex);
    
    unmetDemand = zeros(1,length(demand));
    
    % For loop calculates unmet Demand
    for i=1:length(demand)    
        % If unmet Demand is less than zero, it is reported as zero
        if demand(i)-production(i)<0  
            unmetDemand(i)=0;        
        else
            unmetDemand(i)=demand(i)-production(i);
        end
    end
end