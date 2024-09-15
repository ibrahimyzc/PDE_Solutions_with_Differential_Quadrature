N = 8;
Ord = 1;
i = 1:N;
X = (i-1) / (N-1);
a = zeros(N, N);

for m = 1:N
    for n = 1:N
        if m == n
            continue
        else
            q = X(m) - X;
            q(m) = 1;
            p = prod(q);
            s = X(n) - X;
            s(n) = 1;
            r = (X(m) - X(n)) * prod(s);
            a(m, n) = p / r;
        end
    end
end

for k = 1:N
    a(k, k) = -sum(a(k, :));
end

W(:, :, 1) = a;
A = (W(:, :, 1) - 4 * eye(N));
A(1, :) = zeros(1, N);
A(1) = 1;

X = X';
C = X;
C(1) = 1;

YExact = (-1/16) * (4 * X + 1) + (17/16) * exp(4 * X);
YApp = A \ C;
AErr = abs(YExact - YApp);

disp('YExact:');
disp(YExact);

disp('YApp:');
disp(YApp);

disp('Absolute Error:');
disp(AErr);
