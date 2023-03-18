{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_f2(t1,t2);
var
    t1, t2: text;
    ok: boolean;
    c1, c2:char;
begin
    writeln('Аксенов Павел, 110 группа, задача № f2');
    writeln;
    assign(t1, 't1.txt');
    assign(t2, 't2.txt');
    reset(t1);
    reset(t2);
    ok := true;
    while ((not eof(t1)) or (not eof(t2))) and ok do begin
        if eof(t1) or eof(t2) then
            ok := false;
        while ((not eoln(t1)) or (not eoln(t2))) and ok do begin
            if eoln(t1) or eoln(t2) then
                ok := false;
            read(t1,c1);
            read(t2,c2);
            if c1 <> c2 then
                ok := false;
        end;
        readln(t1);
        readln(t2);
    end;
    writeln(ok);
    close(t1);
    close(t2);
    writeln;
end.
