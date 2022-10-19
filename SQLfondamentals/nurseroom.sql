-- names nurse on call room 113
SELECT
    public.on_call.blockfloor,
    public.on_call.blockcode,
    public.on_call.nurse,
    public.nurse.name,
    public.room.roomnumber
FROM
    public.on_call
    JOIN public.room ON public.on_call.blockfloor = public.room.blockfloor
    AND public.on_call.blockcode = public.room.blockcode
    JOIN public.nurse ON public.on_call.nurse = public.nurse.employeeid
WHERE
    public.room.roomnumber = 113;