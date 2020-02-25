function area()

I=logical ([1     1     1     0     0     0     0     0
            1     1     1     0     0     0     0     0
            1     1     1     0     0     0     0     0
            1     1     1     0     0     0     0     0
            1     1     1     0     0     0     0     0
            1     1     1     0     0     0     0     0
            1     1     1     0     0     0    0     0
            1     1     1     0     0     0     0     0]);
area=sum(I(:) == 1);
area
[a b]=find(I==1);
d1=size(unique(a));
d2=size(unique(b));
AreaofObjectrectangle=dot(d1(1,1),d2(1,1))
end
