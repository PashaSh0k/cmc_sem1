{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_16(input, output);
procedure print;
var
    x: char;
begin
    read (x);
    if x <> '.' then begin
        print;
        write(x);
    end;
end;
begin
    writeln('Аксенов Павел, 110 группа, задача № 12.16');
    print;
    writeln;
end.
