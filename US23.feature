Feature: Notificación de Falla Crítica (US23)
  As a: Gerente de Logística (GL)
  I want: recibir una notificación crítica si la temperatura de un lote supera el umbral por más de 10 minutos
  So that: inicio un plan de contingencia.

  Scenario Outline: Alerta de pérdida de lote inminente
    Given que el sensor de un camión <reporta-temperatura> por <tiempo-duracion>
    When el sistema detecta esta <violacion-umbral>
    Then el sistema envía una <alerta-prioridad> a Logística y al Conductor
    And registra el <evento-critico>
    
    Examples:
      | reporta-temperatura | tiempo-duracion | violacion-umbral | alerta-prioridad | evento-critico |
      | '5°C' | '15 minutos' | 'Violación de umbral' | 'Alerta de alta prioridad' | 'Registra evento' |