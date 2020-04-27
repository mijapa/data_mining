nr01 = normalize(T.USdollarEUR,'range');
figure('Name','Dane znormalizowane 0-1')
plot(nr01);

nr0100 = normalize(T.USdollarEUR,'range', [0 100]);
figure('Name','Dane znormalizowane 0-100')
plot(nr0100);

standaryzowane = standaryzuj(T.USdollarEUR);
figure('Name','Dane standaryzowane')
plot(standaryzowane);

logarytmowane = log(T.USdollarEUR);
figure('Name','Dane logarytmowane')
plot(logarytmowane);


