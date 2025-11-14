Feature: Histórico de Trazabilidad Completa (US03)
  As a: Gerente de Logística (GL)
  I want: acceder al histórico completo de movimientos de un lote
  So that: respondo rápidamente a incidentes o reclamos de calidad.
  
  Scenario Outline: Búsqueda y visualización de historial
    Given que estoy en el <modulo-busqueda>
    When ingreso el <id-carga> en el campo
    Then el sistema muestra una <linea-tiempo> con todas las <marcas-tiempo>
    
    Examples:
      | modulo-busqueda | id-carga | linea-tiempo | marcas-tiempo |
      | 'Módulo de Lotes' | 'ID Lote X123' | 'Línea de tiempo' | 'Todas las marcas de tiempo' |