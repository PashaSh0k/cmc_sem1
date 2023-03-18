{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_5_54(input, output);
var
    i, n, j: integer;
    p: boolean;
begin
    writeln ('Аксенов Павел, 110 группа, задача № 5.54');
    writeln;
    write('Введите число чисел n= ');
    read(n);
    for i := 3 to n do begin
        p := true;
        j :=2;
        while p and (j <= i div 2) do begin
            if i mod j = 0 then
                p := false
            else
                j := j+1;
        end;
        if p = true then
            write (i, ' ');
    end;
    writeln;
end.

