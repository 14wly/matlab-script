clf
x=0:0.1:5;
y=x;
[X,Y]=meshgrid(x);
Z=X.^2+Y.^2;

subplot(1,2,1);
mesh(X,Y,Z);
title('��ά����ͼ');
axis([0,6,0,6,0,60]);

subplot(1,2,2);
surf(X,Y,Z);
title('��ά����');
axis([0,6,0,6,0,60]);

shading interp