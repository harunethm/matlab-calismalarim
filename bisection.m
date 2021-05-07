clc;

a = 1;
b = 3;
c;
s3 = 15000;
s1 = denklem(a);
s2 = denklem(b);
while(abs(s3) > 0.001)
    c = (a+b)/2;
    s3 = denklem(c);
    
    if(s1*s3<0)
        b = c;
        s2=s3;
    else
        a = c;
        s1=s3;
    end
    
end

c

function y=denklem(a)
y=power(a,3) - 5 * power(a,2) - 2*a + 10;
end