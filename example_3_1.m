N = 10;
Ord = 2;
DT = 0.1;
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

A = eye(N) + DT * W(:, :, 2);
A(1, :) = zeros(1, N);
A(1, 1) = 1;
A(N, :) = zeros(1, N);
A(N, N) = 1;

X = X';
U0 = (-1/2) * sin(3 * pi * X) + (3/2) * sin(pi * X);
U0(1) = 0;
U0(N) = 0;

UExact = (3/2) * sin(pi * X) * exp(-(pi^2) * DT) - (1/2) * sin(3 * pi * X) * exp(-9 * (pi^2) * DT);
UApp = A * U0;
UErr = abs(UExact - UApp);

disp('UExact:');
disp(UExact);

disp('UApp:');
disp(UApp);

disp('Absolute Error:');
disp(UErr);
