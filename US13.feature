Feature: Alerta de Desvío de Ruta (US13)
  As a: Conductor/Distribuidor
  I want: que la aplicación me alerte si me desvío de la ruta planificada por más de 500 metros
  So that: evito pérdidas de tiempo o errores logísticos.

  Scenario Outline: Advertencia de desvío
    Given que la <navegacion-estado> está activa
    When el <gps-detecta> que me salió del camino trazado
    Then la aplicación emite una <alerta-sonora> y <alerta-visual>
    And sugiere un <reajuste-ruta>
    
    Examples:
      | navegacion-estado | gps-detecta | alerta-sonora | alerta-visual | reajuste-ruta |
      | 'Activa' | 'Desvío de 500 metros' | 'Sonido de advertencia' | 'Alerta en pantalla' | 'Reajuste' |