{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_6_21(input, output);
var 
    a, b, c: char;
    k: integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 6.21');
    writeln;
    writeln('Введите текст');
    k := 0;
    read(c);
    a := '*';
    b := '*';
    while c <> '.' do begin
        if (a = 'a') and (b = 'b') and (c = 'c') then 
            k := k+1;
        a := b;
        b := c;
        read(c);
    end;
    writeln('Количество вхождений abc равно k = ',k);
    writeln;
end.

