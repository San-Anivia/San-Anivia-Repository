Feature: Filtrar por Granjas Certificadas (US06)
  As a: Mayorista/Comprador
  I want: filtrar los productos disponibles solo de las granjas con certificados
  So that: aseguro la máxima calidad y cumplimiento normativo.
  
  Scenario Outline: Búsqueda filtrada por certificación
    Given que estoy en el <catalogo-pedidos>
    When activo el <filtro-certificacion>
    Then solo se muestran los <cargas-certificadas>
    
    Examples:
      | catalogo-pedidos | filtro-certificacion | cargas-certificadas |
      | 'Catálogo' | 'Granjas Certificadas SENASA' | 'Lotes con certificado vigente' |
