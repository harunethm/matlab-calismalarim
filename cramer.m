clc

a = [3 4 -3; 3 -2 4; 3 2 -1];
b = [5;7;3];
gecici_matris = a
n = length(a);
a_determinanti = det(a);
for i=1:1:n
     gecici_matris(:,i) = b(:,1);
     determinant = det(gecici_matris);
     gecici_matris(1:n,i) = a(1:n,i);
     sonuc = determinant/a_determinanti;
     sonuc
end