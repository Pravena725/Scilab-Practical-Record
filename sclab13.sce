clear;
disp('A=')
a=[1,2,0,1;0,1,1,0;1,2,0,1];
[m,n]=size(a);
disp('m=',m);
disp('n=',n);
[v,pivot]=rref(a);
disp(rref(a));
disp(v);
r=length(pivot);
disp('rank=',r);
cs=a(:,pivot);
disp('Column Space=',cs);
ns=kernel(a);
disp('Null Space=',ns);
rs=v(1:r,1)';
disp('Row Space=',rs);
lns=kernel(a');
disp('Left null space=',lns);
