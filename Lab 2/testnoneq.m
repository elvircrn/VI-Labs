x0 = [-1; 1];
% options = optimset('LargeScale','off','Display','iter');
% [x,fval,exitflag,output] = fmincon(@objfun,x0,[],[],[],[],[],[],@confun,options);
% disp(x);
% disp(fval); 

options = optimset('LargeScale','off', 'Display', 'iter');
options = optimset(options,'GradObj','on','GradConstr','on');


[x,fval,exitflag,output] = fmincon(@objfungrad,x0,[],[],[],[],[],[],@confungrad,options);
disp(x);
disp(fval); 
