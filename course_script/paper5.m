i=0;
x=-4:0.01:4;
y=zeros(size(x));                                           %����Ԥ����
for k=-4:0.01:4
    i=i+1;
    if and(k>=-4,k<-2)
        y(i)=(-k.^2-4*k-4)/2;
    elseif and(k>=-2,k<2)
        y(i)=-k.^2+4;
    else
        y(i)=(-k.^2+4*k-4)/2;
    end
end                                                         %���㺯��ֵ
    plot(x,y,'r')                                           %���ƺ���ͼ��
    xlabel('x','color','b')
    ylabel('y','color','b')
    title('\bfy=f(x)�ĺ�������','fontsize',12,'color','g')
    gtext('\it\leftarrowy=(-x^2-4x-4)/2')
    gtext('\ity=-x^2+4')
    gtext('\ity=(-x^2+4x-4)/2\rightarrow')                   %�����Ӧ��ע