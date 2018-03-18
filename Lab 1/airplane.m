time = (0:0.01:6)';
x = sin(time);
plot(time, x)
title('Information Signal x')
xlabel('time')
ylabel('x')

n1 = 0.3*randn(size(time));
plot(time, n1)
title('Noise Source n1')
xlabel('time')
ylabel('n1')
