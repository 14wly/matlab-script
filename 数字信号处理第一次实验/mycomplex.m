n = [0:10];
alpha = 0.2 + 0.3j;
x = exp(alpha*n);
%实部
subplot(2,2,1);
stem(n,real(x),'filled');
title('real part');
xlabel('n');
%虚部 
subplot(2,2,2);
stem(n,imag(x),'filled');
title('imaginary part');
xlabel('n');
%幅度值
subplot(2,2,3);
stem(n,abs(x),'filled');
title('magnitude part');
xlabel('n');