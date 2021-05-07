clc

b = [1 -1 5 10; 2 1 1 5; -3 -2 3 -2];

a = b;

n=length(a)-1;

for i = 1:1:n
    if(a(i,i) ~= 1)      
         a(i,:) = a(i,:)/a(i,i);
    end
        for k=i+1 : 1 : n
            if(a(i,i) > 0)
                a(k,:) = (-a(k,i))*a(i,:) + a(k,:);
            else
                a(k,:) = (a(k,i))*a(i,:) + a(k,:);
            end
        end    
end

for i = n:-1:1
    t = tb(i,n,a);
    a(i,i) = a(i,n+1) - t;
end

a

for x = n:-1:1
   fprintf("x%d = %.4f\n", x, a(x,x));
end

function r = tb(i,n,a)
r=0;
    if(1)
        for j = i+1:1:n
            r = r + (a(i,j) * a(j,j));
        end
    end
end