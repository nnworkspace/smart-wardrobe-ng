# Smart Wardrobe Angular 6

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 6.0.3.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.



## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).


## Docker Commands

### Build
```
docker build -t smart-wardrobe-ng:dev --build-arg conf=dev .
```

### Run
```
docker run -p 3000:80 smart-wardrobe-ng:dev  
```

### Miscellaneous
* list images: `docker images -a`
* stop/start: `docker stop <container-name>`, `docker start <container-name>`
* stop and remove the running container: `docker rm -f <container-name>`
* remove an image: `docker rmi`
* inspect a container: `docker run -it --rm smart-wardrobe-ng:dev ash`
* One liner to stop / remove all of Docker containers:
    ```
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
    ```
* reclaim disk space:
    ```
    docker container prune
    docker image prune
    docker network prune
    docker volume prune
    ```
