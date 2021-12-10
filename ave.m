x = imread('K:\研一电脑上的东西\class\lena_512.bmp');
n=7;
t=mirror_edge(n,x);        
out=ave_fliter(t,n);      
%cc=imcrop(out,[n-1 n-1 511 511]);  %剪切
figure
imshow(out);
title('7*7卷积操作结果')
