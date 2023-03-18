{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_6_41b(input, output);
var 
    k: integer;
    c: char;
    p: boolean;
begin
    writeln('Аксенов Павел, 110 группа, задача № 6.41b');
    writeln;
    writeln('Введите текст');
    read(c);
    p := true;
    k := 0;
    while (c <> '.') and p do begin
        if (c >= '0') and (c <= '6') then
            k := k+ord(c)-ord('0')
        else 
            p := false;
        read (c);
    end;
    if not(k mod 2 = 0) then 
        p := false;
    writeln(p);
    writeln;
end.


