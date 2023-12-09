function [t,y] = RK2(fun,tspan,y0,n)

h = (tspan(2)-tspan(1))/n;
t = linspace(tspan(1),tspan(2),n+1);
%y = zeros(length(y0),length(t));
y(:,1) = y0;

for i = 1:n
    k1 = h * fun(t(i), y(:,i));
    k2 = h * fun(t(i)+ h, y(:,i)+k1);
    y(:,i+1) = y(:,i) + (k1+k2)/2;
end
y = y'; % making y transponerat
end

%for i = 1:n-1
%    k1 = fun(t(i), y(:,i));
%   k2 =  fun(t(i)+ h, y(:,i)+h*k1);
%    y(:,i+1) = y(:,i) + h*(k1+k2)/2;
%end
