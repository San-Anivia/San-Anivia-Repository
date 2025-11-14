Feature: Informe de Cumplimiento de ETA (US27)
  As a: Gerente de Logística (GL)
  I want: un reporte del porcentaje de ETAs cumplidas por mis conductores en el último mes
  So that: mido la eficiencia del servicio de transporte.

  Scenario Outline: Informe de puntualidad
    Given que accede al <modulo-rendimiento>
    When selecciona el <filtro-eta>
    Then el sistema muestra el <porcentaje-entregas>
    And están dentro del <margen-aceptado> del ETA calculado
    
    Examples:
      | modulo-rendimiento | filtro-eta | porcentaje-entregas | margen-aceptado |
      | 'Rendimiento' | 'Cumplimiento de ETA Mensual' | 'Porcentaje' | '15 minutos' |