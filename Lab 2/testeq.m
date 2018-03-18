x0 = [-1; 1];
options = optimset('LargeScale','off');
options = optimset(options, 'Display', 'iter');
options = optimset(options,'TolX',1e-3,'TolFun',1e-3);
[x,fval,exitflag,output] = fmincon(@objfun,x0,[],[],[],[],[],[],@confuneq,options);
disp(x);
disp(fval); 

