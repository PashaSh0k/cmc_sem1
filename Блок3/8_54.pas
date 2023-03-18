{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_8_54(input, output);
const
    n = 10;
var 
    i, j, min: integer;
    a, b: array [1..n] of integer;
    ok: boolean;
begin
    writeln('Аксенов Павел, 110 группа, задача № 8.54');
    writeln;
    min := maxInt;
    writeln('Введите числа');
    for i := 1 to n do
        read(a[i]);
    for i := 1 to n do
        read(b[i]);
    for i := 1 to n do begin
        j := 0;
        repeat
            j := j+1;
            ok := b[j] <> a[i];
        until (j = n) or not ok;
        if ok and (a[i] < min) then 
            min := a[i];
    end;
    writeln('min = ', min);
    writeln;
end.

