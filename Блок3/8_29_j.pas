{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_8_29_j(input, output);
const
    n = 10;
var 
    i, j:integer;
    a:array [1..n] of integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 8.29ж');
    writeln;
    writeln('Введите массив');
    for i := 1 to n do 
        read(a[i]);
    i := 1;
    j := 1;
    repeat
        if a[i] <> 0 then begin
            a[j] := a[i];
            if i > j then 
                a[i] := 0;
            j := j+1;
        end;
        i := i+1;
    until i > n;
    for i := 1 to n do
        write(a[i],' ');
    writeln;
end.
