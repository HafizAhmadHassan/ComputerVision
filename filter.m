function filter()
I = imread('cameraman.tif');
figure
imshow(I)
J = imnoise(I,'speckle',0.09);
figure
imshow(J)

Kaverage = filter2(fspecial('average',3),J)/255;
figure
imshow(Kaverage)
Kmedian = medfilt2(J);
figure
imshow(Kmedian)


end