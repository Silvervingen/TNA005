function [mass] = massa(t)
%MASSA Summary of this function goes here
%   Om tiden �r under 10 s� �r massan 15-t och om tiden �r mer �n 10 s� �r
%   den 5
if t <= 40
    mass = 40-0.5*t;
else t > 40
    mass = 20;
end

end

