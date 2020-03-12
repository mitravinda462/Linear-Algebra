// The four fundamental subspaces of a matrix A
disp('Enter the coefficient matrix');

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
disp(A,"A=");
[m,n]=size(A);
disp(m,"m=");
disp(n,"n=");
[v,pivot]=rref(A);
disp(rref(A));
disp(v);
r=length(pivot);
disp(r,"rank=");
cs=A(:,pivot);
disp(cs,"column space of A, C(A)=");
ns=kernel(A);
disp(ns,"null space of A, N(A)=");
rs=A(1:r,:);
disp(rs,"row space of A, C(At)=");
lns=kernel(A');
disp(lns,"left null space of A, N(At)=");
