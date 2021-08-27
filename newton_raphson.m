clear all;
clc
%f=@(x)(x^3-3*x+1);
%g=@(x)(3*x^2-3);
%x=0.5;
a=input('Enter function:','s');
f=inline(a);
b=input('Enter function:','s');
g=inline(b);
x=input('Enter the first value of guess interval:') ;
n=20;
y=x
for k=1:n
       if(g(x)==0)
         display('method fails');
         break;
       else
         x=x-(f(x)/g(x));
         display('iteration number is');
         k
        end
       if (abs(y-x)<0.0001)
            display('the root is ');
            x
            break;
       end
       y=x
      
end