//TO FIND THE INVERSE OF A 3X3 MATRIX

disp('Enter the coefficient.matrix');
a11=input("Enter  value for a11: ");
a12=input("Enter value for a12: ");
a13=input("Enter value for a13: ");
a21=input("Enter value for a21: ");
a22=input("Enter value for a22: ");
a23=input("Enter value for a23: ");
a31=input("Enter value for a31: ");
a32=input("Enter value for a32: ");
a33=input("Enter value for a33: ");

A=[a11,a12,a13;a21,a22,a23;a31,a32,a33];

n=length(A(1,:));
Aug = [A, eye(n,n)];

disp('The Augmented matrix is:' );
disp(Aug);
//Forward Elimination

for j=1:n-1
    for i=j+1:n
        Aug(i,j: 2*n) = Aug(i,j:2*n)-Aug(i,j)/Aug(j,j)*Aug(j,j:2*n);
    end
end

//Backward Elimination

for j=n:-1:2
    Aug(1:j-1,:)=Aug(1:j-1,:)-Aug(1:j-1,j)/Aug(j,j)*Aug(j,:);
end
//Diagonal Normalization
for j=1:n
    Aug(j,:)=Aug(j,:)/Aug(j,j);
end
Inv_A = Aug(:,n+1:2*n);
disp(Inv_A, 'The inverse of A is: ');
