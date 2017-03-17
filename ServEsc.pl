tramite(beca).
tramite(constancia).
tramite(titulacion).
tramite(serviciosocial).
tramite(residenciaprofesional).

esuntramite(x) :- tramite(x).

requiere_pago(beca).
requiere_pago(titulacion).
requiere_documentos(beca).
requiere_documentos(titulacion).


requiere_documentacion(x) :- requiere_pago(x), requiere_documentos(x).

solicitud(serviciosocial).
solicitud(residenciaprofesional).
solicitud(titulacion).
cartaasignacion(serviciosocial).
cartadepresentacion(serviciosocial).
cartadepresentacion(residenciaprofesional).
cartadeaceptacion(serviciosocial).
cartadeaceptacion(residenciaprofesional).
kardex(residenciaprofesional).
kardex(serviciosocial).

requiere_servicio :- solicitud(x), cartaasignacion(x), cartadepresentacion(x),kardex(x).

