clear all;
clc;
at=input('Enter function:','s');
f=inline(at);
x0=input('\n Enter initial value of x i.e. x0: '); 
y0=input('\n Enter initial value of y i.e. y0: ');
xn=input('\n Enter the final value of x: ');
                                            
h=input('\n Enter the step length h: ');
 %Formula: y(new)=y(old)+h*fun(x0,y0);
 fprintf('\n x        y    f(x,y)    y(new)');
while x0<=xn
    y1=y0+h*f(x0,y0);
    x1=x0+h;
    fprintf('\n%4.3f  %4.3f %4.3f  %4.3f',x0,y0,f(x0,y0),y1);
    k=y0;
    x0=x1;
    y0=y1;  
end
fprintf('\n Final value is %4.3f',k)