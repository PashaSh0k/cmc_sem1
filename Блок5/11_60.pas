{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_11_60(input, output);
const
    n = 5;
    m = 4;
type
    Matrix = array [1..n,1..n] of integer;
var
    cx, cy, cz: integer;
    x, y, z: Matrix;

procedure InputMatrix(var a: Matrix);
var
    i, j: integer;
begin
    for i := 1 to n do
        for j := 1 to m do
            read(a[i,j]);
    writeln;
end;

procedure OutPutMatrix(a: Matrix);
var
    i, j: integer;
begin
    for i := 1 to n do begin
        for j := 1 to m do
            write(a[i,j],' ');
        writeln;
    end;
    writeln;
end;

function count(a: Matrix): integer;
var
    k, i, j: integer;
    ok: boolean;
begin
    k := 0;
    for i := 1 to n do begin
        ok := true;
        j := 0;
        while ok and (j < m) do begin
            j := j+1;
            if not (a[i,j] = 0) then 
                ok := false;
        end;
        if ok then 
            k := k+1;
    end;
    count := k;
end;
begin
    writeln('Аксенов Павел, 110 группа, задача № 11.60');
    writeln;
    writeln('input x,y,z matrix');
    InputMatrix(x);
    InputMatrix(y);
    InputMatrix(z);
    cx := count(x);
    cy := count(y);
    cz := count(z);
    if (cx >= cy) and (cx >= cz) then
        OutputMatrix(x);
    if (cy >= cx) and (cy >= cz) then
        OutputMatrix(y);
    if (cz >= cy) and (cz >= cx) then
        OutputMatrix(z);
    writeln;
end.
