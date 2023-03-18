{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_5_42(input, output);
var
    n, i: integer;
    x, y, r, min: real;
begin
    writeln ('Аксенов Павел, 110 группа, задача № 5.42');
    writeln;
    write('Введите число пар n= ');
    read(n);
    writeln('Введите элементы последовательности ');
    read(x,y);
    r := sqrt(sqr(x)+sqr(y));
    min := r;
    for i := 2 to n do begin
        read (x,y);
        r := sqrt(sqr(x)+sqr(y));
        if r > min then
            min := r;
    end;
    writeln ('Радиус наименьшего круга, внутрь которого попадают все точки = ',min:0:4);
    writeln;
end.

