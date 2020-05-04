%2.4. podaj jaki jest maksymalny przedział czasowy w szeregu nr 1, dla którego zidentyfikowano serię wzorców (wiele wzorców występujących szeregowo i/lub pokrywających się).

maks = 1;
dlugosc = 0;
bylo_jeden = false;
for i = 1:length(przedzialy)
    if przedzialy(i)
        bylo_jeden = true;
        dlugosc = dlugosc + 1;
        maks = max(maks, dlugosc);
    else
        bylo_jeden = false;
        dlugosc = 0;
    end
end

disp(maks)