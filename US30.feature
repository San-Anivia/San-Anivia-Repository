Feature: Exportar Datos de Trazabilidad (US30)
  As a: Analista de Datos
  I want: exportar todos los registros de temperatura y tiempo de viaje en un archivo .CSV
  So that: realizo análisis avanzados fuera de la plataforma.

  Scenario Outline: Descarga de datos para análisis
    Given que accede al <modulo-exportacion>
    When selecciona el <tipo-dato> y el <rango-fechas>
    Then el sistema descarga un <archivo-csv>
    And incluye todas las <marcas-tiempo> y lecturas de temperatura
    
    Examples:
      | modulo-exportacion | tipo-dato | rango-fechas | archivo-csv | marcas-tiempo |
      | 'Módulo de Exportación' | 'Histórico de Sensores' | 'Rango de fechas' | 'Archivo .CSV' | 'Marcas de tiempo' |