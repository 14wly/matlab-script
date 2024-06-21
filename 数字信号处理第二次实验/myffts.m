function [x]=myffts(mode,Nfft)
n=0:Nfft-1;
if mode==1 x=sin(2*pi*n/Nfft);end
if mode==2 x=square(2*pi*n/Nfft);end
if mode==3 x=sawtooth(2*pi*n/Nfft);end
%set(gcf,'menubar',menubar);
subplot(2,1,1);stem(n,x);
axis([0 Nfft-1 1.1*min(x) 1.1*max(x)]);
xlabel('Points-->');ylabel('X(n)');
y=abs(fft(x,Nfft));
subplot(2,1,2);stem(n,y);
axis([0 Nfft-1 1.1*min(y) 1.1*max(y)]);
xlabel('frequency--->');ylabel('|X(k)|');
