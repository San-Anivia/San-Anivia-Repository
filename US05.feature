Feature: Alerta de Caducidad Próxima (US05)
  As a: Gerente de Logística (GL)
  I want: recibir una alerta 3 días antes de la caducidad de un lote en almacén
  So that: planifico su venta prioritaria o descarte.
  
  Scenario Outline: Notificación de caducidad inminente
    Given que hay <cargas-proximas-caducar>
    When se ejecuta el <chequeo-diario> del sistema
    Then el sistema envía una <notificacion-push> con el ID de la carga y su ubicación
    
    Examples:
      | cargas-proximas-caducar | chequeo-diario | notificacion-push |
      | 'Cargas con caducidad a 3 días' | 'Chequeo diario' | 'Notificación al GL' |