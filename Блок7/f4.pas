{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_f4(input,output);
uses heaptrc;
type
    str = packed array [1..10] of char;
    stud = record
        fn: record fam, name : str; end;
        sex : (M, W);
        marks : array [1..5] of 2..5;
    end;
    FS = file of stud;
    list = ^student;
    student = record
        elem: stud;
        next: list;
    end;
var
    f1: FS;
    f2: text;
    i: integer;
    newstudent, slist, first: list;
//////////////////////////////////////
procedure decode(var f: FS);
var
    i: integer;
    fout: text;
    s: stud;
begin
    assign(fout,'decode.txt');
    rewrite(fout);
    while not eof(f) do begin
        read(f,s);
        with s do begin
            for i := 1 to 10 do
                write(fout, fn.fam[i]);
            write(fout, ' ');
            for i := 1 to 10 do
                write(fout, fn.name[i]);
            write(fout, ' ', sex, '     ');
            for i := 1 to 5 do 
                write(fout, marks[i], ' ');
        end;
        writeln(fout);
    end;
    close(fout);
end;
//////////////////////////////////////
function Check(student: list) : boolean;
var
    love, fours : boolean;
    i : integer;
begin
    love{<3} := false;
    fours := false;
    for i := 1 to 5 do begin
        if student^.elem.marks[i] = 4 then fours := true;
        if student^.elem.marks[i] <= 3 then love := true;
    end;
    Check := (not love {:(}) and fours;
end;
//////////////////////////////////////
procedure Add(var student, newstudent: list);
var
    q: list;
begin
    if student = nil then begin
        new(student);
        student^.elem := newstudent^.elem;
        student^.next := nil;
    end else if (student^.elem.fn.fam >= newstudent^.elem.fn.fam) then begin
        new(q);
        q^.next := student;
        student := q;
        q^.elem := newstudent^.elem;
    end else
        Add(student^.next, newstudent);
end;
//////////////////////////////////////
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
//////////////////////////////////////
begin
    writeln('Аксенов Павел, 110 группа, задача № f4');
    writeln;
    assign(f1, 'course.bin');
    assign(f2, 'ans.txt');
    reset(f1);
    decode(f1);
    reset(f1);
    rewrite(f2);
    new(newstudent);
    newstudent^.next := nil;
    slist := nil;
    while not eof(f1) do begin
        read(f1, newstudent^.elem);
        if Check(newstudent) then
            Add(slist,newstudent);
    end;
    first := slist;
    while slist <> nil do begin
        with slist^.elem do begin
            with fn do begin
                for i := 1 to 10 do write(f2,fam[i]);
                write(' ');
                for i := 1 to 10 do write(f2,name[i]);
            end;
            write(f2, sex:2);
            for i := 1 to 5 do
                write(f2,' ',marks[i]);
            writeln(f2);
        end;
        slist := slist^.next;
    end;
    destroy(newstudent);
    destroy(first);
    close(f1);
    close(f2);
    writeln;
end.
