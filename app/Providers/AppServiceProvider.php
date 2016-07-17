<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Device\Smartphone;
use App\Device\Cpu;
use App\Device\Display;
use App\Device\Camera;
use App\Device\Battery;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind('Smartphone', function($app) {
            return new Smartphone(new Cpu(), new Display(), new Camera(), new Battery());
        });
    }
}
