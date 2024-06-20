function [x,n]=myindex(a,n1,n2)
x=[n1:n2];
n=a.^x;
%生成实指数序列