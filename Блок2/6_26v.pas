{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_6_26_v(input, output);
var 
    a, f, l: char;
    k: integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 6.26v');
    writeln;
    k := 0;
    writeln('Введите текст');
    repeat
        read(a);
        f := a;
        repeat
            l := a;
            read(a);
        until (a = ',') or (a = '.');
        if f = l then
            k := k+1;
    until a = '.';
    writeln('Количество слов начинающихся и оканчивающихся одной и той же буквой k = ',k); 
    writeln;
end.
