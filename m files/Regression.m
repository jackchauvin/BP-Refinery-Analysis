function [ a ] = Regression( startIndex,endIndex,zValues,fuel,temp,gasDensity )
%% REGRESSION _Function_ Regression
% Solves for the co-efficients of each of the equations
    fuel=fuel.*gasDensity/10000; % converts Fuel from hSCF/hr to MBTU/hr
    
    % Creates a vector for the given duration of
    % each of the inputs. For this analysis: February 2013
    f=fuel(startIndex:endIndex); 
    t=temp(startIndex:endIndex);
    p=zValues(startIndex:endIndex);
    
    % Matrices of equations used to solve for 'a' 
    matrix=[length(startIndex:endIndex),sum(f),sum(t),sum(t.*f),sum(f.^2);
        sum(f),sum(f.^2), sum(t.*f), sum(t.*f.^2), sum(f.^3);
        sum(t), sum(t.*f), sum(t.^2), sum(t.^2.*f), sum(t.*f.^2); 
        sum(t.*f), sum(t.*f.^2), sum(t.^2.*f), sum(t.^2.*f.^2), sum(t.*f.^3); 
        sum(f.^2), sum(f.^3), sum(t.*f.^2), sum(t.*f.^3), sum(f.^4)];
    
    matrix2=[ sum(p); sum(f.*p); sum(t.*p); sum(t.*f.*p); sum(f.^2.*p)];
    
    a=matrix\matrix2;
end