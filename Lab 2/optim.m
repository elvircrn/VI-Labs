% fun = @(x) exp(x(1)) * (4*x(1)^2 + 2*x(2)^2 + 4*x(1)*x(2) + 2*x(2) + 1);
fun = @(x) (x(1) * x(1)) + (x(2) * x(2));
x0 = [-1; 1];
options = optimset('LargeScale','off');
[x, fval, exitflag, output] = fminunc(fun, x0, options);
disp(x);
disp(fval);
