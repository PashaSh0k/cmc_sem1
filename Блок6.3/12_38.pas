{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_38(input, output);
const
    n = 4;
var
    a: array [1..n] of integer;
    i: integer;
////////////////////////////////////////////
procedure generate(k: integer);
var
    r, i: integer;
begin
    if k = 1 then begin
        for i := 1 to n do
            write(a[i],' ');
        writeln;
    end else begin
        for i := k downto 1 do begin
            r := a[i];
            a[i] := a[k];
            a[k] := r;
            generate(k - 1);
            r := a[i];
            a[i] := a[k];
            a[k] := r;
        end;
    end;
end;
////////////////////////////////////////////
begin
    writeln('Аксенов Павел, 110 группа, задача № 12.38');
    for i := 1 to n do
        read(a[i]);
    writeln;
    generate(n);
    writeln;
end.
