P = [+1.0 +1.5 +3.0 -1.2];
T = [+0.5 +1.1 +3.0 -1.0]; 
w_range =-2:0.4:2;
b_range = -2:0.4:2;
ES = errsurf(P,T,w_range,b_range,'purelin');
plotes(w_range,b_range,ES);

maxlr = maxlinlr(P,'bias');
net = newlin([-2 2],1,[0],maxlr);


net.trainParam.epochs = 15;
% [net,tr] = train(net,P,T);
net.trainParam.epochs = 1;
net.trainParam.show = NaN;
h=plotep(net.IW{1},net.b{1},mse(T-sim(net,P)));
[net,tr] = train(net,P,T);
r = tr; epoch = 1;
while epoch < 15
  epoch = epoch+1;
  [net,tr] = train(net,P,T);
  if length(tr.epoch) > 1
    h = plotep(net.IW{1,1},net.b{1},tr.perf(2),h);
    r.epoch=[r.epoch epoch];
    r.perf=[r.perf tr.perf(2)];
    r.vperf=[r.vperf NaN];
    r.tperf=[r.tperf NaN];
else
  break
end
end
tr=r;
