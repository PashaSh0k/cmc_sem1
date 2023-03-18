{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_5_48(input, output);
var
    k, max, x, n, i:integer;
begin
    writeln ('Аксенов Павел, 110 группа, задача № 5.48');
    writeln;
    write('Введите число чисел n= ');
    read(n);
    writeln ('Введите числа');
    k := 0;
    max := 0;
    for i := 1 to n do begin
        read(x);
        if x = 0 then
            k := k+1
        else begin
            if k > max then
                max := k;
            k := 0;
        end;
    end;
    if max > k then 
        writeln ('max = ',max)
    else
        writeln ('max = ',k);
end.

