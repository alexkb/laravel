For information about Laravel, see the original <a href="https://github.com/laravel/laravel/blob/master/README.md">README.md</a>.

### Project purpose

A quick starting point for running Laravel under Docker locally and on AWS. Note: this codebase is very much a WIP.

### Initial setup

1. Setup codebase

        $ composer create-project --prefer-dist alexkb/laravel-docker blog
    
2. Build and run application

        $ cd blog
        $ ./scripts/local/build.sh
        $ ./scripts/local/start.sh
    
3. Setup Laravel key

        $ ./scripts/local/workspace.sh
        $ php artisan key:generate

4. Now load up http://localhost:8083/ in a browser, and you should see the default Laravel home page.

### Todo

* Add in AWS CLI container with ability to push to ECS or Fargate.
* Document how to use with Bitbucket Pipelines
* Containers for scheduler and queue worker.
