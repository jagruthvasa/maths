clc;
clear all;
at=input('Enter function:','s');
f=inline(at);
a=input('Enter lower limit a: '); 
b=input('Enter upper limit b: ');  
n=input('Enter the  number of sub-intervals n: '); 
h=(b-a)/n;
for k=1:1:n
  x(k)=a+k*h;
  y(k)=f(x(k));
end
 m3=0;others=0;
for k=1:1:n-1
    if rem(k,3)==0
       m3=m3+y(k);%multiples of 3
     else
       others=others+y(k); %remaining terms other than multiples of 3,last and first terms
    end
end
% Formula:  (3h/8)[(y0+yn)+2(y3+y6+...+other multiples of 3term)+4*(y1+y2+y4+...+other terms except first,last and multiples of 3)]
answer=h/8*(f(a)+f(b)+(3*others)+(2*m3));
answer=answer*3;
fprintf('\n The value of integration is %f',answer);