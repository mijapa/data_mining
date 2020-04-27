function data = przyrostlog(A)
data = log(A(2:end) / A(1:end-1));
end