{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_26(input, output);
function f:integer;
var
    c: char;
    a, b: integer;
begin
    read(c);
    if (c <= '9') and (c >= '0') then
        f := ord(c) - ord ('0')
    else if c = 'M' then begin
        read(c);
        a := f;
        read(c);
        b := f;
        if a > b then
            f := a
        else
            f := b;
        read(c);
    end
    else if c = 'm' then begin
        read(c);
        a := f;
        read(c);
        b := f;
        if a < b then
            f := a
        else
            f := b;
        read(c);
    end;
end;
begin
    writeln('Аксенов Павел, 110 группа, задача № 12.26');
    writeln('input formula');
    writeln(f);
end.
