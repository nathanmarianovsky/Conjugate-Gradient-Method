clc

imax = input('The maximum number of iterations: ');

Min = input('Enter a small integer value: ');
Max = input('Enter a large integer value: ');

Size = input('What size matrix would you like? ');
Size = round(Size);

x = (zeros(1,Size))';
error = rand;
density = rand;

A = generatesparseSPDmatrix(Size, density);
b = vecgen(Size, Min, Max);

i = 0;
r = b - A*x;
delta = r'*r;
deltazero = delta;

while (i < imax & delta > error.^2 * deltazero)
    q = A*r;
    alpha = delta/(r'*q);
    x = x + alpha*r;
    if (mod(i, 50) == 0)
        r = b - A*x;
    else
        r = r - aplha*q;
    end
    
    delta = r'*r;
end

disp(x)
disp(b)
disp(A*x)