# goit_python_web_hw_13
GoIT, Python WEB, Homework number 12. FastAPI. PostgreSQL. Docker. REST API. ORM SQLAlchemy. Pydantic. Bootstraps CSS. Jinga. Alembic. OAuth2. JWT. Redis. Cloudinary. Limits

# Домашнє завдання №13
## Перша частина

У цьому домашньому завданні ми продовжуємо доопрацьовувати застосунок REST API із домашнього завдання 12.

### Завдання

1.1. Реалізуйте механізм верифікації електронної пошти зареєстрованого користувача;

1.2. Обмежуйте кількість запитів до своїх маршрутів контактів. Обов’язково обмежте швидкість - створення контактів для користувача;

1.3. Увімкніть CORS для свого REST API;

1.4. Реалізуйте можливість оновлення аватара користувача. Використовуйте сервіс Cloudinary;


#### Загальні вимоги

- Усі змінні середовища повинні зберігатися у файлі .env. Всередині коду не повинно бути конфіденційних даних у «чистому» вигляді;
- Для запуску всіх сервісів і баз даних у застосунку використовується Docker Compose;

#### Додаткове завдання

1.5. Реалізуйте механізм кешування за допомогою бази даних Redis. Виконайте кешування поточного користувача під час авторизації;

1.6. Реалізуйте механізм скидання пароля для застосунку REST API;

## Друга частина

У цьому домашньому завданні необхідно доопрацювати застосунок Django із домашнього завдання 10.

## Завдання

2.1. Реалізуйте механізм скидання пароля для зареєстрованого користувача;

2.2. Усі змінні середовища повинні зберігатися у файлі .env та використовуватися у файлі settings.py




# Результати виконання завдань

## Встановлення та запуск
### Підготувати зміні оточення .env
На основі прикладів у теці [doc\dot-env-example](doc\dot-env-example) створити файли з Вашими індивідуальними даними:
- .env  (визначає APP_ENV що визначає поточний робочий файл є prod, dev)
- .env-dev (Налаштування для dev)
- .env-prod (Налаштування для prod)
### Режим Docker prod
#### Docker app compose
Виконати скрипт:
```
cd .\scripts
docker_run_docker-compose.cmd
```
або
```
docker-compose --env-file .env-prod up -d 
```
![](doc/docker-app-02.png)
![](doc/docker-app-01.png)
![](doc/healthcheck-01.png)

#### Docker Hub url: https://hub.docker.com/r/lexxai/web_hw13

### Режим dev
#### Бази даних Docker compose
Виконати скрипт:
```
cd .\scripts
docker_run_db_compose.cmd
```
або
```
docker compose  --env-file .env-prod --file docker-compose-db.yml  up -d 
cd .\hw13
alembic upgrade head 
```

#### FastAPI server
Виконати скрипт:
```
cd .\scripts
runserver.cmd
```
або
```
cd .\hw13
uvicorn main:app --reload --port 9000
```
або
```
cd .\hw13
python .\main.py
```


### Відкрити сторінку браузера http://localhost:9000
![](doc/index-01.png)
FastAPI - Swagger UI
![](doc/index-02.png)
JavaScript easy client
![](doc/index-03.png)

## Етапи виконання 

## 1.1. Реалізуйте механізм верифікації електронної пошти зареєстрованого користувача

Реєстрація
![](doc/auth-emailconf-01.png)

Спроба зайти, без підтвердження пошти
![](doc/auth-emailconf-05.png)

Лист підтвердження
![](doc/auth-emailconf-02.png)

Підтвердження за клац на посилання з листа
![](doc/auth-emailconf-03.png)

Зміна у базі даних
![](doc/auth-emailconf-04.png)

Спроба зайти, після підтвердження пошти
![](doc/auth-emailconf-06.png)


## 1.2. 

### Обмежуйте кількість запитів до своїх маршрутів контактів. 
Postman 
![](doc/limit-contacts-01.png)

### Обмеження швидкісті - створення контактів для користувача
Postman 
![](doc/limit-create-02.png)

seed script
![](doc/limit-create-01.png)


## 1.3. CORS
CORS ORIGIN ALLOW http://localhost:3001
![](doc/cors-03.png)

CORS ORIGIN DENY FOR http://localhost:3002
![](doc/cors-01.png)

CORS ORIGIN DENY FOR http://localhost:3002
![](doc/cors-02.png)

CORS ORIGIN ALLOW http://localhost:3002
![](doc/cors-04.png)

CORS ORIGIN ALLOWED FOR http://localhost:3002
![](doc/cors-05.png)


## 1.4. Avatar Cloudinary
Default Gravatar link
![](doc/avatar-01.png)

Upload new avatar to Cloudinary
![](doc/avatar-02.png)

Download link of avatar from Cloudinary
![](doc/avatar-03.png)

Updated link of avatar from Cloudinary on user profile
![](doc/avatar-04.png)

## 1.5. Механізм кешування за допомогою бази даних Redis. Кешування поточного користувача під час авторизації.
![](doc/user-redis-01.png)



## 2. Django із домашнього завдання 10

Проєкт виконано за цим посиланням:

https://github.com/lexxai/goit_python_web_hw_10/tree/addon-hw13

(prepend) Django - https://github.com/lexxai/goit_python_web_django_lect_02_notes/tree/reset_password

