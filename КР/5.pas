{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
///////////////////////////////////////////////////////////////////////
///                   Задача 5 (вариант 2.5)      20 очков          ///
///////////////////////////////////////////////////////////////////////
{
Сначала необходимо ознакомиться с  разделом типов этой программы. Далее 
дать описание логической функции  Everywhere(G, friends), определяющей, 
есть ли в группе G (типа group) хотя бы один человек, побывавший в гостях 
у всех остальных из этой группы (здесь G[х] – множество людей, бывших в 
гостях у человека с именем  х;  x не принадлежит множеству G[x]).  
Если ДА, то функция в качестве "побочного эффекта" возвращает через
параметр friends множество типа guests (которое составлено из имён людей,
побывавших в гостях у всех остальных).
Требования к реализации функции Everywhere(G, friends): 1) запрещено 
пользоваться операциями in, or, and;  2) запрещены вложенные циклы; 
3)нельзя описывать вспомогательные процедуры (или функции); 
4)настоятельно рекомендуется использовать теоретико-множественные 
операции.      
В раздел операторов программы ничего не добавлять и не менять 
(кроме своих данных: ИМЕНИ, ФАМИЛИИ и ГРУППЫ)
}
    
program Task5(input,output);
type  
    name = (Anna,Alex,Petr,Maria,Elena,Egor,Olga,Pavel,Nadya,Ivan,Igor);                   
    guests = set of name;
    group = array [name] of guests;
var
    G: group;
    friends: guests;
    
{---------здесь дать описание функции Everywhere(G, friends)-----------}
                    
{----------------------------------------------------------------------}    

{------------------ вывод содержимого множества: ----------------------}    
procedure Print(var friends: guests);
var 
    i: name;
begin
    for i := Anna to Igor do
        if i in friends then
            case i of
                Anna:  write('Anna ');
                Alex:  write('Alex ');
                Petr:  write('Petr ');
                Maria: write('Maria ');
                Elena: write('Elena ');
                Egor:  write('Egor ');
                Olga:  write('Olga ');
                Pavel: write('Pavel ');
                Nadya: write('Nadya ');
                Ivan:  write('Ivan ');
                Igor:  write('Igor ')
            end; {of case}
     writeln       
end;
{----------------------------------------------------------------------}

{----------------------------------------------------------------------}
begin {в разделе операторов изменить только ФАМИЛИЮ, ИМЯ, ГРУППУ}
    writeln('ФАМИЛИЯ ИМЯ ГРУППА    Задача 5 (вариант 2.5)');
    {заполнение массива тестовыми данными:}
    G[Anna]  := [Alex, Maria, Elena, Olga, Nadya, Ivan, Igor];
    G[Alex]  := [Petr, Maria, Elena, Olga, Pavel, Ivan, Igor];
    G[Petr]  := [Anna, Alex, Maria, Elena, Ivan];
    G[Maria] := [Anna, Petr, Elena, Egor, Olga, Ivan];
    G[Elena] := [Maria, Egor, Olga, Ivan, Igor];
    G[Egor]  := [Alex, Maria, Elena, Pavel, Ivan, Igor];
    G[Olga]  := [Alex, Maria, Elena, Nadya, Ivan];
    G[Pavel] := [Maria, Elena, Egor, Ivan];
    G[Nadya] := [Alex, Petr, Maria, Elena, Ivan, Igor];
    G[Ivan]  := [Alex, Petr, Maria, Elena, Olga, Pavel];
    G[Igor]  := [Anna, Alex, Petr, Maria, Elena, Ivan, Igor];    
    {Maria, Elena и Ivan побывали в гостях у всех остальных}
    {вызов вашей функции Everywhere(G, friends):}
    if Everywhere(G, friends) then begin
        writeln('Yes:');
        print(friends)
    end else
        writeln('No!')
end.
