{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_8_41_b(input, output);
const
    n = 10;
var 
    i, j, r:integer;
    a:array [1..n] of integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 8.41б');
    writeln;
    writeln('Введите массив');
    for i := 1 to n do 
        read(a[i]);
    for i := 1 to n-1 do
        for j := 1 to (n - i) do
            if a[j+1] < a[j] then begin
                r := a[j+1];
                a[j+1] := a[j];
                a[j] := r;
            end;
    for i := 1 to n do
        write(a[i],' ');
    writeln;
end.
