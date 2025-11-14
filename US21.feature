Feature: Generación de Reporte SENASA (US21)
  As a: Gerente de Logística (GL)
  I want: generar un informe de trazabilidad con el formato y la información requerida por SENASA
  So that: agilizo las auditorías.

  Scenario Outline: Descarga de informe oficial
    Given que estoy en el <modulo-reportes>
    When selecciona <reporte-tipo> y <rango-fechas>
    Then el sistema <descarga-archivo>
    And contiene <origen-ruta> de todos los lotes de ese período
    
    Examples:
      | modulo-reportes | reporte-tipo | rango-fechas | descarga-archivo | origen-ruta |
      | 'Reportes' | 'Reporte de Cumplimiento SENASA' | 'Rango' | 'Archivo (PDF/Excel)' | 'Origen y ruta' |