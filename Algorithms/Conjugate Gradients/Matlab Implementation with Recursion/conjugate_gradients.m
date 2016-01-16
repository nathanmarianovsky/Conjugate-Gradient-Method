% The recursive function below computes the vector x that solves the system Ax = b
% using the Conjugate Gradients algorithm. 
% Parameters include:
%       iter: current iterator (typically starts at 0)
%       iter_max: the number of iterations
%       err: the allowed error for the solution x (typically some value
%       less than 1)
%       delta: used in the error analysis (typically starts at r'r)
%       delta0: initial delta
%       A: the square, symmetric, positive-definite matrix
%       b: the column vector on the right hand side
%       current_x: the last vector x (typically starts at the zero vector)
%       r: the residual
%       d: search direction
% Returns:
%       x: the vector that minimizes the system

function x = conjugate_gradients(iter, iter_max, err, delta, delta0, A, b, current_x, r, d)

if((iter < iter_max) && (delta > err.^2 * delta0))
   q = A * d;
   alpha = delta / (d' * q);
   x = current_x + (alpha * d);
   if(mod(iter,50) == 0)
       r = b - (A * x);
   else
       r = r - (alpha * q);
   end
   delta0 = delta;
   delta = r' * r;
   beta = delta / delta0;
   d = r + (beta * d);
   conjugate_gradients(iter + 1, iter_max, err, delta, delta0, A, b, x, r, d);
else
   x = current_x; 
end

end