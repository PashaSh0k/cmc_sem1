{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_6_32(input, output);
var 
    max, k: integer;
    c: char;
begin
    writeln('Аксенов Павел, 110 группа, задача № 6.32');
    writeln;
    writeln('Введите последовательных неотрицательных целых чисел');
    max := 0;
    repeat
        k := 0;
        read(c);
        repeat
            k := k*7+ord(c)-ord('0');
            read(c);
        until (c = ' ') or (c = '.');
        if k > max then
            max := k;
    until c = '.';
    writeln('Наибольшее число max = ',max);
    writeln;
end.

