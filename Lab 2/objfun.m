function f = objfun(x)
% Objective function
% Copyright 1990-2004 The MathWorks, Inc.
% $Revision: 1.1.6.1 $ $Date: 2006/11/11 22:48:52 $
f = exp(x(1)) * (4*x(1)^2 + 2*x(2)^2 + 4*x(1)*x(2) + 2*x(2) + 1);

