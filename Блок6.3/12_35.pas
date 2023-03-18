{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_35(input, output);
const
    n = 10;
var
    roads: array[1..n,1..n] of boolean;
    visited: array[1..n] of boolean;
    way: array [1..n] of 1..n;
    length, first, last, i,j: integer;
////////////////////////////////////////////
function path(t1,t2: integer): boolean;
var 
    t: integer;
    ok: boolean;
begin
    if t1 = t2 then
        path := true
    else begin
        ok := false;
        t := 0;
        repeat
            t := t+1;
            if (roads[t1,t] = true) and not visited[t] then begin
                visited[t] := true;
                length := length+1;
                way[length] := t;
                if path(t,t2) then
                    ok := true
                else
                    length := length-1;
            end;
        until ok or (t=n);
        path := ok;
    end;
end;
////////////////////////////////////////////
begin
    writeln('Аксенов Павел, 110 группа, задача № 12.35');
    for i := 1 to n do
        for j := 1 to n do
            roads[i,j] := false;
    writeln('input i,j');
    read(i,j);
    while (i <> 0) and (j <> 0) do begin
        roads[i,j] := true;
        roads[j,i] := true;
        read(i,j);
    end;
    for i := 1 to n do
        visited[i] := false;
    writeln('input towns');
    readln(first,last);
    visited[first] := true;
    way[1] := first;
    length := 1;
    if path(first,last) then
        for i := 1 to length do
            write(way[i],' ')
    else 
        writeln('NO path');
    writeln;
end.
