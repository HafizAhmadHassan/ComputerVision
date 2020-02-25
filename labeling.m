function labeling()
I=logical ([1     1     1     0     0     0     0     0
            1     1     1     0     1     1     0     0
            1     1     1     0     1     1     0     0
            1     1     1     0     0     0     1     0
            1     1     1     0     0     0     1     0
            1     1     1     0     0     0     1     0
            1     1     1     0     0     1     1     0
            1     1     1     0     0     0     0     0]);

L = bwlabel(I);

[p,n] = size(I);
i1=p-1;
i2=p-3;
i3=p-2;
i4=p-5;

    for k=1:p
    i=1;
        for t=1:n
            j=1;
            if I(i,j) < i2 &&  I(i,j) > i1 
                I(i,j)=o1;
            end
         if I(i,j) < i4 &&  I(i,j) > i3 
                I(i,j)=o2;
         end
             if I(i,j) < i4 &&  I(i,j) > i3 
                I(i,j)=o2;
             end
             if I(i,j) < i4 &&  I(i,j) > i3 
                I(i,j)=o2;
            end
        j=j+1;
        end
      i=i+1;
    end

L
end