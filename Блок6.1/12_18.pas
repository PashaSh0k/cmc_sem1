{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_18(input, output);
var
    a, b: integer;
function nod1(a, b: integer):integer;
begin
    if a = b then
        nod1 := a
    else if a > b then
        nod1 := nod1(a-b,b)
    else
        nod1 := nod1(a,b-a);
end;
function nod2(a, b: integer):integer;
begin
    if (a = 0) or (b = 0) then
        nod2 := a+b
    else if a > b then
        nod2 := nod2(a mod b,b)
    else
        nod2 := nod2(a,b mod a);
end;
begin
    writeln('Аксенов Павел, 110 группа, задача № 12.18');
    writeln('input a,b');
    readln(a,b);
    writeln(nod1(a,b),' = ',nod2(a,b));
    writeln;
end.
