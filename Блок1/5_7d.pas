{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_5_7_d(input, output);
var
    x, max, k: integer;
begin
    writeln ('Аксенов Павел, 110 группа, задача № 5.7d');
    writeln;
    writeln('Введите члены последовательности');
    read(x);
    max := x;
    k := 0;
    while x <> 0 do begin
        if x = max then
            k := k+1;
        if x > max then begin
            max := x;
            k := 1;
        end;
        read(x);
    end;
    writeln('Количество наибольших чисел в последовательности k = ',k);
    writeln;
end.


