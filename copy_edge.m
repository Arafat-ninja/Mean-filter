function e=copy_edge(n,x)
[height,width]=size(x);
a1=x(1,:);        %��x�еĵ�һ��ȡ����
a2=x(height,:);    %��x�е����һ��ȡ����
for i=1:n
    x=[a1;x;a2];     %��ȡ������n-1����Ԫ�طֱ�ƴ�ӵ�x������
end
a3=x(:,1);        %��x�еĵ�һ��ȡ����
a4=x(:,width);    %��x�е����һ��ȡ����
for i=1:n
    x=[a3,x,a4]; %��ȡ������n-1����Ԫ�طֱ�ƴ�ӵ�x������
end
e=x;
