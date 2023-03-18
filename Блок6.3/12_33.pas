{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_33(input, output);
var
    n: integer;
    A, B, C: char;
////////////////////////////////////////////
procedure move(n:integer;A,B,C:char);
begin
    if n = 1 then
        writeln('from ',A,' to ',C)
    else begin
        move(n-1,A,C,B);
        writeln('from ',A,' to ',C);
        move(n-1,B,A,C);
    end;
end;
////////////////////////////////////////////
begin
    writeln('Аксенов Павел, 110 группа, задача № 12.33');
    writeln('input n');
    readln(n);
    A := '1';
    B := '2';
    C := '3';
    move(n,A,B,C);
    writeln('DONE');
    writeln;
end.
