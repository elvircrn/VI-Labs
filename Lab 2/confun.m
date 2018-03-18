function [c, ceq] = confun(x)
% Nonlinear inequality constraints:
% Copyright 1990-2004 The MathWorks, Inc.
% $Revision: 1.1.6.1 $ $Date: 2006/11/11 22:48:27 $
c = [1.5 + x(1)*x(2) - x(1) - x(2);
-x(1)*x(2) - 10];
% No nonlinear equality constraints:
ceq = [];

