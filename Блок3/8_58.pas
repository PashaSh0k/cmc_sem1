{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_8_58(input, output);
const
    n = 10;
var 
    i, k, j:integer;
    a:array [1..255] of char;
    ok:boolean;
begin
    writeln('Аксенов Павел, 110 группа, задача № 8.58');
    writeln;
    writeln('Введите текст');
    k := 1;
    read(a[1]);
    for i := 2 to n do begin
        read(a[i]);
        j := i;
        repeat 
            j := j-1;
            ok := a[j]=a[i];
        until ok or (j=1);
        if not ok then
            k := k+1;
    end;
    writeln('k = ', k);
    writeln;
end.
