Feature: Resumen de Normativa Avícola (US26)
  As a: Pequeño Productor
  I want: tener acceso a un resumen de la normativa avícola (SENASA) dentro de la aplicación
  So that: entiendo fácilmente mis obligaciones y estoy siempre en regla.

  Scenario Outline: Visualización de documentación legal
    Given que he <iniciado-sesion> como productor
    When accedo a la <seccion-legal>
    Then se muestra un <resumen-actualizado>
    And es <sencillo-entender> de los requisitos de formalización y manejo de productos
    
    Examples:
      | iniciado-sesion | seccion-legal | resumen-actualizado | sencillo-entender |
      | 'Iniciado sesión' | 'Recursos Legales' | 'Resumen actualizado' | 'Sencillo de entender' |