{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_6_31(input, output);
var 
    i, n, p, k: integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 6.31');
    writeln;
    write('Введите натуральное число n = ');
    read(n);
    for i := 0 to n do begin
        p := 1;
        k := i;
        while (i div p) > 2 do
            p := p*3;
        while p > 0 do begin
            write(chr(ord('0') + k div p));
            k := k mod p;
            p := p div 3;
        end;
        write(' ');
    end;
    writeln;
end.
