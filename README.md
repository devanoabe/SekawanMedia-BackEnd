## Setup

- clone

```
git clone https://github.com/devanoabe/SekawanMedia-BackEnd.git
```

- go to `.env` to setup your local environment

```
# copy
cp env .env

# activate and setup database, example:
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=sekawan(sesuaikan nama database)
DB_USERNAME=root
DB_PASSWORD=
```

- Install app dependencies

```
  # run composer
  composer install
```

- create a new `database` and migrate

```
 php artisan migrate
```

- run `dataBaseSeeder.php` for running all seeder

```
  # run php artisan db:seed --class=DatabaseSeeder
  ./seeder.sh
```

- run the application

```
# default
php artisan serve

# custom port
php -S localhost:8000 -t public/

```

- now you can login using these default accounts

```
  # [admin role]
  # username : admin@gmail.com and password: password
  # [penyetuju role]
  # username : bintang@gmail.com and password: password
```
