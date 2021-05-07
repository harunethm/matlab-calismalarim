clc
clear

%fonksiyonum icin varsayılan alt ve ust deger
a = -(pi/2);
b = pi/2;

n = floor((b - a) * 100); %farkin 100 kati kadar parcaya bolumu
h = (b-a)/n;

toplam = 0;

for i = 0:n-1
	toplam = toplam + fonksiyon((a + i * h));
end

sonuc = h*toplam

function y = fonksiyon(x)
	y = sin(power(x,2));% f(x) = sin(x^2) dx
end