Feature: Alerta de Mantenimiento de Vehículos (US29)
  As a: Gerente de Logística (GL)
  I want: que el sistema me alerte cuando un vehículo deba ir a mantenimiento por kilometraje
  So that: evito fallas mecánicas en ruta y aseguro la cadena de frío.

  Scenario Outline: Notificación de servicio preventivo
    Given que un camión ha superado el <kilometraje-servicio>
    When el sistema realiza el <chequeo-diario>
    Then el sistema marca el vehículo como <estado-mantenimiento>
    And envía un <aviso-gl>
    
    Examples:
      | kilometraje-servicio | chequeo-diario | estado-mantenimiento | aviso-gl |
      | 'Kilometraje de servicio' | 'Chequeo diario' | 'Mantenimiento Pendiente' | 'Aviso al GL' |