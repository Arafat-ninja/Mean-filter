function d=ave_fliter(x,n)
a(1:n,1:n)=1;    %����n*n�ľ����
[height,width]=size(x);     
x1=double(x);    %ϸ�����ȣ�Ϊѭ����������׼��
x2=x1;
for i=1:height-n+1     
    for j=1:width-n+1
        c=x1(i:i+n-1,j:j+n-1).*a;     %����i��j��ʼ��n��n����a����ˣ������
        b=sum(sum(c));
        x2(i+(n-1)/2,j+(n-1)/2)=b/(n*n); %��ƽ�����ֵ�����ʱn*n�е����ĵ�
    end
end
d=uint8(x2);     %ûȡ���Ĳ�������x2������ĸ�������Ӧ��0-255���ص�

