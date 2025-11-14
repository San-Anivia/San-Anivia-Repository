Feature: Histórico de Rutas y Tiempos (US19)
  As a: Gerente de Logística (GL)
  I want: un resumen de los tiempos reales de viaje de los últimos 6 meses
  So that: identifico patrones de ineficiencia logística.

  Scenario Outline: Generación de informe de rendimiento histórico
    Given que accede al <modulo-rendimiento>
    When selecciona un <vehiculo-periodo>
    Then el sistema muestra la <desviacion-promedio>
    And entre el <eta-planificado> y el <tiempo-llegada-real>
    
    Examples:
      | modulo-rendimiento | vehiculo-periodo | desviacion-promedio | eta-planificado | tiempo-llegada-real |
      | 'Rendimiento de Flota' | 'Vehículo y 6 meses' | 'Desviación promedio' | 'ETA planificado' | 'Tiempo de llegada real' |