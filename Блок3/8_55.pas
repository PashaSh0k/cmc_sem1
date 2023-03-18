{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_8_55(input, output);
const
    n = 10;
var 
    i, j, k:integer;
    a:array [1..n] of integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 8.55');
    writeln;
    k := 0;
    writeln('Введите числа');
    for i := 1 to n do
        read(a[i]);
    for i := 1 to n-1 do
        for j := i+1 to n do
            if a[i] > a[j] then
                k := k+1;
    writeln('k = ', k);
    writeln;
end.
