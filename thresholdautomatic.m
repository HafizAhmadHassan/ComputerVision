function thre = func_threshold()
I=imread('cameraman.tif')
[counts, N] = hist(I, 256);
i = 1;
mu1 = cumsum(counts);
T(i) = (sum(N.*counts)) / mu1(end);

mu2 = cumsum(counts(N<=T(i)));
MBT = sum(N(N<=T(i)).*counts(N<=T(i)))/mu2(end);

mu3 = cumsum(counts(N>T(i)));
MAT = sum(N(N>T(i)).*counts(N>T(i)))/mu3(end);
i=i+1;

T(i) = (MAT+MBT)/2;
thre = T(i);

while abs(T(i)-T(i-1))>=1
    mu2 = cumsum(counts(N<=T(i)));
    MBT = sum(N(N<=T(i)).*counts(N<=T(i)))/mu2(end);
    
    mu3 = cumsum(counts(N>T(i)));
    MAT = sum(N(N>T(i)).*counts(N>T(i)))/mu3(end);
    
    i=i+1;
    T(i) = (MAT+MBT)/2; 
    thre = T(i);
end
end