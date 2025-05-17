Feature: US08: Gestión de Perfiles de Mascotas
  Como dueño de mascota,
  Quiero gestionar y poder eliminar los perfiles de mis mascotas
  Para asegurarme de que la información esté correctamente registrada y actualizada

  Escenario: El dueño edita un perfil de mascota
    Dado que el dueño está gestionando perfiles de mascotas
    Cuando selecciona un <perfil de mascota> y actualiza la información
    Entonces el sistema debe permitir guardar los cambios y mostrar una "<confirmación>" de éxito

  Examples:
    | nombre_mascota | campo_actualizado | nuevo_valor        |
    | Rocky          | nombre            | Rocky Junior       |
    | Luna           | raza              | Golden Retriever   |
    | Max            | historial clínico | Vacunación al día  |

  Escenario: El dueño elimina un perfil de mascota
    Dado que el dueño está en la <lista de mascotas>
    Cuando selecciona la opción de "eliminar" en un perfil
    Entonces el sistema debe solicitar "<confirmación>" y, al aceptarse, eliminar permanentemente el perfil y sus datos

  Examples:
    | mascota_id | nombre_mascota | confirmación | acción realizada |
    | 1          | Rocky          | Sí           | Eliminado        |
    | 2          | Luna           | No           | No eliminado     |
    | 3          | Max            | Sí           | Eliminado        |