function dy = funktion(t,y)
%UNTITLED3 Summary of this function goes here
%   funktionen �r -4y+cos(t)
 dy1 = y(2);
 dy2 = -4*y(1)+cos(t);
 dy = [dy1; dy2];
end
