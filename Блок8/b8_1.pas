{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_b8_1(input, output);
uses heaptrc;
type 
    TE = char;
    list = ^node;
    node = record
        elem: TE;
        next: list;
    end;
var
    L: list;
    f1,f2: text;
    ok: boolean;
procedure create(var L: list; var ok: boolean);
var
    c: TE;
    k: integer;
    p: list;
    s: set of char;
begin
    L := nil;
    k := 0;
    s := ['1','3','5','7','9'];
    while not eoln(f1) do begin
        read(f1,c);
        k := k+1;
        if L = nil then begin
            new(L);
            L^.elem := c;
            p := L;
        end else begin
            new(p^.next);
            p := p^.next;
            p^.elem := c;
        end;
    end;
    p^.next := nil;
    if (p^.elem in s) and (k > 1) then
        ok := true
    else 
        ok := false;
end;
procedure move(L: list);
begin
    while L <> nil do begin
        write(f2, L^.elem);
        L := L^.next;
    end;
    writeln(f2);
end;
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
begin
    writeln('Аксенов Павел, 110 группа, задача №1');
    writeln;
    assign(f1, 'file1.txt');
    assign(f2, 'file2.txt');
    reset(f1);
    rewrite(f2);
    while not eof(f1) do begin
        if not eoln(f1) then begin
            create(L,ok);
            if ok then
                move(L);
            destroy(L);
        end;
        readln(f1);
    end;
    close(f1);
    close(f2);
    writeln('DONE');;
end.
