Feature: Gestión de Flota y Vehículos (US39)
  As a: Gerente de Logística (GL)
  I want: cargar un vehículo nuevo a la flota, asignarle un conductor y registrar su kilometraje inicial
  So that: inicio su monitoreo y trazabilidad en el sistema.

  Scenario Outline: Nuevo vehículo en el sistema
    Given que tengo <datos-nuevo-vehiculo>
    When los <ingreso-modulo-flota> y <asigna-conductor>
    Then el sistema crea un <nuevo-registro-vehiculo>
    And este aparece en el <mapa-flota>
    
    Examples:
      | datos-nuevo-vehiculo | ingreso-modulo-flota | asigna-conductor | nuevo-registro-vehiculo | mapa-flota |
      | 'Datos del vehículo' | 'Ingresa en Flota' | 'Asigna conductor' | 'Nuevo registro' | 'Mapa de flota' |