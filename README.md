# Task Manager Web Application

Full stack task manager built with HTML, CSS, Vanilla JavaScript, Node.js, Express.js, and MySQL.

## Features

- User registration and login
- Password hashing with bcrypt
- JWT-based authentication
- Create, read, update, delete, and complete tasks
- Due dates and priority levels
- Task search and filter support
- Express Router and middleware-based API structure

## Project Structure

```text
task-manager/
client/
  index.html
  register.html
  dashboard.html
  task.html
  style.css
  script.js
  auth.js
  dashboard.js
  task.js
server/
  server.js
  config/db.js
  routes/authRoutes.js
  routes/taskRoutes.js
  controllers/authController.js
  controllers/taskController.js
  middleware/authMiddleware.js
schema.sql
package.json
```

## Local Setup

1. Install Node.js and MySQL if they are not already installed.
2. Create a `.env` file in the project root using `.env.example` as the template.
3. Install dependencies:

```bash
npm install
```

4. Start the application:

```bash
npm run dev
```

Or run it without nodemon:

```bash
npm start
```

5. Open the application in the browser:

```text
http://localhost:5000
```

## Database Connection

- The backend connects to MySQL through [server/config/db.js](server/config/db.js).
- On startup, the server now creates the configured database automatically if it does not exist.
- It also creates the `users` and `tasks` tables automatically, so running `schema.sql` is optional.
- `schema.sql` is still included if you want to create the database manually.

## API Endpoints

- `POST /api/register`
- `POST /api/login`
- `POST /api/logout`
- `GET /api/tasks`
- `GET /api/tasks/:id`
- `POST /api/tasks`
- `PUT /api/tasks/:id`
- `DELETE /api/tasks/:id`

## Notes

- The frontend is served directly by the Express server.
- The frontend is split into four pages: login, register, dashboard, and task details/edit.
- Logout is handled by clearing the stored JWT token on the client side.