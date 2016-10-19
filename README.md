**docker-compose-template** - шаблон docker для копирования файлов на хост

##Описание

Контейнер docker, клонирующий указанный репозиторий git и копирующий файлы в
директорию /tmp/code хост-машины.

##Использование

   docker-compose up -d --build
   ls /tmp/code/

