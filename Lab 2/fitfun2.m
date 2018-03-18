function [f, yEst] = fitfun2(lam,Data)
% f = FITFUN2(lam,Data) returns the error between the data
% and the values computed by the current function of lam.
% [f, yEst] = FITFUN2(lam,Data) also returns the estimated
% value of y; that is, the value of the current model.
% FITFUN2 assumes a function of the form
% y = c(1)*exp(-lam(1)*t) + ... + c(n)*exp(-lam(n)*t)
% with n linear parameters and n nonlinear parameters.
% To solve for the linear parameters c, we build a matrix A
% where the j-th column of A is exp(-lam(j)*t) (t is a vector).
% Then we solve A*c = y for the linear least-squares solution c.
% Copyright 1990-2004 The MathWorks, Inc.
% $Revision: 1.1.6.1 $ $Date: 2006/11/11 22:48:39 $
t = Data(:,1); y = Data(:,2); % separate Data matrix into t and y
A = zeros(length(t),length(lam)); % build A matrix
for j = 1:length(lam)
A(:,j) = exp(-lam(j)*t);
end
c = A\y; % solve A*c = y for linear parameters c
yEst = A*c;
f = y - yEst; % compute error (residual) y-A*c
