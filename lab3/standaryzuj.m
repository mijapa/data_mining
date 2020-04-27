function data = standaryzuj(x)
data = (x - mean(x)) / std(x);
end
