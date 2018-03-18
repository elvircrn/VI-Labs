P = [-0.5 -0.5 0.1 -0.3 -40; -0.5 +0.5 -0.5 1.0 50];
T = [1 1 0 0 1];
plotpv(P,T);

net=newp([-40 1;-1 50],1);

linehandle = plotpc(net.IW{1},net.b{1});	

E = 1;
net.adaptParam.passes = 3;
while (sse(E))
 [net,Y,E] = adapt(net,P,T);
 linehandle = plotpc(net.IW{1},net.b{1},linehandle);
 drawnow;
end

p = [-10; 1.2];
a = sim(net,p);
plotpv(p,a);
circle = findobj(gca,'type','line');
set(circle,'Color','red');

hold on;
plotpv(P,T);
plotpc(net.IW{1},net.b{1});
hold off;
