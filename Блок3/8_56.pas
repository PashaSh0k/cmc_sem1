{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_8_56(input, output);
var 
    a, j: char;
    b: array ['a'..'z'] of integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 8.56');
    writeln;
    for j := 'a' to 'z' do
        b[j] := 0;
    writeln('Введите текст');
    read(a);
    while a <> '.' do begin
        b[a] := b[a] + 1;
        read(a);
    end;
    for j := 'a' to 'z' do
        if b[j] = 1 then 
            write (j,' ');
    writeln;
end.
