yx=@(x)cos(3*x).*exp(-x);                                   %创建函数句柄

r=[fzero(yx,0.5);fzero(yx,1.5);fzero(yx,2.5)]               %求函数在0.5、1.5、2.5附近的根

[x1,y1]=fminbnd(yx,0.5,1.5)                                 %求函数在0.5到1.5之间的极小值
[x2,y2]=fminbnd(@(x)(-cos(3*x))*exp(-x),1.5,2.5);x2,y2=-y2  %求函数在1.5到2.5之间的极大值

x=0:pi/200:pi;
y=yx(x);
plot(x,y,'b')                         %绘制函数在[0,pi]区间的图形
xlabel('\fontsize{12}x'),ylabel('\fontsize{12}y')
grid on
hold on   
plot(r,yx(r),'r*')                                          %用红色"*"号标注函数的根
plot(x1,y1,'gp',x2,y2,'mp')                                 %绿色五角星标注函数极小值点、紫色五角星标注极大值点
title('函数cos(3x)e^{-x}的图形，根及极值点')                   %添加标题         
legend('函数图形','函数的根','极小值点','极大值点')           %添加图例
