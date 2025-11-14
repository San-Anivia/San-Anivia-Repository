Feature: Personalización del Panel (US33)
  As a: Gerente de Logística (GL)
  I want: poder personalizar los widgets de mi panel de control
  So that: priorizo la información más relevante.

  Scenario Outline: Panel con widgets personalizados
    Given que estoy en mi <dashboard-personal>
    When arrastro y suelto el <widget-movido> a la <posicion-superior>
    Then el <dashboard-estado> se guarda
    And la <proxima-sesion> mantendrá esa configuración
    
    Examples:
      | dashboard-personal | widget-movido | posicion-superior | dashboard-estado | proxima-sesion |
      | 'Dashboard' | 'Alertas Críticas' | 'Parte superior' | 'Dashboard guardado' | 'Próxima sesión' |