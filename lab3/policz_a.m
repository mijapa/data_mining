function a = policz_a(signal)
    x = 1:length(signal);
    X = [ones(length(x),1) x.' ];
    parametry = ((X) \ (signal));
    a = parametry(2);
end