{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_6_23_g(input, output);
var 
    a, b: char;
begin
    writeln('Аксенов Павел, 110 группа, задача № 6.23g');
    writeln;
    writeln('Введите текст');
    read(b);
    a := '*';
    while b <> '.'  do begin
        if (a = 'p') and (b = 'h') then
            write('f')
        else if b <> 'p' then
            write(b);
        if (a = 'p') and (b <> 'h') then
            write(a);
        a := b;
        read(b);
    end;
    writeln;
end.


