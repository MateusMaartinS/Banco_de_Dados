select * from departamento;
select * from dependentes;
select * from funcionario;
select * from salarios;

/* 1-Quanto foi o gasto com folha de pagamentos entre 01/01/2021 - 31/12/2022 */

select sum(valor_salario)
from salarios
where data_alteracao between '2021-01-01' AND '2022-12-31';

/* 2-Qual o valor da folha de cada departamento? */




/* 3-Qual o colaborador com maior salário? */

select f1.nome, s1.valor_salario
from funcionario f1
inner join salarios s1 on s1.id_funcionario = f1.codigo
where s1.valor_salario = (select max (s1.valor_salario) from salarios s1)

/* 4-Qual departamento possui o colaborador com o menor salário? */

select d1.descricao
from departamento d1
inner join funcionario f1 on f1.cod_departamento = d1.codigo
inner join salarios s1 on s1.id_funcionario = f1.codigo
where s1.valor_salario = (select min (s1.valor_salario) from salarios s1) limit 1