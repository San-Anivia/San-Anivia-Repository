Feature: Integración con Sistemas de Pago (US35)
  As a: Administrador del Sistema
  I want: integrar un módulo de pagos en línea
  So that: permito a los Mayoristas pagar las facturas directamente en la plataforma.

  Scenario Outline: Transacción de pago completada
    Given que un Mayorista tiene una <factura-pendiente>
    When presiona <boton-pagar> e <ingresa-datos-tarjeta>
    Then el sistema <procesa-pago> y marca la <factura-estado> como "Pagada"
    
    Examples:
      | factura-pendiente | boton-pagar | ingresa-datos-tarjeta | procesa-pago | factura-estado |
      | 'Factura pendiente' | 'Pagar' | 'Datos de tarjeta' | 'Procesa pago' | 'Factura marcada' |
