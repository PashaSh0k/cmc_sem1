{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_28(input, output);
procedure print;
var
    c: char;
begin
    read(c);
    if (c = '(') then
    begin
        print;
        read(c);
        print;
        write(c);
        read(c);
    end
    else
        write(c);
end;
begin
    writeln('Аксенов Павел, 110 группа, задача № 12.28');
    writeln('input formula');
    print;
end.
