<?php

namespace MvcBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class PhonesControllerTest extends WebTestCase
{
    public function testListphones()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/listPhones');
    }

    public function testAddphone()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/addPhone');
    }

    public function testShowonephone()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/showOnePhone');
    }

    public function testDeletephone()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/deletePhone');
    }

}
