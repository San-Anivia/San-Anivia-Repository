Feature: Rechazo Digital de Mercancía (US24)
  As a: Mayorista/Comprador
  I want: rechazar la recepción de un lote de forma digital, indicando el motivo de la falla (ej: temperatura fuera de rango)
  So that: inicio el proceso de reclamo formal.

  Scenario Outline: Rechazo formal del pedido
    Given que he revisado la mercancía y encontró una <falla-encontrada>
    When marco <boton-rechazar>, selecciono el <motivo-falla> y capturo una <foto-evidencia>
    Then se genera un <documento-rechazo-digital>
    And <notifica-logistica>
    
    Examples:
      | falla-encontrada | boton-rechazar | motivo-falla | foto-evidencia | documento-rechazo-digital | notifica-logistica |
      | 'Temperatura fuera de rango' | 'Rechazar carga' | 'Motivo' | 'Foto' | 'Documento de rechazo' | 'Notifica a Logística' |