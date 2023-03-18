{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_10_19(input, output);
const
    n = 20;
var
    a: packed array [1..52] of char;
    x, y: packed array [1..n] of char;
    i, j: integer;
    ok: boolean;
begin
    writeln('Аксенов Павел, 110 группа, задача № 10.19');
    writeln;
    a := 'QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm';
    writeln('Введите текст');
    for i := 1 to n do
        read(x[i]);
    for i := 1 to n do begin
        j := 1;
        ok := false;
        while not ok and (j <= 52) do begin
            if x[i] = a[j] then 
                ok := true;
            j := j+1;
        end;
        if ok then
            y[i] := '-'
        else
            y[i] := ' ';
    end;
    writeln(x);
    writeln(y);
    writeln;
end.
