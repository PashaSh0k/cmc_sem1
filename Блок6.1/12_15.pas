{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_15(input, output);
function digits:integer;
var
    x: char;
begin
    read (x);
    if x = '.' then
        digits := 0
    else if (ord(x) >= ord ('0')) and (ord(x) <= ord ('9')) then
        digits := digits + 1
    else
        digits := digits;
end;
begin
    writeln('Аксенов Павел, 110 группа, задача № 12.15');
    writeln(digits);
    writeln;
end.
