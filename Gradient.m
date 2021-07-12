function [x, Iter, r] = Gradient(A, b, x0, MaxIter, Tol)
[n,m] = size(A);
if n ~= m
    error('A should be a square matrix.');
end
Iter = 0;
x = x0;
r = b-A*x;
if norm(r) < Tol
    return
end
for Iter = 1:MaxIter
    Ar = A*r;
    alpha = (r.'*r) / (r.'*Ar);
    x = x + alpha*r;
    r = r - alpha*Ar;
    if norm(r) <= Tol
        break
    end
end
