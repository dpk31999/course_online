# STEP 1: SET UP ENVIRONMENT 
- INSTALL XAMPP WITH PHP VER 7.XX
- INSTALL COMPOSER IN https://getcomposer.org/download/
- AFTER INSTALL COMPOSER, OPEN YOUR TERMINAL `composer global require laravel/installer`
# STEP 2: INSTALL PROJECT
- CLONE PROJECT IN GITHUB
- OPEN IT IN VS CODE
- OPEN TERMINAL AND RUN `cp .env.example .env` , CHANGE YOUR INFO IN .ENV (DB_DATABASE,DB_USERNAME,DB_PASSWORD-
- Run `composer install` AND RUN `npm install`
- RUN `php artisan migrate`
- RUN `php artisan db:seed`
- RUN `php artisan key:generate`
- RUN `php artisan config:clear`
AND RUN `php artisan serve` and `npm run dev` TO ENJOY
