T = importfile("data.csv");
figure('Name','Data')
plot(T.Period, T.USdollarEUR);
dollar = T.USdollarEUR;
nanx = isnan(dollar);
%dane zawierają braki - zostaną zastąpione średnią kroczącą k=5
T.USdollarEUR = fillmissing(T.USdollarEUR, 'movmean', 5);

przyrosty = diff(T.USdollarEUR);
figure('Name','Przyrosty')
plot(przyrosty);

k5mean = movmean(T.USdollarEUR, 5);
figure('Name','Średnia krocząca, k=5')
plot(k5mean);
%widać zmiany średniej - dane nie są stacjonarne



