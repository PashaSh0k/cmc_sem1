{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_11_27(input, output);
const
    n = 3;
type
    Matrix = array [1..n,1..n] of real;
var
    tx, ty: real;
    x, y, z: Matrix;

procedure InputMatrix(var a: Matrix);
var
    i, j: integer;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(a[i,j]);
    writeln;
end;

function track(var a: Matrix):real;
var 
    i: integer;
    k: real;
begin
    k := 0;
    for i := 1 to n do
        k := k + a[i,i];
    track := k;
end;

procedure squareMatrix(var a,b: Matrix);
var
    i, j, l: integer;
begin
    for i := 1 to n do
        for j := 1 to n do begin
            b[i,j] := 0;
            for l := 1 to n do
                b[i,j] := b[i,j] + a[i,l]*a[l,j];
            end;
end;

procedure OutPutMatrix(a: Matrix);
var
    i, j: integer;
begin
    for i := 1 to n do begin
        for j := 1 to n do
            write(a[i,j]:0:2,' ');
        writeln;
    end;
end;

begin
    writeln('Аксенов Павел, 110 группа, задача № 11.27');
    writeln;
    writeln('input x,y matrix');
    InputMatrix(x);
    InputMatrix(y);
    tx := track(x);
    ty := track(y);
    if tx < ty then
        squareMatrix(x,z)
    else 
        squareMatrix(y,z);
    OutPutMatrix(z);
    writeln;
end.
