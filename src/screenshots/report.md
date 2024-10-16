### Part 1. Настройка **gitlab-runner**

Поднять виртуальную машину Ubuntu Server 22.04 LTS

Скачать и установить на виртуальную машину gitlab-runner

    curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash

    sudo apt-get install gitlab-runner

Запусти gitlab-runner и зарегистрировать его для использования в текущем проекте

Для регистрации понадобятся URL и токен, которые можно получить на страничке задания на платформе.

![alt text](image-2.png)


### Part 2. Сборка

Написать этап для **CI** по сборке приложений из проекта *C3_SimpleBashUtils*.

В файле _gitlab-ci.yml_ добавить этап запуска сборки через мейк файл из проекта _C3_.

Файлы, полученные после сборки (артефакты), сохранить в произвольную директорию со сроком хранения 30 дней.

![alt text](image-1.png)

![alt text](image.png)

### Part 3. Тест кодстайла
Написать этап для **CI**, который запускает скрипт кодстайла (*clang-format*)

![alt text](image-3.png)

![alt text](image-4.png)

![alt text](image-5.png)

Добавим ошибки по кодстайлу

![alt text](image-6.png)

![alt text](image-7.png)

### Part 4. Интеграционные тесты

Написать этап для **CI**, который запускает твои интеграционные тесты из того же проекта.

Запустить этот этап автоматически только при условии, если сборка и тест кодстайла прошли успешно.

![alt text](image-8.png)

![alt text](image-9.png)

### Part 5. Этап деплоя

Поднять вторую виртуальную машину *Ubuntu Server 22.04 LTS*.

![alt text](image-11.png)

![alt text](image-10.png)

![alt text](image-12.png)

![alt text](image-14.png)

![alt text](image-13.png)

![alt text](image-15.png)

![alt text](image-16.png)

### Part 6. Дополнительно. Уведомления

Настроить уведомления о успешном/неуспешном выполнении пайплайна через бота с именем «bharbode DO6 CI/CD» в *Telegram*.

Напишем @botfather, чтобы создать бота и получить его токен:

![alt text](image-17.png)

![alt text](image-18.png)

Добавим в конце каждого этапа такой кусок скрипта

![alt text](image-19.png)

Скрипт

![alt text](image-20.png)

![alt text](image-21.png)