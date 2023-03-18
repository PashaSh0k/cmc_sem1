{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Dop_3_1(input, output);
var
    n: integer;
function chr1(x: integer):char;
var
    l: char;
    k,i: integer;
begin
    l := '0';
    k := ord(l);
    if k > x then
        for i := x to k-1 do
            l := pred(l)
    else
        for i := k to x-1 do
            l := succ(l);
    chr1 := l;
end;

begin
    writeln('Аксенов Павел, 110 группа, доп.задача № 1');
    writeln;
    write('input n = ');
    readln(n);
    writeln('chr1(',n,')=[',chr1(n),'] chr(',n,')=[', chr(n),']');
end.
