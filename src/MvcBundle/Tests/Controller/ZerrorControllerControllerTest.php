<?php

namespace MvcBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class ZerrorControllerControllerTest extends WebTestCase
{
    public function testError()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/{errorName}');
    }

    public function testErrsecond()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/{errorName}/{errsec}');
    }

}
