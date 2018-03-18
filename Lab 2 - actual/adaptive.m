time = (0:0.01:6)';
x = sin(time);

n1 = 0.3*randn(size(time)); 
domain = linspace(min(n1), max(n1), 20);
[xx, yy] = meshgrid(domain, domain);
zz = 4*sin(xx).*yy./(1+yy.^2);
surf(xx, yy, zz);
xlabel('n1(k)');
ylabel('n1(k-1)');
zlabel('n2(k)');
title('Unknown Channel Characteristics That Generate Interference');
