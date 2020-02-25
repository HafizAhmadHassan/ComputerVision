function graylevel2(i1,i2,o1,i3,i4,o2,i5,i6,o3,i7,i8,o4)
I = imread('cameraman.tif');
[p,n] = size(I);
    for k=1:p
    i=1;
        for t=1:n
            j=1
            if I(i,j) < i2 &&  I(i,j) > i1 
                I(i,j)=o1;
            end
         if I(i,j) < i4 &&  I(i,j) > i3 
                I(i,j)=o2;
            end
         if I(i,j) < i6 &&  I(i,j) > i5 
                I(i,j)=o3;
            end
         if I(i,j) < i8 &&  I(i,j) > i7
                I(i,j)=o4;
         end
             j=j+1; 
        end
    i=i+1;
    end
   
end