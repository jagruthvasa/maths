clc;
clear all;
%syms x
%f=@(x) 1/(1+x); %Change here for different function
 at=input('Enter function:','s');
f=inline(at);
a=input('Enter lower limit a: '); % exmple a=1
 b=input('Enter upper limit b: ');  % exmple b=2
 n=input('Enter the no. of subinterval: ');  % exmple n=10
 h=(b-a)/n;
 sum=0;
for k=1:1:n-1
  x(k)=a+k*h;
  y(k)=f(x(k));
  sum=sum+y(k);
end
% Formula:  (h/2)[(y0+yn)+2(y2+y3+..+yn-1)]
answer=h/2*(f(a)+f(b)+2*sum);
fprintf('\n The value of integration is %f',answer);