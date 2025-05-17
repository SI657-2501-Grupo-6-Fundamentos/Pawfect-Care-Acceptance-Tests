Feature: US07: Búsqueda de Mascotas por el nombre del dueño y de la mascota
  Como médico veterinario,
  Quiero buscar mascotas por el nombre del dueño y de la mascota
  Para acceder rápidamente a su información en el sistema

  Escenario: El médico veterinario busca una mascota por nombre del dueño y nombre de la mascota válidos
    Dado que el médico veterinario está en la sección de gestión de mascotas
    Cuando ingresa el nombre del dueño y el nombre de la mascota en el campo de búsqueda
    Entonces el sistema debe mostrar el perfil correspondiente a la combinación de esos datos

  Escenario: El médico veterinario ingresa un nombre de dueño o mascota inexistente
    Dado que el médico veterinario intenta buscar una mascota
    Cuando ingresa un nombre de dueño y/o nombre de mascota que no están registrados
    Entonces el sistema debe mostrar un mensaje indicando que no se encontró ninguna mascota con esos datos

  Escenario: El médico veterinario deja uno o ambos campos vacíos
    Dado que el médico veterinario se encuentra en la sección de búsqueda de mascotas
    Cuando deja el campo del nombre del dueño, el nombre de la mascota, o ambos vacíos
    Entonces el sistema debe mostrar un mensaje de validación indicando que ambos campos son obligatorios para realizar la búsqueda