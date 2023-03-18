{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program z1(input, output);
var
    n: integer;
function check(n: integer):boolean;
var
    i, j: integer;
    ok: boolean;
begin
    ok := false;
    i := 0;
    while not ok and (i <= n) do begin
        j := 0;
        while not ok and (j <= n) do begin
            ok := n = i*i + j*j;
            j := j+1;
        end;
        i := i+1;
    end;
    check := ok;
end;
begin
    read(n);
    writeln(check(n));
end.

