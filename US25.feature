Feature: Registro Oficial de Descarte/Retiro (US25)
  As a: Gerente de Logística (GL)
  I want: registrar la acción de retiro o descargar una carga por mala calidad
  So that: mantengo un registro oficial para auditorías.

  Scenario Outline: Lote marcado como no apto
    Given que una <carga-estado-rechazado>
    When marco de la carga como <accion-descarte> e indico la <razon-descarte>
    Then el <lote-estado> queda inactivo en el sistema
    And se genera un <documento-descarte> con hora y responsable
    
    Examples:
      | carga-estado-rechazado | accion-descarte | razon-descarte | lote-estado | documento-descarte |
      | 'Carga rechazada' | 'Descartado' | 'Falla de Frío' | 'Inactivo' | 'Documento' |
