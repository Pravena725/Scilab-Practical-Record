clear;
disp('The given matrix A=')
a=[1,3,3,2;2,6,9,7;-1,-3,3,4]
a(2,:)=a(2,:)-(a(2,1)/a(1,1))*a(1,:);
a(3,:)=a(3,:)-(a(3,1)/a(1,1))*a(1,:);
disp(a)
a(3,:)=a(3,:)-(a(3,2)/a(2,2))*a(2,:);
disp(a)
a(1,:)=a(1,:)/a(1,1)
a(2,:)=a(2,:)/a(2,2)
disp(a)
for i=1:3
    for j=i:4
        if(a(i,j)<>0)
            disp('column',j,'is a pivot column');
            break
        end
    end
end
