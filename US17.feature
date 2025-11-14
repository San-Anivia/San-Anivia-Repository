Feature: Captura de Firma Digital (US17)
  As a: Conductor/Distribuidor
  I want: capturar la firma digital del receptor en mi dispositivo móvil
  So that: confirmo la entrega de forma legal y digital.

  Scenario Outline: Prueba de entrega exitosa
    Given que he llegado al <destino-final>
    When pulsa <boton-finalizar> y el <receptor-firma> en la pantalla
    Then el <documento-remision> se marca como "Entregado"
    And <firma-adjunta> como prueba
    
    Examples:
      | destino-final | boton-finalizar | receptor-firma | documento-remision | firma-adjunta |
      | 'Destino' | 'Finalizar Entrega' | 'Receptor firma' | 'Documento de remisión' | 'Firma adjunta' |