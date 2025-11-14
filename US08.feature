Feature: Revisión de Discrepancias de Temperatura (US08)
  As a: Gerente de Logística (GL)
  I want: revisar un resumen de discrepancias de temperatura por viaje
  So that: evalúo el desempeño de mis conductores y vehículos.
  
  Scenario Outline: Generación de reporte de fallas de frío
    Given que accede al <modulo-calidad>
    When selecciona un <rango-fechas>
    Then el sistema <muestra-lista> de viajes donde la <temperatura-excedio> el umbral configurado
    
    Examples:
      | modulo-calidad | rango-fechas | muestra-lista | temperatura-excedio |
      | 'Módulo de Calidad' | 'Última semana' | 'Muestra lista de viajes' | 'Temperatura excedió 4°C' |