%*********************************************************************%
% mode:  1--������˹��ͨ; 2--������˹��ͨ; 3--������˹��ͨ; 4--������˹����;
%        5���б�ѩ���ͨ;2--�б�ѩ���ͨ; 3--�б�ѩ���ͨ; 4--�б�ѩ�����
% fp1,fp2: ͨ����ֹƵ��, ����ͨ���ͨʱֻ��fp1��Ч
% fs1, fs2: �����ֹƵ��, ����ͨ���ͨʱֻ��fs1��Ч  
% rp      ͨ���Ʋ�ϵ�� 
% as:      ���˥��ϵ��
% sample: ������
% h:      ������ƺõ��˲���ϵ��
%*********************************************************************%
function [b,a]=myiirfilter(mode, fp1,fp2, fs1, fs2,rp,as,sample)
wp1=2*fp1/sample; wp2=2*fp2/sample;
ws1=2*fs1/sample; ws2=2*fs2/sample;
%????��??????????��?��??��????��??N??3dB????wn
if mode<3 [N,wn] =buttord(wp1, ws1, rp,as);
elseif mode<5 [N,wn] =buttord([wp1 wp2] , [ws1 ws2], rp,as);
%??????��???����???��?��??��????��??N??3dB????wn
elseif mode<7 [N,wn] =cheblord(wp1, ws1, rp,as);
else [N,wn] = cheblord ([wp1 wp2] , [ws1 ws2], rp,as);
end
%???????��?��??????��?��?b??��???a
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
subplot(2,1,1); plot(f,magnitude);grid;     %����??????
axis([0 sample/2 1.1*min(magnitude) 1.1*max(magnitude)]);
ylabel('Magnitude');xlabel('Frequency-->');
phase=angle(freq_response); 
subplot(2,1,2);plot(f,phase); grid;          %?��??????
axis([0 sample/2 1.1*min(phase) 1.1*max(phase)]);
ylabel('Phase');xlabel('Frequency-->');
