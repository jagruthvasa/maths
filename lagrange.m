clc;
close all;
% Write the values of independent variable x.
x = input('Enter x values with [ ] around them'); 

% Write the values of dependent variable y.
y = input('Enter f(x) values with [ ] around them'); 
xp=input('Enter the value of x where we want to find the value of f(x): ');
yp=lagrange_interp(x,y,xp);
fprintf('The required value is f(%f)= %5.5f',xp,yp);
function y0=lagrange_interp(x,y,x0)
y0=0;
n=length(x);
for j=1:n
    t=1;
    for i=1:n
        if i~=j
            t=t*(x0-x(i))/(x(j)-x(i));
        end
    end
    y0=y0+t*y(j);
end
end
