N = 11;
Ord = 2;
DT = 0.03;
i = 1:N;
X = pi * (i-1) / (N-1);
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
U0 = 3 * sin(X);
U0(1) = 0;
U0(N) = 0;

B = 2 * DT * sin(X);
B(1) = 0;
B(N) = 0;

UExact = exp(-DT) * sin(X) + 2 * sin(X);
UApp = A * U0 + B;
UErr = abs(UExact - UApp);

disp('UExact:');
disp(UExact);

disp('UApp:');
disp(UApp);

disp('Absolute Error:');
disp(UErr);
