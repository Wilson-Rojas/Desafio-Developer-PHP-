# Desafío DEVELOPER PHP - Wilson Rojas

Este proyecto contiene una API RESTful desarrollada con Laravel, que permite la gestión de estudiantes, cursos y sus respectivas inscripciones.



## Requisitos

- PHP >= 8.0
- Composer
- Laravel >= 9.x
- MySQL o base de datos compatible

## Instalación

1. **Clonar el repositorio:**
   ```bash
   git clone <url-del-repositorio>
   cd Desafio_1
   ```

2. **Instalar dependencias:**
   ```bash
   composer install
   ```

3. **Configurar el entorno:**
   ```bash
   cp .env.example .env
   ```
   Luego, edita el archivo `.env` para establecer tu configuración de base de datos.

4. **Generar clave de aplicación:**
   ```bash
   php artisan key:generate
   ```

5. **Ejecutar migraciones:**
   ```bash
   php artisan migrate
   ```

6. **(Opcional) Ejecutar seeders:**
   ```bash
   php artisan db:seed
   ```

7. **Iniciar el servidor:**
   ```bash
   php artisan serve
   ```
   El proyecto estará disponible en `http://localhost:8000`.

---

## Autenticación

Algunas rutas requieren autenticación mediante token (Bearer Token). Para obtenerlo:

### Registro

- **POST** `/api/auth/register`
- **Body:**
  ```json
  {
    "name": "Nombre",
    "email": "usuario@ejemplo.com",
    "password": "contraseña"
  }
  ```

### Login

- **POST** `/api/auth/login`
- **Body:**
  ```json
  {
    "email": "usuario@ejemplo.com",
    "password": "contraseña"
  }
  ```

---

## Endpoints de la API

### Estudiantes (`/api/students`)

| Método | Ruta                         | Autenticación | Descripción                    |
|--------|------------------------------|----------------|--------------------------------|
| GET    | `/api/students`              | Sí             | Listar todos los estudiantes  |
| POST   | `/api/students`              | Sí             | Crear un nuevo estudiante     |
| GET    | `/api/students/{id}`         | Sí             | Ver detalle de un estudiante  |
| PUT    | `/api/students/{id}`         | Sí             | Actualizar estudiante         |
| PATCH  | `/api/students/{id}`         | Sí             | Actualizar estudiante         |
| DELETE | `/api/students/{id}`         | Sí             | Eliminar estudiante           |

---

### Cursos (`/api/courses`)

| Método | Ruta                         | Autenticación | Descripción                    |
|--------|------------------------------|----------------|--------------------------------|
| GET    | `/api/courses`               | No             | Listar todos los cursos       |
| GET    | `/api/courses/{id}`          | No             | Ver detalle de un curso       |
| POST   | `/api/courses`               | Sí             | Crear un nuevo curso          |
| PUT    | `/api/courses/{id}`          | Sí             | Actualizar curso              |
| PATCH  | `/api/courses/{id}`          | Sí             | Actualizar curso              |
| DELETE | `/api/courses/{id}`          | Sí             | Eliminar curso                |

---

### Inscripciones (`/api/enrollments`)

| Método | Ruta                           | Autenticación | Descripción                          |
|--------|--------------------------------|----------------|--------------------------------------|
| GET    | `/api/enrollments`             | Sí             | Listar todas las inscripciones      |
| POST   | `/api/enrollments`             | Sí             | Inscribir un estudiante en un curso |
| DELETE | `/api/enrollments/{id}`        | Sí             | Eliminar una inscripción            |

#### Ejemplo de inscripción

```json
{
  "student_id": 1,
  "course_id": 2
}
```

#   D e s a f i o - D e v e l o p e r - P H P - 
 
 