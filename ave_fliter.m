function d=ave_fliter(x,n)
a(1:n,1:n)=1;    %产生n*n的卷积核
[height,width]=size(x);     
x1=double(x);    %细化精度，为循环内运算做准备
x2=x1;
for i=1:height-n+1     
    for j=1:width-n+1
        c=x1(i:i+n-1,j:j+n-1).*a;     %将从i，j开始的n行n列与a做点乘（卷积）
        b=sum(sum(c));
        x2(i+(n-1)/2,j+(n-1)/2)=b/(n*n); %将平均后的值放入此时n*n中的中心点
    end
end
d=uint8(x2);     %没取到的不动，将x2中算完的浮点数对应到0-255像素点

