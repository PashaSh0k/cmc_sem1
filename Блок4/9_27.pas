{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_9_27(input, output);
const
    n = 5;
var 
    i, j: integer;
    a: array [1..n, 1..n] of integer;
    ok: boolean;
begin
    writeln('Аксенов Павел, 110 группа, задача № 9.27');
    writeln;
    writeln('Введите матрицу');
    for i := 1 to n do
        for j := 1 to n do
            read(a[i,j]);
    ok := true;
    i := 0;
    while ok and (i < n) do begin
        i := i+1;
        j := 0;
        while ok and (j < i-1) do begin
            j := j+1;
            if not(a[i,j] = a[j,i]) then 
                ok := false;
        end;
    end;
    writeln (ok);
    writeln;
end.
