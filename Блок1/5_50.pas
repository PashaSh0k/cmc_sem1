{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_5_50(input, output);
var
    x, s, n: integer;
begin
    writeln ('Аксенов Павел, 110 группа, задача № 5.50');
    writeln;
    writeln ('Введите числа');
    s := 0;
    read(x);
    n := 0;
    while x > 0 do begin
        n := n+x;
        s := s+n;
        read (x);
    end;
    writeln (s);
    writeln;
end.

