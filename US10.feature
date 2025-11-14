Feature: Monitoreo Predictivo de Fallas en Refrigeración (US10)
  As a: Gerente de Logística (GL)
  I want: que el sistema analice los datos históricos de los sensores para predecir posibles fallas en los equipos de refrigeración
  So that: programo mantenimiento preventivo y evito pérdidas de producto.
  
  Scenario Outline: Detección anticipada de falla
    Given que los <sensores-registran> fluctuaciones anormales de temperatura o consumo eléctrico
    When el sistema <detecta-patron> que indica riesgo de falla
    Then genera una <alerta-preventiva> al área de mantenimiento con la <unidad-afectada> y la <causa-estimada>
    
    Examples:
      | sensores-registran | detecta-patron | alerta-preventiva | unidad-afectada | causa-estimada |
      | 'Fluctuaciones anormales' | 'Detecta patrón de riesgo' | 'Alerta preventiva' | 'Unidad C-02' | 'Falla de compresor' |
