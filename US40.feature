Feature: Integración con ERP/Contabilidad (US40)
  As a: Administrador del Sistema
  I want: que la plataforma pueda integrarse vía API con nuestro software ERP de contabilidad
  So that: sincronizo automáticamente las facturas y pagos.

  Scenario Outline: Sincronización automática de datos
    Given que se ha <completado-pago> en San Anivia
    When el sistema <procesa-transaccion>
    Then se <envia-registro> de la factura y el pago al <software-erp>
    
    Examples:
      | completado-pago | procesa-transaccion | envia-registro | software-erp |
      | 'Pago completado' | 'Procesa la transacción' | 'Envía registro' | 'Sistema ERP externo' |