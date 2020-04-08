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

disp(A,'The given matrix is:');
//Initial vector
u0=[1 1 1]';
disp(u0,'The initial vector is:');
v=A*u0;
a=max(u0);
disp(a,'First approximation to eigen value is:');
while abs(max(v)-a)>0.002
    disp(v,"Current eigen vector is:");
    a=max(v);
    disp(a,"Current eigen value is:");
    u0=v/max(v);
    v=A*u0;
end
format('v',4);
disp(max(v),"The largext Eigen Value is:");
format('v',5);
disp(u0,'The corresponding Eigen vector is:');
