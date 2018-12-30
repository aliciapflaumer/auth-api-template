# Authentication API template

## Work in Progress

I am building a starter template to include authentication to use for creating applications with a backend Rails API.

## API endpoints

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|------------------ |
| GET    | `/users`               | `users#index`     |
| GET    | `/users/:id`           | `users#show`      |

| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |
