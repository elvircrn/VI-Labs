n1d0 = n1; % n1 delay 0
n1d1 = [0; n1d0(1:length(n1d0)-1)]; % n1 delay 1
n2 = 4*sin(n1d0).*n1d1./(1+n1d1.^2); % interference
subplot(2,1,1)
plot(time, n1);
ylabel('noise n1');
subplot(2,1,2)
plot(time, n2);
ylabel('interference n2');
