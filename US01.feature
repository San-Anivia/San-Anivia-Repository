Feature: Registro de Carga y Origen (US01)
  As a: Pequeño Productor
  I want: registrar digitalmente la carga, la cantidad y la granja de origen en la app
  So that: garantizo la trazabilidad desde el primer eslabón de la cadena.
  
  Scenario Outline: Registro de una carga
    Given que he iniciado sesión como productor Y accede a la <seccion-carga>
    When ingreso los <datos-obligatorios> y pulso <boton-guardar>
    Then se crea un <registro-lote> con estado "En Granja"
    
    Examples:
      | seccion-carga | datos-obligatorios | boton-guardar | registro-lote |
      | 'Nuevo carga' | 'Cantidad, origen y fecha' | 'Guardar' | 'Registro de lote único' |
