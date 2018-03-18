Data = [0.0000 5.8955; 0.1000 3.5639; 0.2000 2.5173; 0.3000 1.9790
0.4000 1.8990; 0.5000 1.3938; 0.6000 1.1359; 0.7000 1.0096
0.8000 1.0343; 0.9000 0.8435; 1.0000 0.6856; 1.1000 0.6100
1.2000 0.5392; 1.3000 0.3946; 1.4000 0.3903; 1.5000 0.5474
1.6000 0.3459; 1.7000 0.1370; 1.8000 0.2211; 1.9000 0.1704
2.0000 0.2636];


close all
fig = colordef(gcf, 'white');
t = Data(:,1);
y = Data(:,2);
axis([0 2 -0.5 6])
figure(fig)
hold on
plot(t,y,'ro','EraseMode','none')
title('Data points')
hold off


f = @(x) (norm(fitfun2(x,Data)));


options= optimset('LargeScale','off','Display','iter','TolX',1e-3); 
lam0 = [1; 0]; % Initial guess for nonlinear parameters 

plothandle = plotdatapoints(t,y); % plot data points
% and get plot handle.
% Output function requires additional parameters
% data and plothandle; use an anonymous function:
foutputfcn = @(x,optimvalues,state) ...
fitfun2outputfcn(x,optimvalues,state, Data,plothandle);
options = optimset(options,'OutputFcn',foutputfcn);
t0 = clock;
[lam,fval,exitflag,output] = fminunc(f,lam0,options);
execution_time=etime(clock, t0);
fprintf(['\nNumber of iterations: %g\nNumber of function evaluations: %g\n'], output.iterations, output.funcCount);
fprintf('Sum of squared residuals at solution: %g\n',fval^2);
fprintf('Execution time: %g\n',execution_time);
