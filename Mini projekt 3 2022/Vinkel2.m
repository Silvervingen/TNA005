function [vinkel2] = Vinkel2(t)
%VINKEL Summary of this function goes here
%   får endast använda 0,pi/4,pi/2,3pi/4,pi,5pi/4,3pi/2,7pi/4
if t < 0.6 && t > 0
    vinkel2 = pi;
elseif t < 3.7 && t > 0.6
   vinkel2 = 5*pi/4;
elseif t < 7.6 && t > 3.7
    vinkel2 = pi;
elseif t < 12.3 && t > 7.6
    vinkel2 = 3*pi/2;
elseif t < 16.8 && t > 12.3
    vinkel2 = 3*pi/4;
elseif t < 18.9 && t > 16.8
    vinkel2 = 3*pi/2;
else 
    vinkel2 = pi; 
end
