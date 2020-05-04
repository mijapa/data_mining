%różnią się znakiem i od siebie o więcej niż 10%
function correct = spelnia_warunek_2(a, b)
   if ((a * b < 0) &&  ...
       (((abs(a/b) >= 0.1) && (a < b)) ||  ...
           (abs(b/a) >= 0.1 && (a > b))))
        correct = true;
   else
       correct = false;
   end
end