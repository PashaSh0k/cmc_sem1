{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_5_41(input, output);
var
    k: integer;
    a, x: real;
begin
    writeln ('Аксенов Павел, 110 группа, задача № 5.41');
    writeln;
    writeln('Введите последовательность чисел');
    read(x); k:=0;
    while x<>0 do begin
        a := x;
        read(x);
        if ((a>0) and (x<0)) or ((a<0) and (x>0)) then
            k:=k+1;
    end;
    writeln(k);
    writeln;
end.

