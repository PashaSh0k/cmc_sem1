{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_8_41_g(input, output);
const
    n = 10;
var 
    i, j, r, x, l, m:integer;
    a:array [1..n] of integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 8.41г');
    writeln;
    writeln('Введите массив');
    for i := 1 to n do 
        read(a[i]);
    for i:= 2 to n do begin
        x := a[i];
        l := 1;
        r := i-1;
        while l <= r do begin 
            m := (l+r) div 2;
            if x < a[m] then
                r := m-1
            else
                l := m+1;
        end;
        for j:= i-1 downto l do 
            a[j+1] := a[j];
        a[l] := x;
    end;
    for i := 1 to n do
        write(a[i],' ');
    writeln;
end.
