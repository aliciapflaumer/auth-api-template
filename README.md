# Authentication API template

I am creating a starter template to include authentication to use for creating applications with a backend Rails API.

## API endpoints

| Verb   | URI Pattern         | Controller#Action |
|--------|---------------------|------------------ |
| GET    | `/users`            | `users#index`     |
| POST   | `/users/create`     | `users#create`    |
| POST   | `/users/signin`     | `users#show`      |
| PATCH  | `/update/:id`       | `users#update`    |
| DELETE | `/delete/:id`       | `users#destroy`   |

## Work in Progress

• Currently able to:
  • create a user
  • delete a user
