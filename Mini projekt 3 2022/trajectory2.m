function dz = trajectory2(t,z)
%TRAJECTORY Summary of this function goes here
%   Detailed explanation goes here
km = 2000;
c = 0.25;
g = 9.82
Ux = km * cos(Vinkel2(t));
Uy = km * sin(Vinkel2(t));

dz = [z(2)
     -(c/massa2(t)) * sqrt(z(2)^2 + z(4)^2) * z(2) + (der_massa2(t)/massa2(t)) * Ux
     z(4)
     -(c/massa2(t)) * sqrt(z(2)^2 + z(4)^2) * z(4) + (der_massa2(t)/massa2(t)) * Uy-g]
 fart = 10+(sqrt(z(2)^2 + z(4)^2))
end

%   z(2) är x´(t)
%   z(4) är y´(t)
%   dz ger en 4x1 matris