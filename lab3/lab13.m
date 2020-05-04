%1.3. Dokonaj analizy rezultatów, w szczególności pod kątem uzyskania nowej informacji z danych, a także stacjonarności. Czy dane poddane redukcji szumów są stacjonarne?

%Średnia krocząca przyrostów względnych
k5kmeanPW = movmean(przywzg, 5000);
figure('Name','Średnia krocząca przyrostów względnych, k=5000')
plot(k5kmeanPW);
%widać zmiany średniej - dane nie są stacjonarne


%Średnia krocząca przyrostów logarytmicznych
k5kmeanPL = movmean(przylog, 5000);
figure('Name','Średnia krocząca przyrostów logarytmicznych, k=5000')
plot(k5kmeanPL);
%widać zmiany średniej - dane nie są stacjonarne

%Średnia krocząca danych po detrendingu
k5kmeanD = movmean(detrended, 5000);
figure('Name','Średnia krocząca danych po detrendingu, k=5000')
plot(k5kmeanD);
%dane są stacjonarne
