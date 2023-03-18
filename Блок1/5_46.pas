{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_5_46(input, output);
var
    n, i, k, a, x: integer;
begin
    writeln ('Аксенов Павел, 110 группа, задача № 5.46');
    writeln;
    write('Введите число чисел n= ');
    read(n);
    writeln ('Введите числа');
    read (x);
    k:=1;
    for i := 2 to n do begin
        a := x;
        read (x);
        if x <> a then
            k := k+1;
    end;
    writeln('Количество различных чисел k = ',k);
    writeln;
end.


