clc
b = [1 2 -1 -6; 2 1 3 5; 2 -2 -1 3];
a  = b;
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
for i = n-1 : -1 : 1
    for k = n : -1 : i + 1
        if(a(i,k) < 0)
            a(i,:) = a(k,:) * (-a(i,k)) + a(i,:);
        else
            a(i,:) = a(k,:) * (-a(i,k)) + a(i,:);
        end
    end
end
a
for i = 1 : 1 : n
    fprintf("x"+i+ " = "+ceil(a(i,n+1))+"\n");
end