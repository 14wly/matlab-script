%*********************************************************************%
% mode:  1--巴特沃斯低通; 2--巴特沃斯高通; 3--巴特沃斯带通; 4--巴特沃斯带阻;
%        5—切比雪夫低通;2--切比雪夫高通; 3--切比雪夫带通; 4--切比雪夫带阻
% fp1,fp2: 通带截止频率, 当高通或低通时只有fp1有效
% fs1, fs2: 阻带截止频率, 当高通或低通时只有fs1有效  
% rp      通带纹波系数 
% as:      阻带衰减系数
% sample: 采样率
% h:      返回设计好的滤波器系数
%*********************************************************************%
function [b,a]=myiirfilter(mode, fp1,fp2, fs1, fs2,rp,as,sample)
wp1=2*fp1/sample; wp2=2*fp2/sample;
ws1=2*fs1/sample; ws2=2*fs2/sample;
%????°??????????¨?÷??×????×??N??3dB????wn
if mode<3 [N,wn] =buttord(wp1, ws1, rp,as);
elseif mode<5 [N,wn] =buttord([wp1 wp2] , [ws1 ws2], rp,as);
%??????±???·ò???¨?÷??×????×??N??3dB????wn
elseif mode<7 [N,wn] =cheblord(wp1, ws1, rp,as);
else [N,wn] = cheblord ([wp1 wp2] , [ws1 ws2], rp,as);
end
%???????¨?÷??????·?×?b??·???a
if mode==1 [b,a]= butter(N,wn);end
if mode==2 [b,a]= butter(N,wn,'high');end
if mode==3 [b,a]= butter(N,wn);end
if mode==4 [b,a]= butter(N,wn,'stop');end
if mode==5 [b,a]= cheby1(N,rp,wn);end
if mode==6 [b,a]= cheby1 (N, rp,wn,'high');end
if mode==7 [b,a]= cheby1(N,rp,wn);end
if mode==8 [b,a]= cheby1 (N, rp,wn,'stop');end
%set(gcf,'menubar',menubar);
freq_response=freqz(b,a);
magnitude=20*log10(abs(freq_response));
m=0:511;
f=m*sample/(2*511);
subplot(2,1,1); plot(f,magnitude);grid;     %·ù??????
axis([0 sample/2 1.1*min(magnitude) 1.1*max(magnitude)]);
ylabel('Magnitude');xlabel('Frequency-->');
phase=angle(freq_response); 
subplot(2,1,2);plot(f,phase); grid;          %?à??????
axis([0 sample/2 1.1*min(phase) 1.1*max(phase)]);
ylabel('Phase');xlabel('Frequency-->');
