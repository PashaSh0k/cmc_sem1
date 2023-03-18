{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_14(input, output);
function max:integer;
var
    x, m: integer;
begin
    read (x);
    if x = 0 then
        max := x
    else begin
    m := max;
    if x > m then
        max := x
    else
        max := m;
    end;1
end;
begin
    writeln('Аксенов Павел, 110 группа, задача № 12.14');
    writeln(max);
    writeln;
end.
