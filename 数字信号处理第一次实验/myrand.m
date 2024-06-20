tn=0:0.2:15;
N=length(tn);
x=rand(1,N);
subplot(2,1,1);
plot(tn,x);
 
tn=0:0.5:15;
N=length(tn);
y=rand(1,N);
subplot(2,1,2);
stem(tn,y,'.');