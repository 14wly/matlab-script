%%��Ŀ������cos(3x)*e^(-x)�ĸ������㣩������ֵ����Сֵ��ͼʾ��
x=0:5*pi/600:5*pi
f=cos(3*x).*exp(-x)
plot(x,f)
xlabel('x')
[x1,minf]=fminbnd('cos(3*x)*exp(-x)',0,5*pi)
[x2,maxf]=fminbnd('-cos(3*x)*exp(-x)',0,5*pi)
maxf=-maxf
A=ones(16,1)`
for n=0:1:10
A(n+1,1)=fzero('cos(3*x)*exp(-x)',[n,n+1])
end
for n=12:1:16
A(n+1,1)=fzero('cos(3*x)*exp(-x)',[n,n+1])
end
A(12,1)=fzero('cos(3*x)*exp(-x)',[11,12])