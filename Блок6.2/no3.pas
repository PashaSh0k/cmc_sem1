{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_no3(input, output);
var
    n: integer;
function delete3(n: integer):integer;
begin
    if n > 0 then
        if n mod 10 <> 3 then
            delete3 := delete3(n div 10)*10 + n mod 10
        else 
            delete3 := delete3(n div 10)
    else
        delete3 := 0;
end;
begin
    writeln('Аксенов Павел, 110 группа, задача № no3');
    writeln('input n');
    readln(n);
    writeln(delete3(n));
    writeln;
end.
