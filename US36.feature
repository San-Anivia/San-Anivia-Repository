Feature: Notificación de Pago a Productor (US36)
  As a: Pequeño Productor
  I want: recibir una notificación inmediata cuando un Mayorista haya realizado un pago a mi favor a través de la plataforma
  So that: confirmo la recepción de fondos rápidamente.

  Scenario Outline: Aviso de recepción de dinero
    Given que un <pago-procesado> ha sido procesado por el sistema
    When el <sistema-actualiza> el estado de la factura
    Then la aplicación móvil del Productor muestra una <alerta-movil>
    And incluye el <monto-pedido> asociado
    
    Examples:
      | pago-procesado | sistema-actualiza | alerta-movil | monto-pedido |
      | 'Pago procesado' | 'Actualiza estado' | 'Alerta de "¡Pago Recibido!"' | 'Monto y pedido' |