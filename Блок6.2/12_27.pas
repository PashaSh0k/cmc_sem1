{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_27(input, output);
function l:boolean;
var
    c: char;
    b: boolean;
begin
    read(c);
    case c of
    't' : begin
        read(c,c,c);
        l := true; 
    end;
    'f' : begin
        read(c,c,c,c);
        l := false;
    end;
    'n' : begin
        read(c,c,c);
        l := not l;
        read(c);
    end;
    'o' : begin
        read(c,c);
        b := false;
        repeat
            b := b or l;
            read(c);
            until(c = ')');
            l := b;
        end;
    'a' : begin
        read(c,c,c);
        b := true;
        repeat
            b := b and l;
            read(c);
            until(c = ')');
            l := b;
        end;
    end;
end;
begin
    writeln('Аксенов Павел, 110 группа, задача № 12.27');
    writeln('input formula');
    writeln(l);
end.
