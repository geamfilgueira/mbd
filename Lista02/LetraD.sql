/*d) Criar um procedimento para inserir os dados na tabela de Fornecimento. Mas antes de inserir deverá testar se o código
do fornecedor existe na tabela de Fornecedor e se o código do produto existe na tabela Produto. Para cada teste exibir a
mensagem informando que o código não existe (por exemplo: Produto não existe no banco de dados; Fornecedor não
existe no banco de dados), caso contrário, mostrar a mensagem Dados inseridos com sucesso (1,5 pontos).*/


use exercicio2;
delimiter |
create procedure letrad (fornecedor int, produto int)
begin
    declare a int;
    declare b int;
    
    select codforn into a from fornecedor where codforn = fornecedor;
    
    select codprod into b from produto where codprod = produto;

    if a is null then
        select "Fornecedor não existe no banco de dados";
    elseif b is null then
        select "Produto não existe no banco de dados";
    elseif a is not null and b is not null then
        insert into fornecimento values (fornecedor, produto);
        select "Dados inseridos com sucesso";
    end if;

end;
|

call letrad (02,9798);



