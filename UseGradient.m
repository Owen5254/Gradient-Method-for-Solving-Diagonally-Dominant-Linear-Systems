% Generate a random diagonally dominant linear system
n = 10;
A = randn(n,n);
A = A*A.';
A = A + diag(sum(abs(A),2));
b = randn(n,1);

% Perform the gradient method for solving the linear system
x0 = randn(n,1);
MaxIter = 1e2;
Tol = 1e-8;
[x, Iter, r] = Gradient(A, b, x0, MaxIter, Tol);

% Check the residual
fprintf('Norm of Residual: %e\n', norm(r));
