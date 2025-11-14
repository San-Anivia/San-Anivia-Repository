Feature: Escaneo de QR por Cliente (US02)
  As a: Mayorista/Comprador,
  I want: escanear un código QR en el empaque del producto,
  So that: verifico su origen y el historial de temperatura antes de aceptarlo.
  
  Scenario Outline: Consulta de historial mediante QR
    Given que tengo la <aplicacion> y el <producto-fisico>
    When escanea el <codigo-qr> del empaque
    Then se muestra <fecha-salida>, <granja-origen> y la <grafica-frio> de la carga
    
    Examples:
      | aplicacion | producto-fisico | codigo-qr | fecha-salida | granja-origen | grafica-frio |
      | 'San Anivia' | 'Producto embalado' | 'Código válido' | 'Fecha de salida' | 'Granja asociada' | 'Gráfica de cadena de frío' |