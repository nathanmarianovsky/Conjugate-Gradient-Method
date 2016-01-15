function x = steepest_descent(iter, iter_max, err, delta, delta0, A, b, current_x, r)

if((iter < iter_max) && (delta > err.^2 * delta0))
   q = A * r;
   alpha = delta / (r' * q);
   x = current_x + (alpha * r);
   if(mod(iter,50) == 0)
       r = b - (A * x);
   else
       r = r - (alpha * q);
   end
   delta = r' * r;
   steepest_descent(iter + 1, iter_max, err, delta, delta0, A, b, x, r);
else
   x = current_x; 
end

end