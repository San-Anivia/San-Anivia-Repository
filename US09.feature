Feature: Anulación de Cargas (US09)
  As a: pequeño productor
  I want: anular un lote que he creado, pero que aún no ha sido recogido
  So that: corrijo errores de registro sin afectar la trazabilidad de cargas ya enviadas.
  
  Scenario Outline: Carga anulada antes de la recolección
    Given que la <carga-estado> es "En Granja"
    When accede a los detalles de la carga y pulsa <boton-anular>
    Then el <estado-final-carga> cambia a "Anulado"
    And <no-seleccionable> para pedidos
    
    Examples:
      | carga-estado | boton-anular | estado-final-carga | no-seleccionable |
      | 'En Granja' | 'Anular Carga' | 'Anulado' | 'No es seleccionable' |