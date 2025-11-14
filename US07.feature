Feature: Adjuntar Documentos de Origen (US07)
  As a: Pequeño Productor
  I want: poder adjuntar fotos de las condiciones sanitarias al registrar un lote
  So that: doy más pruebas de mi proceso al comprador.
  
  Scenario Outline: Adjunto de archivos a una carga
    Given que estoy creando un <nueva-carga>
    When utilizo la <funcion-adjuntar> y subo una <imagen-condiciones>
    Then el sistema <almacena-imagen> y la <asocia-permanentemente> al ID de esa carga
    
    Examples:
      | nueva-carga | funcion-adjuntar | imagen-condiciones | almacena-imagen | asocia-permanentemente |
      | 'Nueva carga' | 'Adjuntar Archivos' | 'Imagen de condiciones sanitarias' | 'Almacena la imagen' | 'Asocia permanentemente' |