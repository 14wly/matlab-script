disp("hello world!")
figure
%��һ��ͼ
subplot(2,2,1);
[n,x] = impseq(0,-5,5);
stem(x,n);%������״ͼ

subplot(2,2,2);
[n,x] = stepseq(0,-5,5);
stem(x,n);

subplot(2,2,3);
[n,x] = myindex(0.9,0,10);
stem(x,n);
%���ķ�ͼ
figure
mycomplex;
mycos;
figure
myrand
%�����ͼ
figure
a=[1:10]
b=[1:10]
c=myconvo(a,b);
stem(c)
%����Ϊz�任����
figure
b=[0,0,0,0.25,-0.5,0.0625];
a=[1,-1,0.75,-0.25,0.0625];
[delta,n]=impseq(0,0,7);
x1=filter(b,a,delta);
x2=[(n-2).*(1/2).*cos(pi*(n-2)/3).*stepseq(2,0,7)];
stem(x2)

