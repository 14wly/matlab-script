clf 
[x,y,z]=sphere(30);         %产生单位球面的三维坐标
h=surf(x,y,z);              %获取球面图形的句柄
axis off                    %取消轴背景

title('旋转的球体')          %添加图形名

for i=1:12
    rotate(h,[0,0,1],25);   %使图形绕z轴每次旋转25度
    m(i)=getframe;          %抓取画面
end
movie(m,10,10)               %以每秒10帧的速度，重复播放10次