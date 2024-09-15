N = 13;
Ord = 4;
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

A = W(:, :, Ord) - eye(N);
A(1, :) = zeros(1, N);
A(1, 1) = 1;
A(2, :) = a(1, :);
A(N-1, :) = W(1, :, 2);
A(N, :) = W(1, :, 3);

C = zeros(N, 1);
C(1) = 7/2;
C(2) = -4;
C(N-1) = 5/2;
C(N) = -2;

X = X';

YExact = 3 * exp(-X) + (1/2) * cos(X) - sin(X);
YApp = A \ C;
AErr = abs(YExact - YApp);

disp('YExact:');
disp(YExact);

disp('YApp:');
disp(YApp);

disp('Absolute Error:');
disp(AErr);
