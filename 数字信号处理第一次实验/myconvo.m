function c=myconvo(a,b)
M=length(a);
N=length(b);
c=zeros(1,M+N-1);
for n=2:(M+N)
    tpmax=min(n-1,M);
    tpmin=max(n-N,1);
    for k=tpmin:1:tpmax
       c(n-1)=c(n-1)+a(k)*b(n-k); 
    end
end
