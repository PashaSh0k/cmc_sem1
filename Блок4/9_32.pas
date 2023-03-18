{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_9_32(input, output);
var
    pairs: array ['a'..'z', 'a'..'z'] of 0..MaxInt;
    f, l ,a, i, j, jmax, imax: char;
    max: integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № 9.32');
    writeln;
    for i := 'a' to 'z' do 
        for j := 'a' to 'z' do
            pairs[i,j] := 0;
    writeln('Введите последовательность слов');
    repeat
        read(a);
        f := a;
        repeat
            l := a;
            read(a);
        until (a = ',') or (a = '.');
        pairs[f,l] := pairs[f,l]+1;
    until a = '.';
    writeln;
    imax := 'a';
    jmax := 'a';
    max := pairs['a','a'];
    for i := 'a' to 'z' do 
        for j := 'a' to 'z' do
            if pairs[i,j] > max then begin
                max := pairs[i,j];
                imax := i;
                jmax := j;
            end;
    writeln (imax, ' ', jmax);
    writeln;
end.
