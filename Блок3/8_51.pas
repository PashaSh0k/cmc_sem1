{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_8_51(input, output);
const
    n = 10;
var 
    i, s, imax, imin: integer;
    a: array [1..n] of integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 8.51');
    writeln;
    s := 0;
    writeln('Введите числа');
    for i := 1 to n do 
        read(a[i]);
    imax := 1;
    imin := 1;
    for i := 1 to n do begin
        if a[i] > a[imax] then 
            imax := i;
        if a[i] < a[imin] then 
            imin := i;
    end;
    if imax > imin then
        for i := imin to imax do
            s := s + a[i]
    else 
        for i := imax to imin do
            s := s + a[i];
    writeln('s = ', s);
    writeln;
end.
