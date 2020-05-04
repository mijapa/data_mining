%Przygotowanie danych wejściowych do analizy

T = importfile("data.csv");
figure('Name','Data')
plot(T.Period, T.USdollarEUR);
dollar = T.USdollarEUR;
disp(isnan(dollar));
%dane zawierają braki - zostaną zastąpione średnią kroczącą k=5
T.USdollarEUR = fillmissing(T.USdollarEUR, 'movmean', 5);

%Przyrosty
przyrosty = diff(T.USdollarEUR);
figure('Name','Przyrosty')
plot(przyrosty);

%Średnia krocząca
k5kmean = movmean(T.USdollarEUR, 5000);
figure('Name','Średnia krocząca, k=5000')
plot(k5kmean);
%widać zmiany średniej - dane nie są stacjonarne



