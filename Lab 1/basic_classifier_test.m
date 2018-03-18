P = [ -0.5 -0.5 +0.3 -0.1;  ...
-0.5 +0.5 -0.5 +1.0];
T = [1 1 0 0];
net.adaptParam.passes = 3;
net = adapt(net,P,T);
p = [0.7; 1.2];
a = sim(net,p);
plotpv(p,a, [-2 2 -2 2]); 
hold on; 
point = findobj(gca,'type','line');
set(point,'Color','red'); 
plotpv(P,T, [-2 2 -2 2]); 
hold on; 
plotpc(net.IW{1},net.b{1});
hold off;

