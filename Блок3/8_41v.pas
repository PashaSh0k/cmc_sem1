{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_8_41_v(input, output);
const
    n = 3;
var 
    i, j, r:integer;
    a:array [0..n] of integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 8.41в');
    writeln;
    writeln('Введите массив');
    for i := 1 to n do 
        read(a[i]);
    for i := 1 to n-1 do 
        if a[i] > a[i+1] then begin
            r := a[i+1];
            j := i;
            while (j > 0) and (r < a[j]) do begin
                a[j+1] := a[j];
                j := j-1;
            end;
            a[j+1] := r;
        end;
    for i := 1 to n do
        write(a[i],' ');
    writeln;
end.

