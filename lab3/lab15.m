n = 1;
k = 10;


% y = reshape(T.USdollarEUR, [], k);
el = numel(T.USdollarEUR);
kel = floor(el/k);

figure('Name','Aproksymacja wielomianami stopnia 1')
hold on
for i = 1:k
    start = kel*(i-1)+1;
    ending = kel*i;
    
    x=linspace(start,ending,kel);
    p = polyfit(x, T.USdollarEUR(start:ending), n);
    newY = polyval(p, x);
 
    plot(x,T.USdollarEUR(start:ending),'-b',x,newY,'-r');
end
grid;
legend('Data','Fitted Data');
hold off
