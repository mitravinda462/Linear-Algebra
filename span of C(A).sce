// Span of column space of matrix A, C(A)
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

disp('Enter the matrix of Constants');

b1=input("Enter b1: ");
b2=input("Enter b2: ");
b3=input("Enter b3: ");

b=[b1;b2;b3];
Aug=[A b];
a=Aug;

disp('The Augmented Matrix is ');
disp(Aug);
n=3; //for a 3x3 matrix
disp('The states of the Matrix is');

for i=2:n
    for j=2:n+1
        a(i,j)=a(i,j)-a(1,j)*a(i,1)/a(1,1);
    end
    a(i,1)=0;
end

disp(a);
for i=3:n
    for j=3:n+1
        a(i,j)=a(i,j)-a(2,j)*a(i,2)/a(2,2);
    end
    a(i,2)=0;
end
disp(a)

for i=1:3
    for j=i:3
        if(a(i,j)<>0)
            disp("is a pivot column",j,"column");
            break
        end
    end
end
