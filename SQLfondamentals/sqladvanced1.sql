-- question 1 exo sql advanced onboarding
SELECT
    public.physician.name,
    public.trained_in.certificationexpires,
    public.procedures.name,
    public.undergoes.dateundergoes
FROM
    public.procedures
    JOIN public.trained_in ON public.trained_in.treatment = public.procedures.code
    JOIN public.undergoes ON public.undergoes.procedures = public.procedures.code
    JOIN public.physician ON public.physician.employeeid = public.trained_in.physician
WHERE
    public.undergoes.dateundergoes > public.trained_in.certificationexpires;