disp('Enter the matrix');

a11=input("Enter value for a11: ");
a12=input("Enter value for a12: ");
a13=input("Enter value for a13: ");
a21=input("Enter value for a21: ");
a22=input("Enter value for a22: ");
a23=input("Enter value for a23: ");
a31=input("Enter value for a31: ");
a32=input("Enter value for a32: ");
a33=input("Enter value for a33: ");

A = [a11,a12,a13;a21,a22,a23;a31,a32,a33];
lam = poly(0,'lam');
lam = lam;
charMat = A-lam*eye(3,3);
disp(charMat,"the characteristic matrix is:");
charPoly = poly(A,'lam');
disp(charPoly,'the characteristic ploynomial is');
lam =spec(A)
disp(lam,'the eigen values of A are')
function[x,lam]=eigenvectors(A)
    [n,m]=size(A);
    lam=spec(A)';
    x=[];
    for k=1:3
        B=A-lam(k)*eye(3,3);// characteristic matrix
        C=B(1:n-1,1:n-1);//coeff matrix for the reduced system
        b=-B(1:n-1,n);//RHS vector for the reduced system
        y=C\b;//solution for the reduced system
        y=[y;1];
        y=y/norm(y);
        x=[x y]; 
    end
endfunction
get('eigenvectors')
[x,lam]= eigenvectors(A)
disp(x,'The eigen vectors of A are');
