% 2.3. Podaj liczbę zidentyfikowanych współbieżnych wzorców w szeregu nr 1 oraz nr 2 (współbieżnych, tj. które pokrywają się dla co najmniej 2 próbek czasowych);

wspolbiezne = 0;
for i = 1:length(serie)
    if serie(i)
        wspolny_zakres = serie2(max(1, i-9):min(length(serie2), i + 4));
        wspolbiezne = wspolbiezne + sum(wspolny_zakres);
    end
end

disp(wspolbiezne)