

use exercicio2;

delimiter |
create procedure _quesaoc_ (prod int, armazem int, quantidade int)
begin 
     declare v int;
     
     declare v1 int;
     
     select codprod into v from produto where prod = codprod;
     
     select numero into v1 from armazem where armazem = numero;
     
    if v is null then
        select "Produto não existe no banco" produto;
    elseif v1 is null then 
        select "Armazem não existe no banco" armazem;
    elseif quantidade <= 0 then
        select "A quantidade deve ser maior que zero" quant;
    elseif v is not null and v1 is not null then
        insert into estoque values (prod, armazem, quantidade);
        select "Dados inseridos com sucesso" Sucesso;
    end if;
end
|


call  _quesaoc_ (13, 20, 4);






