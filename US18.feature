Feature: Modo de Operación Sin Conexión (US18)
  As a: Conductor/Distribuidor
  I want: que la aplicación me permita registrar entregas y capturar firmas sin conexión
  So that: no pierdo información en zonas con baja cobertura.

  Scenario Outline: Sincronización de datos offline
    Given que estoy en una <zona-sin-red>
    When capturo la <firma-offline> y <finalizo-entrega>
    Then la aplicación <guarda-datos-localmente>
    And los <sincroniza-automaticamente> al restablecer la conexión
    
    Examples:
      | zona-sin-red | firma-offline | finalizo-entrega | guarda-datos-localmente | sincroniza-automaticamente |
      | 'Zona sin red' | 'Firma sin conexión' | 'Finaliza entrega' | 'Guarda datos localmente' | 'Sincroniza' |