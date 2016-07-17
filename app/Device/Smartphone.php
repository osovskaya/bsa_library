<?php

namespace App\Device;

class Smartphone {

    public $name;
    public $cpu;
    public $display;
    public $camera;
    public $battery;

    public function __construct(Cpu $cpu, Display $display, Camera $camera, Battery $battery)
    {
        $this->cpu = $cpu;
        $this->display = $display;
        $this->camera = $camera;
        $this->battery = $battery;
        $this->name = 'Lenovo P70';
    }
}
