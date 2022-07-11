use exercicio2;

delimiter |
create procedure triangulo6 (l1 int, l2 int, l3 int)
begin
    if (l1+l2) < l3 or (l1+l3)<l2 or (l2+l3)<l1 then
        select "Não forma triângulo" as "";
    elseif l1=l2 and l2 <> l3 or l1=l3 and l1 <> l2 or l2=l3 and l2 <> l1 then
        select "Isóceles" as "";
    elseif l1=l2=l3 then
        select "Equilátero" as "";
    elseif l1<>l2<>l3 then
        select "Escaleno" as "";
end if;
end; |

call triangulo6 (1, 1, 1);