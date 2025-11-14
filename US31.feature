Feature: Auto-Registro de Pequeño Productor (US31)
  As a: Pequeño Productor
  I want: crear una cuenta de usuario de forma sencilla desde la aplicación móvil
  So that: empiezo a formalizar mis ventas rápidamente.

  Scenario Outline: Creación de cuenta exitosa
    Given que no tengo una cuenta
    When esté completo el <formulario-registro> y <valido-correo>
    Then el sistema crea mi perfil con <rol-productor>
    And <accede-funciones-basicas>
    
    Examples:
      | formulario-registro | valido-correo | rol-productor | accede-funciones-basicas |
      | 'Formulario de registro' | 'Valida correo' | 'Rol de "Pequeño Productor"' | 'Accede a funciones' |