Feature: US04: Creación de Perfil de Mascota
  Como usuario,
  Quiero crear un perfil de mi mascota
  Para tener su información almacenada en la plataforma

  Escenario: El usuario crea un perfil para su mascota
    Dado que el usuario está en la página de creación de perfil de mascota
    Cuando ingresa toda la información requerida (nombre de la mascota, fecha de nacimiento, raza, género, historial clínico)
    Entonces el sistema debe permitir la creación del perfil
    Y mostrar un mensaje de confirmación de éxito

  Escenario: El usuario deja campos obligatorios sin llenar
    Dado que el usuario está intentando crear el perfil de una mascota
    Cuando deja uno o más campos obligatorios vacíos
    Entonces el sistema debe mostrar un mensaje de error indicando que debe completar todos los campos requeridos antes de crear el perfil

  Escenario: El usuario introduce un nombre de mascota duplicado
    Dado que el usuario está creando un perfil de mascota
    Cuando ingresa un nombre de mascota que ya existe en su cuenta
    Entonces el sistema debe mostrar una advertencia solicitando al usuario que elija un nombre único
    O que diferencie entre mascotas con nombres similares