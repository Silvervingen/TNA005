function [mass] = massa(t)
%MASSA Summary of this function goes here
%   Om tiden är under 10 så är massan 15-t och om tiden är mer än 10 så är
%   den 5
if t <= 40
    mass = 40-0.5*t;
else t > 40
    mass = 20;
end

end

