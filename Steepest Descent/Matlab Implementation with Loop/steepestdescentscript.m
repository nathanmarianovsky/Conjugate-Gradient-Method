clc

disp('This code will run the Steepest Descent algorithm to determine the value of x s.t. it solves the system Ax = b.');

disp(' ');
imax = input('Please enter the number of iterations desired: ');

disp(' ');
disp('In this scenario we are going to create the vector b by choosing random numbers between two numbers Min and Max.');

Min = input('Provide the value of Min: ');
Max = input('Provide the value of Max: ');

disp(' ');
disp('The matrix in this scenario is going to be square, symmetric, and positive-definite. The components of the matrix are generated randomly.');

Size = input('Size of the matrix: ');
Size = round(Size);

x = zeros(Size,1);

error = rand;
while error == 1
   error = rand; 
end

density = rand;

A = generatesparseSPDmatrix(Size, density);
b = vecgen(Size, Min, Max);

i = 0;
r = b - A*x;
delta = r'*r;
deltazero = delta;

while ((i < imax) && (delta > error.^2 * deltazero))
    q = A*r;
    alpha = delta/(r'*q);
    x = x + alpha*r;
    if (mod(i, 50) == 0)
        r = b - A*x;
    else
        r = r - alpha*q;
    end
    
    delta = r'*r;
end

disp(' ');
disp('Here is the result of x after running the Steepest Descent algorithm:');
disp(x);

disp(' ');
disp('Here is the vector b:');
disp(b);

disp(' ');
disp('Here is the vector Ax which should be similar to the vector b if the algorithm actually worked:');
disp(A*x);