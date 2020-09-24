For information about Laravel, see the original <a href="https://github.com/laravel/laravel/blob/master/README.md">README.md</a>.

### Project purpose

A base for running Laravel under Docker locally and on AWS. Note: this codebase is very much a WIP.

### Initial setup

1. Use composer's create-project command to create a new project in a folder _blog_:

        $ composer create-project --prefer-dist alexkb/laravel-docker:dev-master blog 
    
2. Build and run application

        $ cd blog
        $ ./scripts/local/build.sh
        $ ./scripts/local/start.sh

3. Now load up http://localhost:8083/ in a browser, and you should see the default Laravel home page.

### Todo

* Add in AWS CLI container with ability to push to ECS or Fargate.
* Document how to use with Bitbucket Pipelines
* Containers for scheduler and queue worker.

### Why don't you use laraadock?

[Laradock](https://laradock.io/) is a very good package at covering all use cases for Laravel with Docker. This project has a different use case, which is to provide the bare minimum as a start point, as well as being easier to deploy to an online environment.
