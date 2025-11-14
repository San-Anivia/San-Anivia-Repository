Feature: Gestión de Roles de Usuario (US32)
  As a: Administrador del Sistema
  I want: poder asignar y modificar los roles de cualquier usuario (GL, Conductor, Mayorista)
  So that: controlo los permisos de acceso y la seguridad.

  Scenario Outline: Cambio de permisos de un usuario
    Given que estoy en el <modulo-usuarios>
    When selecciono a un <usuario-existente> y cambia su <nuevo-rol>
    Then el <usuario-final> solo tiene acceso a las <vistas-funciones> de gestión logística
    
    Examples:
      | modulo-usuarios | usuario-existente | nuevo-rol | usuario-final | vistas-funciones |
      | 'Módulo de Usuarios' | 'Usuario X' | 'Gerente de Logística' | 'Usuario X' | 'Vistas y funciones' |