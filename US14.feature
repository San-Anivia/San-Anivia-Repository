Feature: Registro de Incidentes en Ruta (US14)
  As a: Conductor/Distribuidor
  I want: poder registrar un incidente en la ruta (ej: accidente, avería) desde la aplicación
  So that: notifico inmediatamente a Logística y recalculo el ETA.

  Scenario Outline: Informe de incidente
    Given que estoy en ruta y ocurre un <incidente-tipo>
    When pulsa <boton-reportar>, selecciona el <tipo-incidente> y adjunta una <foto-evidencia>
    Then el sistema <notifica-logistica> y <suspende-calculo-eta>
    
    Examples:
      | incidente-tipo | boton-reportar | tipo-incidente | foto-evidencia | notifica-logistica | suspende-calculo-eta |
      | 'Avería' | 'Reportar Incidente' | 'Tipo de incidente' | 'Foto' | 'Notifica al GL' | 'Suspende cálculo de ETA' |