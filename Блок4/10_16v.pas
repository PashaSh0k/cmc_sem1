{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_10_16v(input, output);
const
    n = 30;
    k = 5;
var
    a: array [1..n] of packed array [1..k] of char;
    i, j, x, y: integer; 
    c: char;
    ok: boolean;
begin
    writeln('Аксенов Павел, 110 группа, задача № 10.16v');
    writeln;
    writeln('Введите текст');
    read(c);
    x := 1;
    while c <> '.' do begin
        y := 1;
        while (c <> '.') and (c <> ',') do begin
            a[x,y] := c;
            y := y+1;
            read(c);
        end;
        if y <= k then
            for i := y to k do
                a[x,i] := ' ';
        x := x+1;
        if c = ',' then
            read (c);
    end;
    for i := 1 to x -1 do begin
        ok := true;
        for j := 1 to i-1 do
            if a[i] = a[j] then
                ok := false;
        if ok then
            write (a[i], ' ');
    end;
    writeln;
end.
