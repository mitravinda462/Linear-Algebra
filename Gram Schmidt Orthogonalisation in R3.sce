

disp('Enter the vectors ');

a11=input("Enter value for a11: ");
a12=input("Enter value for a12: ");
a13=input("Enter value for a13: ");
a21=input("Enter value for a21: ");
a22=input("Enter value for a22: ");
a23=input("Enter value for a23: ");
a31=input("Enter value for a31: ");
a32=input("Enter value for a32: ");
a33=input("Enter value for a33: ");

A=[a11,a12,a13;a21,a22,a23;a31,a32,a33];
disp(A,"A = ");
[m,n]=size(A);
for k=1:n
    V(:,k)=A(:,k);
    for j=1:k-1
        R(j,k)=V(:,j)'*A(:,k);
        V(:,k)=V(:,k)-R(j,k)*V(:,j);
    end
    R(k,k)=norm(V(:,k));
    V(:,k)=V(:,k)/R(k,k);
end
disp(V,"Q =");
