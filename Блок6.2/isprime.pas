{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_Prime(input, output);
var
    n: integer;
function isprime(n: integer):boolean;
    function divs(k:integer):integer;
    begin
        if sqr(k) > n then
            divs := 0
        else 
            divs := ord (n mod k = 0) + divs(k+1);
    end;
begin
    if divs(2) > 0 then
        isprime := false
    else
        isprime := true;
end;
begin
    writeln('Аксенов Павел, 110 группа, задача № IsPrime');
    writeln('input n');
    readln(n);
    writeln(isprime(n));
    writeln;
end.
