-- coût patients de + de 5000 dollars
SELECT
    public.patient.name,
    public.procedures.name,
    public.procedures.cost,
    public.undergoes.dateundergoes
FROM
    public.procedures
    JOIN public.undergoes ON public.procedures.code = public.undergoes.procedures
    JOIN public.patient ON public.patient.ssn = public.undergoes.patient
WHERE
    public.procedures.cost > 5000;