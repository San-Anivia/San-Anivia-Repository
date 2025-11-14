Feature: Definición de Umbrales de Frío (US22)
  As a: Administrador del Sistema
  I want: configurar los umbrales de temperatura máxima para cada tipo de producto (ej: 4∘dopara pollo)
  So that: defino las alertas de falla.

  Scenario Outline: Umbrales de temperatura actualizados
    Given que accede a <configuracion-calidad>
    When <establece-valor> máximo de temperatura para "Pollo Fresco"
    Then el sistema <usa-valor> para generar alertas
    And marca <discrepancias-informes>
    
    Examples:
      | configuracion-calidad | establece-valor | usa-valor | discrepancias-informes |
      | 'Configuración de Calidad' | 'Establece valor' | 'Usa valor' | 'Marca discrepancias' |