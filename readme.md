# Pdracer Users-api

This is an API built with Ruby on Rails to serve as backend to the Pod Racer Application. 

## Arquitecture

* The service consist in four Active models. Three main (Pod, User, Events) and one joining (EventsUsers). 

* Sql Lite as Default Database.

### Relation: 

* Pods **have many** Users
* Users **belongs to**  and Pods **has many** EventsUsers / Events **through** EventsUsers
* Events **has many** EventsUsers / Users **through** EventsUsers

### API routes

* /api/ \<version> / \<model> / \<endpoint> . Example: https://localhost:3000/api/v2/users

#### Routes available:

* v1

```
      get '/users', to: 'users#index'
      get '/users', to: 'users#show'
      get '/user/random', to: 'users#setRandomUser'
      post '/users', to: 'users#destroy'
      post '/users', to: 'users#create'
```
* v2

```
      get '/users', to: 'users#index'
      get '/user/random', to: 'users#setRandomUser'
      get '/user/top', to: 'users#top'
      post '/users', to: 'users#create'
      post '/users/delete', to: 'users#destroy'
      get '/pods', to: 'pods#index'
      post '/pods', to: 'pods#create'
      post '/pods', to: 'pods#destroy'
      get '/events', to: 'events#index'
      post '/events', to: 'events#create'
      post '/events', to: 'events#destroy'
```

## Get started: 

1. Clone repo

```
git clone https://github.com/TSE-Coders/pd-users-api.git
```
2. cd into work directory 
```
cd pd-users-api
```
3. Install gems: 

```
bundler install
```
4. Migrate Databases: 
```
rails db:migrate
```
5. Include seed data (optional)
```
rails db:seed
```
6. Start the server
```
rails s
```
7. Confirm your server is running by hitting the User.all endpoint: 
```
localhost:3000/api/v2/users
```