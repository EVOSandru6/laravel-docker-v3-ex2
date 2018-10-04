<?php

namespace App\Http\Controllers;

use LaravelDoctrine\ORM\Facades\EntityManager;

class TestController extends Controller
{
    public function index()
    {
        phpinfo();

        $task = new \App\Entities\Task('Make test app', 'Create the test application for the Sitepoint article.');

        EntityManager::persist($task);
        EntityManager::flush();

        return 'added!';
    }
}
