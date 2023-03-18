{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_6_33(input, output);
var 
    p, k: integer;
    c: char;
begin
    writeln('Аксенов Павел, 110 группа, задача № 6.33');
    writeln;
    writeln('Введите неотрицательных целое число в 8-ичной сс');
    read(c);
    k := 0;
    repeat
        k := k*8 + ord(c) - ord('0');
        read(c);
    until c = ' ';
    p := 1;
    while k div p > 4 do
        p := p*5;
    repeat
        write(chr(ord('0') + k div p));
        k := k mod p;
        p := p div 5;
    until p = 0;
    writeln;
end.

