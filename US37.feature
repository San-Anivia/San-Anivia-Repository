Feature: Histórico de Facturas y Pagos (US37)
  As a: Mayorista/Comprador
  I want: ver un histórico de mis facturas y el estado de mis pagos realizados
  So that: llevo un control de mis gastos y contabilidad.

  Scenario Outline: Consulta de historial de transacciones
    Given que estoy en el <modulo-facturacion>
    When selecciono <opcion-historico>
    Then se muestra una <lista-transacciones>
    And incluye <fecha-monto-estado> (pagado/pendiente)
    
    Examples:
      | modulo-facturacion | opcion-historico | lista-transacciones | fecha-monto-estado |
      | 'Facturación' | 'Histórico' | 'Lista de transacciones' | 'Detalles (fecha, monto, estado)' |