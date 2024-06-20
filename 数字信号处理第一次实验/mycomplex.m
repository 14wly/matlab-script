n = [0:10];
alpha = 0.2 + 0.3j;
x = exp(alpha*n);
%ʵ��
subplot(2,2,1);
stem(n,real(x),'filled');
title('real part');
xlabel('n');
%�鲿 
subplot(2,2,2);
stem(n,imag(x),'filled');
title('imaginary part');
xlabel('n');
%����ֵ
subplot(2,2,3);
stem(n,abs(x),'filled');
title('magnitude part');
xlabel('n');