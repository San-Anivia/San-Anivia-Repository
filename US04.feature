Feature: Registro de Salida de Producto Refrigerado (US04)
  As a: Conductor/Distribuidor
  I want: registrar la salida del producto refrigerado antes de iniciar la ruta
  So that: inicio oficialmente el monitoreo de la cadena de frío.
  
  Scenario Outline: Inicio del monitoreo de frío
    Given que he cargado mi camión
    When pulsa el <boton-monitoreo> en la aplicación
    Then el sistema <inicia-lectura> del sensor IoT del camión
    And <asocia-datos> a las cargas
    
    Examples:
      | boton-monitoreo | inicia-lectura | asocia-datos |
      | 'Iniciar Monitoreo' | 'Inicia lectura del sensor' | 'Asocia datos a las cargas' |