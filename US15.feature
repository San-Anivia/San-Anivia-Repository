Feature: Optimización Automática de Rutas (US15)
  As a: Gerente de Logística (GL)
  I want: que el sistema me sugiera una ruta optimizada para múltiples entregas
  So that: reduzco el consumo de combustible y el tiempo de viaje total.

  Scenario Outline: Cálculo de ruta óptima
    Given que he <cargado-puntos> de entrega en el planificador
    When pulsa el <boton-optimizar>
    Then el sistema devuelve la <secuencia-optima> de paradas
    And considera la <distancia-tiempo> estimado
    
    Examples:
      | cargado-puntos | boton-optimizar | secuencia-optima | distancia-tiempo |
      | '7 puntos' | 'Optimizar Ruta' | 'Secuencia eficiente' | 'Distancia y tiempo' |
