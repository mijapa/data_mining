function data = przyrostwzg(A)
data = (A(2:end) - A(1:end-1))./A(1:end-1);
end