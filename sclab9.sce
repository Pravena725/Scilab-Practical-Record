clear;
A=[2,-1,0;-1,2,-1;0,-1,2];
n=length(A(1,:));
aug=[A,eye(n,n)];
N=1:n;
for i=1:n
    dummy1=N;
    dummy1(i)=[];
    index(i,:)=dummy1;
end
for j=1:n
    [dummy2,t]=max(abs(aug(j:n,j)));
    lrow=t+j-1;
    aug([j,lrow],:)=aug([lrow,j],:);
    aug(j,:)=aug(j,:)/aug(j,j);
    for i=index(j,:)
        aug(i,:)=aug(i,:)-aug(i,j)/aug(j,j)*aug(j,:);
    end
end
inv_A=aug(:,n+1:2*n);
disp(inv_A)
