use exercicio2;

delimiter |
create procedure questao8 (A int, B int, C int, D int)
begin
    if b > c and d > a and (c + d) > ( a + b) and c > 0 and d > 0  and a > 10 then
        select  "Valores aceitos";
    else
        select "Valores não aceitos";
    end if;
end ; |

call questao8 (12, 33, 3, 50);