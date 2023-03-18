{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_11_18(input, output);
var
    a, b, c, max, max1, max2: integer;
function nod1(x, y: integer):integer;
begin
    x := abs(x);
    y := abs(y);
    while x <> y do
        if x > y then
            x := x-y
        else
            y := y-x;
    nod1 := x;
end;
function nod2(x, y: integer):integer;
begin
    x := abs(x);
    y := abs(y);
    while (x <> 0) and (y <> 0) do
        if x > y then
            x := x mod y
        else
            y := y mod x;
    nod2 := x+y;
end;
begin
    writeln('Аксенов Павел, 110 группа, задача № 11.18');
    writeln;
    writeln('input a,b,c');
    readln(a,b,c);
    max := nod1(a,b);
    max1 := nod1(max,c);
    max := nod2(a,b);
    max2 := nod2(max,c);
    writeln('max1 = ', max1,' max2 = ', max2);
    writeln;
end.
