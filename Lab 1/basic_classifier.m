hold on;
P = [ -0.5 -0.5 +0.3 -0.1;  ...
-0.5 +0.5 -0.5 +1.0];
T = [1 1 0 0];
plotpv(P,T);

net.adaptParam.passes = 3;
net = adapt(net,P,T);
plotpc(net.IW{1},net.b{1});
hold off;


