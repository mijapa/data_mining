przywzg = przyrostwzg(T.USdollarEUR);
figure('Name','Przyrost względny')
plot(przywzg);

przylog = przyrostlog(T.USdollarEUR);
figure('Name','Przyrost logarytmiczny')
plot(przylog);

detrended = detrend(T.USdollarEUR);
figure('Name','Dane po detrendingu')
plot(detrended);
