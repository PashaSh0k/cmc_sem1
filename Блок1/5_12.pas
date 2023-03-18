{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_5_12(input, output);
var
    x: real;
begin
    writeln ('Аксенов Павел, 110 группа, задача № 5.12');
    writeln;
    x := 0;
    writeln('   x   sin(x) cos(x)   ');
    writeln('--------------------');
    while x <= 1.0 do begin
        writeln(x:1:4, ' ', sin(x):1:4,' ',cos(x):1:4);
        x := x+0.1;
    end;
    writeln;
end.


