function mor()

degree=120; % degreeold
im= imread('cameraman.tif'); % the file to be read

im=imresize(im, [256 256]);
 
axis('square');
colormap('gray');

im1=uint8(im); 
peak=degree/255.0;
BW = IM2BW(im1,peak); .


K3=ones(3); 
K5=ones(5); 
K7=ones(7); 
K9=ones(9);

B3=imdilate(BW,K3);
B5=imdilate(BW,K5);
B7=imdilate(BW,K7);
B9=imdilate(BW,K9);


figure(2);
Imagesc(B3);  

figure(3);
Imagesc(B5); 

figure(4);
Imagesc(B7); 
axis('square');
colormap('gray');

figure(5);
Imagesc(B9);  

im1=uint8(im); 
BW = IM2BW(im1,peak); 



K3=ones(3); K5=ones(5); K7=ones(7); K9=ones(9);

B3=imerode(BW,K3);
B5=imerode(BW,K5);
B7=imerode(BW,K7);
B9=imerode(BW,K9);


figure(6);
Imagesc(B3);  

figure(7);
Imagesc(B5); 



figure(8);
Imagesc(B7);  

figure(9);
Imagesc(B9);  

im1=uint8(im); 
BW = IM2BW(im1,peak); 

figure(10);
Imagesc(BW); ;

% opening

op=bwmorph(BW,'open');
figure(11);
Imagesc(op);  

im1=uint8(im); 
BW = IM2BW(im1,peak); 

% closing

op=bwmorph(BW,'close');
figure(12);
Imagesc(op); 

im1=uint8(im); 
BW = IM2BW(im1,peak); 

%thin
op=bwmorph(BW,'thin');
figure(13);
Imagesc(op); 
im1=uint8(im); 
BW = IM2BW(im1,peak); 

% thickening

op=bwmorph(BW,'thick');
figure(14);
Imagesc(op); 

end
