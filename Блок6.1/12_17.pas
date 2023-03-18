{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_17(input, output);
procedure print;
var
    x: integer;
begin
    read (x);
    if x <> 0 then begin
        if x < 0 then
            write(x,' ');
        print;
        if x >0 then
            write(x,' ');
        end;
end;
begin
    writeln('Аксенов Павел, 110 группа, задача № 12.17');
    print;
    writeln;
end.
