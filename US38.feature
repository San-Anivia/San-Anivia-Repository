Feature: Interfaz de Pedidos para Conductor (US38)
  As a: Conductor/Distribuidor
  I want: ver una lista clara de todos los pedidos y lotes que tengo que entregar ese día
  So that: aseguro que no falte ningún producto y optimizo la carga.

  Scenario Outline: Visualización de carga diaria
    Given que he <iniciado-sesion-conductor>
    When accede a la <seccion-mi-dia>
    Then el sistema muestra una <lista-paradas-ordenadas>
    And el <detalle-lotes> asignados a cada parada
    
    Examples:
      | iniciado-sesion-conductor | seccion-mi-dia | lista-paradas-ordenadas | detalle-lotes |
      | 'Iniciado sesión' | 'Mi Día' | 'Lista de paradas ordenadas' | 'Detalle de lotes' |
