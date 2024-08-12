# Blog API

A simple blog API built with Ruby on Rails and PostgreSQL.

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/blog_api.git
   cd blog_api
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   ```

4. Start the server:
   ```bash
   rails s
   ```

## Endpoints

- `GET /posts` - List all posts
- `GET /posts/:id` - Show a single post
- `POST /posts` - Create a new post (requires authentication)

## Authentication

Use a token-based approach for authentication. Include the token in the `Authorization` header for requests to protected endpoints.
