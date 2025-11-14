Feature: Definición de Zonas de Exclusión (US20)
  As a: Administrador del Sistema
  I want: definir zonas de exclusión (ej: áreas peligrosas) en el mapa
  So that: el sistema las evite al optimizar las rutas.

  Scenario Outline: Rutas que evitan zonas peligrosas
    Given que he marcado un <poligono-mapa> como "Zona Restringida"
    When el <sistema-calcula> la ruta optimizada
    Then la <ruta-generada> evita el paso por la Zona Restringida
    And a menos que sea el <punto-entrega>
    
    Examples:
      | poligono-mapa | sistema-calcula | ruta-generada | punto-entrega |
      | 'Polígono' | 'Calcula ruta' | 'Ruta generada' | 'Punto de entrega' |