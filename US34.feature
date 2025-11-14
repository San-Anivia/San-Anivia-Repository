Feature: Recuperación de Contraseña Segura (US34)
  As a: Conductor/Distribuidor
  I want: poder cambiar mi contraseña de forma segura en caso de olvido
  So that: recupero el acceso sin ayuda del administrador.

  Scenario Outline: Restablecimiento de credenciales
    Given que he <olvidado-contrasena>
    When uso la <funcion-olvide> y sigo los <pasos-verificacion> por correo
    Then el sistema me permite <establecer-nueva-contrasena>
    And <accede-al-sistema>
    
    Examples:
      | olvidado-contrasena | funcion-olvide | pasos-verificacion | establecer-nueva-contrasena | accede-al-sistema |
      | 'Olvidado' | 'Olvidé mi contraseña' | 'Pasos de verificación' | 'Establecer nueva' | 'Accede' |
