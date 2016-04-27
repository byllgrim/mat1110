function v = F(xvec)
    x = xvec(1);
    y = xvec(2);
    v = [x^2*y - y^2; x - 3];
end

function A = dF(xvec)
    x = xvec(1);
    y = xvec(2);
    A = [2*x*y x^2-2*y; 1 0];
end

n = 10;
x = zeros(2,n);
x(:,1) = [1; 1];
for i = 2:n
    xp = x(:,i-1);
    x(:,i) = xp - dF(xp)^-1 * F(xp);
end
x
