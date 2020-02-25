function logicalop()

A=imread('cameraman.tif');
subplot(5,3,1)
imshow(A)
title('A');

B=imread('rice.png');
subplot(5,3,2)
imshow(B)
title ('B');
C=zeros(size(A));
for (x= 100: 200)
    for (y=100: 200)
        C(x,y)=255;
    end
end
subplot(5,3,3)
imshow(C)
title('C');
C=uint8(C);

% Logical Operations

lr1=bitand(A,C);
subplot(5,3,4)
imshow(lr1)

title(' A and C');
lr2=bitand(A,C);
subplot(5,3,5)
imshow(lr2)

title('NAND ');
lr11= bitcmp(lr2);
subplot(5,3,6)
imshow(lr11)

title('A or C');
lr5=bitor(A,C);
subplot(5,3,7)
imshow(lr5)
title('NOR ');

lr16=imsubtract(A,C);
subplot(5,3,8)
imshow(uint8(lr16))
title('A - C');



end