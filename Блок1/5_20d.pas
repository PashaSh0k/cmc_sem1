{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_5_20_d(input, output);
const
    eps=0.00001;
var
    y, x, a: real;
    n, i, r: integer;
begin
    writeln ('Аксенов Павел, 110 группа, задача № 5.20d');
    writeln;
    write('Введите аргумент x= ');
    read(x);
    n := 0;
    y := x;
    a := x;
    repeat
        a := a*x*x*(2/(2*n+3)-1);
        y := y+a;
        n := n+1;
    until abs(a) < eps;
    writeln ('y = arctg x = ', y:1:4);
    writeln ('с помощью стандартной функции y= arctg x = ', arctan(x):1:4);
    writeln;
end.


