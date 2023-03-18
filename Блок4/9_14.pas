{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_9_14(input, output);
const
    n = 10;
var 
    i, j, k: integer;
    a: array [1..n, 1..n] of integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 9.14');
    writeln;
    k := 1;
    for i := 1 to n do
        for j := 1 to n do begin
            a[i,j] := k;
            k := k+1;
        end;
    for i := 1 to n do begin
        for j :=1 to n do
            write (a[i,j]:3,' ');
        writeln;
    end;
    writeln;
    for i := 1 to n do
        for j := 1 to n do begin
            if j >= i then
                a[i,j] := j-i+1
            else
                a[i,j] := 0;
        end;
    for i := 1 to n do begin
        for j :=1 to n do
            write (a[i,j]:2,' ');
        writeln;
    end;
    writeln;
end.
