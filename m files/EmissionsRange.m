function [rangeNOx,rangeCO] = EmissionsRange(startIndex,endIndex,dates,NOx,CO)
%% EMISSIONSRANGE _Function_ EmmissionsRange
% This function calculates the average emissions over a specific index (time 
% period)
    index=(startIndex:endIndex); % index is the time period
    
    rangeNOx = zeros(1,length(index));
    rangeCO  = zeros(1,length(index));
    
    % Runs through the function for every point in the index
    for i=1:length(index) 
        % Creates two vectors for both the ranges of NOx and CO emissions
        [rangeNOx(i),rangeCO(i)]=EmissionsAvg(index(i),dates,NOx,CO); 
    end
end