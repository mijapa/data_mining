% 2.1 W dostępnych szeregach znajdź następujące sekwencje danych

% Serie o długości 5 próbek

diffs = diff(T.USdollarEUR);

serie = [];
 for i = 1:(length(diffs) - 5)
     result = true;
     for j = 0:3
         if spelnia_warunek_1(diffs(j + i), diffs(j + i + 1))
             result = false;
         end
     end
     serie(i) = result;
 end
 
 % Serie o długośći 15 próbek
 
 serie2 = [];
 for i = 1:(length(abs_diffs) - 15)
     result = true;
     for j = 0:1
         prev = mean(abs_diffs((i + j * 5) : (i + (j + 1) * 5)));
         next = mean(abs_diffs((i + (j + 1) * 5) : (i + (j + 2) * 5)));
         if ~spelnia_warunek_2(prev, next)
             result = false;
         end
     end
     serie2(i) = result;
 end
 
 
% Serie o długości 10 próbek
 
serie3 = [];
a_globalne = policz_a(T.USdollarEUR);
for i = 1:(length(diffs) - 10)
    a_serii = policz_a(T.USdollarEUR(i:(i+9)));
    serie3(i) = a_serii < a_globalne;
end