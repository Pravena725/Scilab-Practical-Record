clear
A=[2,5,1;4,8,1;0,1,-1];
B=[0;2;3];
a=[A,B];
n=length(B);
for j=1:n-1
    for i=j+1:n
        a(i,j:n+1)=a(i,j:n+1)-a(i,j)/a(j,j)*a(j,j:n+1);
    end
end
x=zeros(n,1);
x(n)=a(n,n+1)/a(n,n);
for i=n-1:-1:1
    x(i)=(a(i,n+1)-a(i,i+1:n)*x(i+1:n))/a(i,i);
end
disp('The values of x,y,z are',x(1),x(2),x(3));
disp('The pivot values are',a(1,1),a(2,2),a(3,3));
