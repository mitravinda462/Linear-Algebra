//TO FIND THE VALUES OF C AND D OF THE BEST FIT LINE
m=input("Enter the number of equations m: ");
disp('Enter the coefficient matrix for the system of equations A');
A=eye(m,2);
for i=1:m
    A(i,1)=input("Enter value for column 1:");
    A(i,2)=input("Enter value for column 2:");
end

b=eye(m,1);
disp('Enter the matrix of Constants b');
for i=1:m
    b(i,1)=input("Enter value for b:");
end

disp(A,"A=");
disp(b,"b=");

x=(A'*A)\(A'*b);
disp(x,"x=");
C=x(1,1);
D=x(2,1);
disp(C,"C=");
disp(D,"D=");
disp("The best fit line is b=C+Dt");
//end
