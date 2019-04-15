<?php

namespace MvcBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class BooksControllerControllerTest extends WebTestCase
{
    public function testList()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/bookslist');
    }

    public function testAddbook()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/addBook');
    }

    public function testDeletebook()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/deleteBook');
    }

    public function testShowonebook()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/showOneBook');
    }

    public function testEvaluate()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/evaluate');
    }

}
