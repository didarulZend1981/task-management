######project run

Run composer install or php composer.phar install or composer update
Run php artisan key:generate
Run php artisan migrate
Run php artisan serve
#####You can now access your project at localhost:8000 :)
import sql file
######=======

  user email:didarul1981@gmail.com
   pass:12345678

  Install: Sanctum  & Breeze packege.

#####web & API:
    Route::middleware('auth:sanctum')->group(function () {
    Route::get('/tasks', [TaskController::class, 'index']);
    Route::get('/tasks/{task}', [TaskController::class, 'show'])
    Route::post('/tasks', [TaskController::class, 'store']);
    Route::put('/tasks/{task}', [TaskController::class, 'update']);
    Route::delete('/tasks/{task}', [TaskController::class, 'destroy']);
   });
