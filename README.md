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

- open terminal for make storage:link

```
  # run php artisan storage:link
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
## Welcome Page
- Navbar Login & Banner
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/home.png)

## Login
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/Log.png)

## Admin
- Dashboard
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/dashboard.png)

- Tambah Mobil
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/tambah%20mobil.png)

- LIst Mobil
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/list%20mobil.png)

- Tambah Driver
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/tambah%20sopir.png)

- List Driver
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/list%20sopit.png)

- Tambah Penyetuju
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/tambah%20penyetuju.png)

- List Penyetuju
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/List%20Penyetuju.png)

- Tambah Pemesanan
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/Tambah%20Pemesanan.png)

- List Pemesanan
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/List%20Pemesanan.png)

## Penyetuju
- Halaman Konfirmasi
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/Penyetuju.png)

## Excel
- Halaman Admin
![alt text](https://github.com/devanoabe/SekawanMedia-BackEnd/blob/master/foto/download%20excel.png)

