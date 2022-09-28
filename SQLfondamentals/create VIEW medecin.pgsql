create VIEW  medecin 
WITH (trained_in.physician, trained_in.treatment , procedures.name , trained_in.certificationexpires)
 as SELECT trained_in.physician , trained_in.treatment , procedures.name , trained_in.certificationexpires
FROM  procedures
JOIN trained_in on procedures.code = trained_in.treatment;
