Feature: Cálculo y Notificación de ETA Dinámica (US12)
  As a: Gerente de Logística (GL)
  I want: que el sistema calcule una Hora Estimada de Llegada (ETA) dinámica a cada destino
  So that: mantengo informados a los clientes si hay retrasos.

  Scenario Outline: ETA calculada con tráfico
    Given que el <camion-estado> está en ruta
    When reviso el <seguimiento-pedido>
    Then el sistema muestra el <eta-recalculado>
    And se basa en <datos-trafico> en tiempo real
    
    Examples:
      | camion-estado | seguimiento-pedido | eta-recalculado | datos-trafico |
      | 'En ruta' | 'Seguimiento' | 'ETA dinámico' | 'Datos de tráfico en tiempo real' |