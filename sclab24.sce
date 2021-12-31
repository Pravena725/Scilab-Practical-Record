clc;close;clear;
A=[8,-6,2;-6,7,-4;2,-4,3];
lam=poly(0,'lam');
lam=lam
charMat=A-lam*eye(3,3)
disp('The characteristic matrix is',charMat);
charPoly=poly(A,'lam');
disp('The characteristic polynomial is',charPoly);
lam=spec(A);
disp('The eigen values of A are',lam);
function[x,lam]=eigenvectors(A)
    [n,m]=size(A);
    lam=spec(A);
    x=[];
    for k=1:3
        B=A-lam(k)*eye(3,3);
        C=B(1:n-1,1:n-1);
        b=-B(1:n-1,n);
        y=C\b;
        y=[y;1];
        y=y/norm(y);
        x=[x y];
    end
endfunction
get ('eigenvectors')
[x,lam]=eigenvectors(A)
disp('The eigen vectors of A are',x);
