Feature: Cálculo de Penalización Automática (US28)
  As a: Gerente de Logística (GL)
  I want: que el sistema muestre un cálculo automático de la penalización si se incumple una cláusula de temperatura con un cliente importante
  So that: tengo claridad financiera en caso de fallo.

  Scenario Outline: Cálculo de multa por calidad
    Given que la <temperatura-pedido> cayó el umbral
    And el cliente <aplica-penalizacion>
    When reviso el <reporte-pedido>
    Then el sistema muestra el <monto-penalizacion>
    And el cálculo es según el <valor-carga>
    
    Examples:
      | temperatura-pedido | aplica-penalizacion | reporte-pedido | monto-penalizacion | valor-carga |
      | 'Temperatura fuera' | 'Aplica penalización' | 'Reporte' | 'Monto de penalización' | 'Valor de la carga' |
