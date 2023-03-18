{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_5_30_v(input, output);
var
    i, n, a, b, d: integer;
begin
    writeln ('Аксенов Павел, 110 группа, задача № 5.30v');
    writeln;
    write('Введите количество элементов последовательности n= ');
    read(n);
    writeln('Введите элементы последовательности ');
    read(a,b);
    d := b-a;
    i := 2;
    while (b-a = d) and (i < n) do begin
        i := i+1;
        a := b;
        read(b);
    end;
    if (b-a=d) and (i=n) then
        writeln('true')
    else 
        writeln('false');
    writeln;
end.



