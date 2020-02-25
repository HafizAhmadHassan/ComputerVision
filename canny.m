function canny()


Nx1=10;mymax1=2;
Nx2=10;mymax2=2;
degree1=pi/2;
Ny1=10;mymay1=2;
Ny2=10;mymay2=2;
degree2=0;
LR=0.1;
[x, map] = imread('cameraman.tif');
w = ind2gray(x, map);

colormap(gray);
filterx=d2dgauss(Nx1,mymax1,Nx2,mymax2,degree1);
Ix= conv2(double(w),double(filterx),'same');

subplot(3,2,3);
filtery=d2dgauss(Ny1,mymay1,Ny2,mymay2,degree2);
Iy=conv2(double(w),double(filtery),'same'); 

NVI=sqrt(Ix.*Ix+Iy.*Iy);


I_max=max(max(NVI));
I_min=min(min(NVI));
level=LR*(I_max-I_min)+I_min;
subplot(3,2,5);
Ibw=max(NVI,level.*ones(size(NVI)));


subplot(3,2,6);
[n,m]=size(Ibw);
for i=2:n-1,
for j=2:m-1,
	if Ibw(i,j) > level,
	X=[-1,0,+1;-1,0,+1;-1,0,+1];
	Y=[-1,-1,-1;0,0,0;+1,+1,+1];
	Z=[Ibw(i-1,j-1),Ibw(i-1,j),Ibw(i-1,j+1);
	   Ibw(i,j-1),Ibw(i,j),Ibw(i,j+1);
	   Ibw(i+1,j-1),Ibw(i+1,j),Ibw(i+1,j+1)];
	XI=[Ix(i,j)/NVI(i,j), -Ix(i,j)/NVI(i,j)];
	YI=[Iy(i,j)/NVI(i,j), -Iy(i,j)/NVI(i,j)];
    
	ZI=interp2(X,Y,Z,XI,YI);
		if Ibw(i,j) >= ZI(1) & Ibw(i,j) >= ZI(2)
		I_temp(i,j)=I_max;
		else
		I_temp(i,j)=0;
		end
	else
	I_temp(i,j)=0;
	end
end
end
imshow(I_temp, []);
title('Result');
end