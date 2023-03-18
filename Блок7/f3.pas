{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_f3(t3);
var
    t3: text; 
    c:char;
    k, i, max, imax:integer;
begin
    writeln('Аксенов Павел, 110 группа, задача № f3');
    writeln;
    assign(t3, 't3.txt');
    reset(t3);
    max := 0;
    imax := 0;
    k := 0;
    i := 0;
    while not eof(t3) do begin
        k := 0;
        i := i+1;
        while not eoln(t3) do begin
            read(t3,c);
            k := k+1;
        end;
        if k > max then begin
            max := k;
            imax := i;
        end;
        readln(t3);
    end;
    close(t3);
    reset(t3);
    for i := 1 to imax-1 do 
        readln(t3);
    while not eoln(t3) do begin
        read(t3,c);
        write(c);
    end;
    close(t3);
    writeln;
end.
