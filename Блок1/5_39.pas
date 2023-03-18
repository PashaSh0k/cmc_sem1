{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_5_39(input, output);
var
    a, b, c: boolean;
begin
    writeln ('Аксенов Павел, 110 группа, задача № 5.39');
    writeln;
    writeln('------------------------');
    writeln('  A     B     C     F');
    writeln('------------------------');
    for a := true downto false do
        for b := true downto false do
            for c := true downto false do
                writeln(a:6,b:6,c:6,((a and b) or not (b or c)):6);
    writeln;
end.
