Feature: Notificación Pre-Entrega al Cliente (US16)
  As a: Mayorista/Comprador
  I want: recibir una notificación push 30 minutos antes de la llegada estimada de mi pedido
  So that: preparo el personal de recepción.

  Scenario Outline: Aviso de llegada próxima
    Given que el sistema detecta que el camión está a <tiempo-umbral> del destino
    When se cumple el <umbral-tiempo-distancia>
    Then la aplicación móvil del Mayorista muestra una <alerta-llegada>
    
    Examples:
      | tiempo-umbral | umbral-tiempo-distancia | alerta-llegada |
      | '30 minutos' | 'Umbral de tiempo' | 'Alerta de pedido por llegar' |