%1.4 Aproksymacja szeregów

n = 1;

x=linspace(0,numel(T.USdollarEUR)-1,numel(T.USdollarEUR));
p = polyfit(x, T.USdollarEUR, n);
newY = polyval(p, x);
figure('Name','Aproksymacja wielomianem stopnia 1')
plot(x,T.USdollarEUR,x,newY,'-r');
grid;
legend('Data','Fitted Data');

n = 3;

x=linspace(0,numel(T.USdollarEUR)-1,numel(T.USdollarEUR));
p = polyfit(x, T.USdollarEUR, n);
newY = polyval(p, x);
figure('Name','Aproksymacja wielomianem stopnia 3')
plot(x,T.USdollarEUR,x,newY,'-r');
grid;
legend('Data','Fitted Data');