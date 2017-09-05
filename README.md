Para poder iniciar el proyecto en dev:

    $ docker-compose run --rm web /bin/bash
    app# bundle install
    app# rake db:create && rake db:migrate
    app# exit 
    $ docker-compose up