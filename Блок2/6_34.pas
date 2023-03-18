{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_6_34(input, output);
var 
    s, z: integer;
    c: char;
begin
    writeln('Аксенов Павел, 110 группа, задача № 6.34');
    writeln;
    writeln('Введите последовательность символов');
    s := 0;
    read(c);
    z := 1;
    while c <> '.' do begin
        if c = '-' then
            z := -1
        else if c = '+' then
            z := 1
        else
            s := s+z*(ord(c)-ord('0'));
        read(c);
    end;
    writeln('Сумма s = ',s);
    writeln;
end.



