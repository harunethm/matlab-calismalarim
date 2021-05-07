clc;
clear;
t=0:0.01:10;
x=exp(-0.4*t).*sin(2*t);
y=power(cos(t),2)-0.5;
figure(1);plot(t,x,'r',t,y,'b')
title('sistem girisi ve cikisi')
xlabel('zaman')
ylabel('cikis')
legend('giris','cikis')
figure(2);plot(log10(t),y,'--')
figure(3);loglog(t,abs(y))
figure(4);plotyy(t,x,t,y)