%1.1 Analiza danych oraz pozyskanie dodatkowego syganłu diagnostycznego

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

potegowane2 = power(T.USdollarEUR, 2);
figure('Name','Dane potegowane 2')
plot(potegowane2);

potegowane3 = power(T.USdollarEUR, 3);
figure('Name','Dane potegowane 3')
plot(potegowane3);
