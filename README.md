**docker-compose-template** - шаблон docker для копирования файлов на хост

##Описание

Контейнер docker, клонирующий указанный репозиторий git и копирующий файлы в
директорию /tmp/code хост-машины.

##Использование

    docker-compose up -d --build
    docker-compose up -d
    ls /tmp/code/

Изменение параметров осуществляется в файле docker-compose.yml:

    args:
      - url: https://github.com/envrm/docker-compose-template
      - branch: test1

