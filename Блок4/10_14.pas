{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_10_14(input, output);
var
    a: array [1..9] of packed array [1..4] of char;
    p, n, i, c: integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 10.14');
    writeln;
    a[1] := 'I   ';
    a[2] := 'II  ';
    a[3] := 'III ';
    a[4] := 'IV  ';
    a[5] := 'V   ';
    a[6] := 'VI  ';
    a[7] := 'VII ';
    a[8] := 'VIII';
    a[9] := 'IX  ';
    write('Введите число n = ');
    readln(n);
    writeln;
    write(n,' = ');
    p := 0;
    c := n;
    while c > 9 do begin
        c := c - 10;
        p := p +1 ;
    end;
    for i := 1 to p do
        write('X');
    if n-10*p <> 0 then
        write(a[n-10*p]);
    writeln;
end.
