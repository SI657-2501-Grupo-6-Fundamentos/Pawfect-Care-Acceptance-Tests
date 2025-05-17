Feature: Visualización de Perfiles de Mascotas
  Como usuario,
  Quiero visualizar los perfiles de mis mascotas
  Para revisar la información registrada

  Escenario: El usuario accede a la lista de sus mascotas
    Dado que el usuario ha iniciado sesión
    Cuando accede a la sección de “Mis Mascotas”
    Entonces el sistema debe mostrar una lista con los perfiles de sus mascotas registradas

  Escenario: El usuario visualiza los detalles de una mascota
    Dado que el usuario está en la lista de mascotas
    Cuando selecciona una mascota
    Entonces el sistema debe mostrar toda la información registrada sobre esa mascota (nombre, raza, historial clínico, etc.)