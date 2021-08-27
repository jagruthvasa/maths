clc;                                               % Clears the screen
clear all;
at=input('Enter function:','s');
f=inline(at);
x0=input('\nenter initial value of x i.e. x0: '); %example x0=0
y0=input('\nEnter initial value of y i.e. y0: '); %example y0=0.5
xn=input('\nEnter the final value of x: ');
h=input('\nEnter the step length h: ');
k1=0;k2=0;k3=0;k4=0;
%h=0.5;                                             % step size
%x = x0:h:xn;                                         % Calculates upto y(3)
%y = zeros(1,length(x)); 
%y(1) = 0.5;                                          % initial condition
%f = @(x,y) y-x^2+1;  
% change the function as you desire
fprintf('\n  x    k1    k2     k3    k4    k    y ');
for j=x0:h:(xn-h)
   
    k1 = h*f(x0,y0);
    k2 = h*f(x0+0.5*h,y0+0.5*k1);
    k3 = h*f((x0+0.5*h),(y0+0.5*k2));
    k4 = h*f((x0+h),(y0+k3));
    k=(k1+2*k2+2*k3+k4)/6;
    y0= y0+k;
   
    x0=x0+h;
    fprintf('\n%4.3f %4.3f %4.3f %4.3f  %4.3f %4.3f %4.3f',x0,k1,k2,k3,k4,k,y0); 
   
end