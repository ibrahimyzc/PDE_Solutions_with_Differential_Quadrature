N = 12;
Ord = 2;
DT = 0.1;
v = 0.5;
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

for m = 2:Ord
    W(:, :, m) = zeros(N, N);
    for i = 1:N
        for j = 1:N
            if i == j
                continue
            else
                W(i, j, m) = m * (a(i, j) * W(i, i, m-1)) - W(i, j, m-1) / (X(i) - X(j));
            end
        end
    end
    for k = 1:N
        W(k, k, m) = -sum(W(k, :, m));
    end
end

A = eye(N) + DT * v * W(:, :, 1);
A(1, :) = zeros(1, N);
A(1, 1) = 1;
A(N, :) = zeros(1, N);
A(N, N) = 1;

X = X';
U0 = X.^3 + 2 * X;
U0(1) = (v * DT)^3 + 2 * v * DT;
U0(N) = (1 + v * DT)^3 + 2 * (1 + v * DT);

UExact = (X + v * DT).^3 + 2 * (X + v * DT);
UApp = A * U0;
UErr = abs(UExact - UApp);

disp('UExact:');
disp(UExact);

disp('UApp:');
disp(UApp);

disp('Absolute Error:');
disp(UErr);
