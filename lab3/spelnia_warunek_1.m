%wartość bezwzględna stosunku wartości większa niż 0.2
function correct = spelnia_warunek_1(a, b)
   if ((a * b < 0) &&  ...
       (((abs(a/b) > 0.2) && (a < b)) ||  ...
           (abs(b/a) > 0.2 && (a > b))))
        correct = true;
   else
       correct = false;
   end
end