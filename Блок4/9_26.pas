{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_9_26(input, output);
const
    m = 3;
var 
    i, j, k ,n, l: integer;
    a, x, c: array [1..m, 1..m] of integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 9.26');
    writeln;
    write('input n = ');
    readln(n);
    writeln('Введите матрицу');
    for i := 1 to m do
        for j := 1 to m do
            read(a[i,j]);
    x := a;
    c := a;
    for k := 1 to n-1 do begin
        a := c;
        for i := 1 to m do
            for j := 1 to m do begin
                c[i,j] := 0;
                for l := 1 to m do
                    c[i,j] := c[i,j] + a[i,l]*x[l,j];
                end;
    end;
    writeln;
    a := c;
    for i := 1 to m do begin
        for j :=1 to m do
            write (a[i,j]:3,' ');
        writeln;
    end;
            
    writeln;
end.
