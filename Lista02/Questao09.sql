use exercicio2;

delimiter |
create procedure questao01(nome varchar (30))
begin
    declare cont int;
    set cont = 1;
    while cont <= 49 do
        select nome as "", cont as "";
        set cont = cont + 2;
    end while;
end;
|

call questao01("Alda");