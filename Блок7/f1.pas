{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_f1(w,r);
var
    w, r: text;
    gl, a1, a2, gl1: set of 'a'..'z';
    i, c:char;
begin
    writeln('Аксенов Павел, 110 группа, задача № f1');
    writeln;
    assign(w, 'words.txt');
    assign(r, 'result.txt');
    reset(w);
    rewrite(r);
    gl := ['a','e','i','o','u','y'];
    gl1 := ['a','e','i','o','u','y'];
    a1 := [];
    a2 := [];
    while not eof(w) do begin
        a2 := [];
        while not eoln(w) do begin
            read(w,c);
            if not (c  in gl) then
                a1 := a1 + [c]
            else
                a2 := a2 + [c];
        end;
        gl1 := gl1 * a2;
        readln(w);
    end;
    write(r,'1)  ');
    for i := 'a' to 'z' do
        if i in a1 then write(r,i,' ');
    writeln(r);
    write(r,'2)  ');
    for i := 'a' to 'z' do
        if not(i in a1) and not(i in gl) then write(r,i,' ');
    writeln(r);
    write(r,'3)  ');
    for i := 'a' to 'z' do
        if i in gl1 then write(r,i,' ');
    writeln(r);
    write(r,'4)  ');
    for i := 'a' to 'z' do
        if not(i in gl1) and (i in gl) then write(r,i,' ');
    writeln(r);
    close(w);
    close(r);
    writeln;
end.
