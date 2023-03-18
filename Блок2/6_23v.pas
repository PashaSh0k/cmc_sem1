{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_6_23_v(input, output);
var 
    a, b: char;
begin
    writeln('Аксенов Павел, 110 группа, задача № 6.23v');
    writeln;
    writeln('Введите текст');
    read(b);
    a :=' ';
    while b <> '.' do begin
        if ((a <> 'c') or (b <> 'b')) then
            write(b);
        a := b;
        read(b);
    end;
    writeln;
end.
