n = 0:1:10;
n = n;
xn = [40 - 10*0.1.^n;
      40 +  5*0.1.^n + 15*0.3.^n;
      40 +  5*0.1.^n - 15*0.3.^n];

axis([0 10 25 65])
hold on;
xlabel('dager')
ylabel('antall biler i by')
plot(n, xn(1,:), 'r');
plot(n, xn(2,:), 'g');
plot(n, xn(3,:), 'b');
legend('A', 'B', 'C')
print -dpng oppg1e.png
