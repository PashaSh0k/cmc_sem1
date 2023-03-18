{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_5_45(input, output);
var
    max, max1, max2, x: integer;
begin
    writeln ('Аксенов Павел, 110 группа, задача № 5.45');
    writeln;
    max2 := 0;
    max1 := -1;
    max := -2;
    writeln ('Введите числа ');
    read (x);
    while x <> 0 do begin
        if x > max2 then begin
            max := max1;
            max1 := max2;
            max2 := x;
        end
        else
            if x > max1 then begin
                    max := max1;
                    max1 := x;
            end
            else
                if x > max then
                    max := x;
        read(x);
    end;
    writeln ('Три максимальных числа: max = ',max,' , max1 = ',max1,' , max2 = ',max2);
    writeln;
end.
