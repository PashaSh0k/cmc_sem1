{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_8_53(input, output);
const
    n = 10;
var 
    i, j, s, max, k, l:integer;
    a,b:array [1..n] of integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 8.53');
    writeln;
    max := 0;
    s := 0;
    writeln('Введите точки');
    for i := 1 to n do 
        read(a[i],b[i]);
    for i := 1 to n-1 do 
        for j := i+1 to n do begin
            s := sqr(a[i]-a[j]) + sqr(b[i]-b[j]);
            if s > max then begin
                max := s;
                k := i;
                l := j;
            end;
        end;
    writeln('номера точек n1 = ', k,', n2 = ', l);
    writeln;
end.
