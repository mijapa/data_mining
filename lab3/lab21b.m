% Seria 5 próbkowa
przedzialy = zeros(length(T.Period), 1);
for i = 1:(length(T.Period) - 6)
    if(serie(i))
        for j=i:(i+4)
            przedzialy(j) = 1;
        end
    end
end
plot(T.Period, T.USdollarEUR);
hold on;
plot(T.Period, przedzialy);
hold off;


% Seria 15 próbkowa
przedzialy2 = zeros(length(T.Period), 1);
for i = 1:(length(T.Period) - 16)
    if(serie2(i))
        for j=i:(i+15)
            przedzialy2(j) = 1;
        end
    end
end
figure('Name', 'Przedziały czasowe - 15 próbek');
plot(T.Period, T.USdollarEUR);
hold on;
plot(T.Period, przedzialy2);
hold off;

% Seria 10 próbkowa

przedzialy3 = zeros(length(T.Period), 1);
for i = 1:(length(T.Period) - 11)
    if(serie3(i))
        for j=i:(i+9)
            przedzialy3(j) = 1;
        end
    end
end

figure('Name', 'Przedziały czasowe - 10 próbek');
plot(T.Period, T.USdollarEUR);
hold on;
plot(T.Period, przedzialy3);
hold off;