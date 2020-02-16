function [avgNOx,avgCO] = EmissionsAvg(index,dates,NOx,CO)
%% EMISSIONSAVG _Function_ EmissionsAverage
% This function calculates the average NOx (3 hr) and CO (1 hr) emmisions over 
% a given time period
    % Calculates the one-hour rolling index for CO
    i=1;
    % While loop checks to make sure that the current "i" value falls within the accepted duration of 0.59.00
    while dates(index)-dates(index-i) <= duration(0,59,0) 
        i=i+1;
    end
    
    lengthCO=CO(index-i:index); % vector of CO emissions that falls within the caluclated duration 
    avgCO=mean(lengthCO); % Average of the CO emissions within duration 
    
    % Calculates the 3-hour rolling index for NOx
    j=1;
    % While loop checks to make sure that the current "i" value falls within the accepted duration of 2.59.00
    while dates(index)-dates(index-j)<= duration(2,59,0) 
        j=j+1;
    end
    
    lengthNOx=NOx(index-j:index); % vector of NOx emissions that falls within the caluclated duration 
    avgNOx=mean(lengthNOx); % Average of the NOx emissions within duration 
end