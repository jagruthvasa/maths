clc;
close all;
% Write the values of independent variable x.
x = input('Enter x values with [ ] around them'); 

% Write the values of dependent variable y.
y = input('Enter f(x) values with [ ] around them'); 

n=length(x); % Number of terms of X or Y
d=zeros(n-1);

h=x(2)-x(1); %step length
xn=input('Enter the value of x where we want to find the value of f(x): ');
u=(xn-x(n))/h;
for i=2:n %Calculation of first backward differences
    d(i-1,1)=y(i)-y(i-1);
end
for k=2:n-1  %Calculation of second and rest backward differences
    for i=1:n-k
        d(i,k)= d(i+1,k-1)-d(i,k-1);
    end
end
disp('The backward difference table is:')
d
s=y(n); t=u; m=n-1;
for k=1:n-1  %Calculation of result
    s=s+t*d(m,k);
    t=(u+k)/(k+1)*t;
    m=m-1;
end
fprintf('The required value is f(%f)= %5.5f',xn,s);
%Formula:
% f(xn)=y(n)+u*(del)y(1)+u*(u+1)/2!(del)^2y(1)+....+u*(u+1)..(u+n-1)/n!(del)^ny(1)
%where h=x(2)-x(1)=step length and u=(xn-x(n))/h.
% Here del:= backward difference operator.
