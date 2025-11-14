Feature: Visualización en Mapa de Flota (US11)
  As a: Gerente de Logística (GL)
  I want: ver en un mapa en tiempo real la ubicación de todos mis camiones activos
  So that: monitoreo el progreso de las entregas y gestiono retrasos.

  Scenario Outline: Mapa con ubicación de vehículos
    Given que estoy en el <dashboard-logistico>
    When consulta el <mapa-flota>
    Then se muestra un <marcador-vehiculo> por cada vehículo
    And con su <id-vehiculo> y la <hora-actualizacion>
    
    Examples:
      | dashboard-logistico | mapa-flota | marcador-vehiculo | id-vehiculo | hora-actualizacion |
      | 'Dashboard' | 'Mapa' | 'Marcador' | 'ID del vehículo' | 'Última actualización de GPS' |
