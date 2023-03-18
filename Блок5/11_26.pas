{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_11_26(input, output);
const
    n = 4;
type
    Vect = array [1..n] of real;
var
    mx, my, mz, r: real;
    x, y, z: Vect;

procedure InputVect(var a: Vect);
var i: integer;
begin
    for i := 1 to n do
        read(a[i]);
end;

function min(var a: Vect):real;
var 
    i: integer;
    k: real;
begin
    k := a[1];
    for i := 2 to n do
        if a[i] < k then
            k := a[i];
    min := k;
end;

function ScalarProduct(var a, b: Vect):real;
var 
    i: integer;
    l: real;
begin
    l := 0;
    for i := 1 to n do
        l := l + a[i]*b[i];
    ScalarProduct := l;
end;

begin
    writeln('Аксенов Павел, 110 группа, задача № 11.26');
    writeln;
    writeln('input x,y,z vectors');
    InputVect(x);
    InputVect(y);
    InputVect(z);
    mx := min(x);
    my := min(y);
    mz := min(z);
    if (mx > my) and (mx > mz) then
        r := ScalarProduct(x,x) - ScalarProduct(y,z)
    else if (my > mx) and (my > mz) then
        r := ScalarProduct(y,y) - ScalarProduct(x,z)
    else if (mz > mx) and (mz > my) then
        r := ScalarProduct(z,z) - ScalarProduct(x,y);
    writeln('res = ', r:0:4);
    writeln;
end.
