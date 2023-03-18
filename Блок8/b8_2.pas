{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_b8_2(input, output);
uses heaptrc;
type 
    words = packed array [1..6] of char;
    list = ^node;
    node = record
        elem: words;
        count: integer;
        next: list;
    end;
var
    mas: array [1..6] of list;
    i, k: integer;
    c: char;
    w: words;
    q: list;
//////////////////////////////
procedure ins(var x: list; var insmas: words);
var
    p: list;
begin
    if x = nil then begin
        new(x);
        x^.elem := insmas;
        x^.count := 1;
        x^.next := nil;
    end else
        if x^.elem = insmas then
            x^.count := x^.count + 1
        else if x^.elem > insmas then begin
            new(p);
            p^.elem := insmas;
            p^.count := 1;
            p^.next := x;
            x := p;
        end else
            ins(x^.next, insmas);
end;
//////////////////////////////
procedure print(l: integer);
begin
    q := mas[l];
    if q <> nil then
        while q <> nil do begin
            writeln(q^.elem,' - ',q^.count);
            q := q^.next;
        end;
end;
//////////////////////////////
procedure destroy(var L: list);
var
    p: list;
begin
    while L <> nil do begin
        p := L;
        L := L^.next;
        dispose(p);
    end;
end;
//////////////////////////////
begin
    writeln('Аксенов Павел, 110 группа, задача №2');
    writeln;
    writeln('input words');
    read(c);
    while c <> '.' do begin
        k := 1;
        while (c <> '.') and (c <> ',') do begin
            w[k] := c;
            k := k+1;
            read(c);
        end;
        if c = ',' then
            read(c);
        for i := k to 6 do
            w[i] := ' ';
        ins(mas[k-1],w);
    end;
    for i := 1 to 6 do begin
        print(i);
        destroy(mas[i]);
    end;
    writeln;
end.
