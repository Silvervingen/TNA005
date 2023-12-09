function [t,y] = RK4(fun,tspan,y0,n)

h = (tspan(2)-tspan(1))/n;
t = linspace(tspan(1),tspan(2),n);
y = zeros(length(y0),length(t));
y(:,1) = y0;

for i=1:(n-1)                              % calculation loop
    k1 = h * fun(t(i), y(:,i));
    k2 = h * fun(t(i)+0.5, y(:,i)+0.5*k1);
    k3 = h * fun(t(i)+0.5, y(:,i)+0.5*k2);
    k4 = h * fun(t(i)+ h, y(:,i)+k3);
    y(:,i+1) = y(i) + h*(1/6)*(k1+2*k2+2*k3+k4);  % main equation
  
end
y = y'; % making y transponerat
end
