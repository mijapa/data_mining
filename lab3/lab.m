T = importfile("data.csv");
figure('Name','Data')
plot(T.Period, T.USdollarEUR);

przyrosty = diff(T.USdollarEUR);
figure('Name','Przyrosty')
plot(przyrosty);

k5mean = movmean(T.USdollarEUR, 5);
figure('Name','Średnia krocząca, k=5')
plot(k5mean);
%widać zmiany średniej - dane nie są stacjonarne
