function e=copy_edge(n,x)
[height,width]=size(x);
a1=x(1,:);        %把x中的第一行取出来
a2=x(height,:);    %把x中的最后一行取出来
for i=1:n
    x=[a1;x;a2];     %把取出来的n-1个行元素分别拼接到x的上下
end
a3=x(:,1);        %把x中的第一列取出来
a4=x(:,width);    %把x中的最后一列取出来
for i=1:n
    x=[a3,x,a4]; %把取出来的n-1个列元素分别拼接到x的上下
end
e=x;
