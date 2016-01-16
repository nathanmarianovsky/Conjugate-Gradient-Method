clc

addpath('../../Resources/');

disp('This code will run the Conjugate Gradients algorithm to determine the value of x s.t. it solves the system Ax = b.');

disp(' ');
iter_max = input('Please enter the number of iterations desired: ');

disp(' ');
disp('In this scenario we are going to create the vector b by choosing random numbers between two numbers Min and Max.');

min = input('Provide the value of min: ');
max = input('Provide the value of max: ');

disp(' ');
disp('The matrix in this scenario is going to be square, symmetric, and positive-definite. The components of the matrix are generated randomly.');

size = input('Size of the matrix: ');
size = round(size);

x = zeros(size,1);

err = rand;
while err == 1
   err = rand; 
end

density = rand;

A = generatesparseSPDmatrix(size, density);
b = vecgen(size, min, max);

i = 0;
r = b - (A * x);
d = r;
delta = r' * r;
delta0 = delta;

x = conjugate_gradients(0, iter_max, err, delta, delta0, A, b, x, r, d);

disp(' ');
disp('Here is the vector b:');
disp(b);

disp(' ');
disp('Here is the matrix A:');
disp(A);

disp(' ');
disp('Here is the result of x after running the Steepest Descent algorithm:');
disp(x);

disp(' ');
disp('Here is the vector Ax which should be similar to the vector b if the algorithm actually worked:');
disp(A * x);