function [c, ceq] = confuneq(x)
% Nonlinear inequality constraints:
% Copyright 1990-2004 The MathWorks, Inc.
% $Revision: 1.1.6.1 $ $Date: 2006/11/11 22:48:27 $
% Nonlinear inequality constraints:
c = -x(1)*x(2) - 10;
% Nonlinear equality constraint:
ceq = x(1)^2 + x(2) - 1;
