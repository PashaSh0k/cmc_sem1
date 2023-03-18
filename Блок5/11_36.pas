{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_11_36(input, output);
type
    wd = array [1..6] of char;
var
    a, b, c: wd;
    m: char;

procedure readword(var w: wd; var s: char);
var
    c: char;
    k, i: integer;
begin
    read(c);
    k := 0;
    while (c <> '.') and (c <> ',') do begin
        k := k+1;
        w[k] := c;
        read(c);
    end;
    for i := k+1 to 6 do
        w[i] := ' ';
    s := c;
end;

procedure samewords(var x,y,z: wd);
var
    ok: boolean;
    i: integer;
begin
    ok := true;
    i := 0;
    while ok and (i < 6) do begin
        i := i+1;
        if not (x[i] = z[i]) then
            ok := false;
    end;
    if ok then begin
        for i := 1 to 6 do
            write(y[i]);
        writeln;
    end;
end;
    
begin
    writeln('Аксенов Павел, 110 группа, задача № 11.36');
    writeln;
    writeln('input words');
    readword(a, m);
    if m <> '.' then begin
        readword(b, m);
        if m <> '.' then
            while m <> '.' do begin
                readword(c, m);
                samewords(a,b,c);
                a := b;
                b := c;
            end;
    end;
    writeln;
end.
