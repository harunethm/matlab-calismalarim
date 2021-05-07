clc

%bu fonksiyon için tavsiye edilen başlangıç değerleri 0 ve 10 dur
a = input("baslangic degerini giriniz : ");
b = input("bitis degerini giriniz : ");
s_3 = 15000;
while(abs(s_3) > 0.001)
    s_1 = fonk(a)
    s_2 = fonk(b)
    s_3 = fonk(kural(a,b))
    
    if(s_2 * s_3 < 0)
        s_1 = s_3;
        a = kural(a,b);
    else
        s_2 = s_3;
        b = kural(a,b);
    end
end

s_3

function y=fonk(x)
    %fonksiyon değiştirilerek farklı denklemler çözümlenebilir
    y = power(x,2) - 64;
end

function y = kural(a,b)
    y = (a * fonk(b) - b * fonk(a)) / (fonk(b) - fonk(a));
end

başlangıç değeri(a), bitiş değeri(b) ve fonk. soruda verilir
bu değerler fonksiyonda yerine konur
	a için s_1, b için s_2 sonuçları bulunur

regulaFalsi denkleminde sabit bi kural fonksiyonu var
	a * fonk(b) - b * fonk(a)
	---------------------------
	   fonk(b) - fonk(a)
bu kuraldan dönen değer de tekrar fonksiyonda yerine yazılır ve s_3 değeri bulunur

sonra s_1 ve s_2 değerleri s_3 ile karşılaştırılır zıt işaretli olan a kenarı olur s_3 ise b kenarı olur
a ve b kenarlarını yeniden belirlediğimize göre en başa dönüp tekrar aynı işlemleri yaparız ve her seferinde aralığı daraltmış oluruz