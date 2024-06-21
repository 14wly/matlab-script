i=0;
x=-4:0.01:4;
y=zeros(size(x));                                           %阵列预分配
for k=-4:0.01:4
    i=i+1;
    if and(k>=-4,k<-2)
        y(i)=(-k.^2-4*k-4)/2;
    elseif and(k>=-2,k<2)
        y(i)=-k.^2+4;
    else
        y(i)=(-k.^2+4*k-4)/2;
    end
end                                                         %计算函数值
    plot(x,y,'r')                                           %绘制函数图形
    xlabel('x','color','b')
    ylabel('y','color','b')
    title('\bfy=f(x)的函数曲线','fontsize',12,'color','g')
    gtext('\it\leftarrowy=(-x^2-4x-4)/2')
    gtext('\ity=-x^2+4')
    gtext('\ity=(-x^2+4x-4)/2\rightarrow')                   %添加相应标注