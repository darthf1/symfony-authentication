<?php

namespace App\Tests;

use ApiPlatform\Core\Bridge\Symfony\Bundle\Test\ApiTestCase;

class LoginTest extends ApiTestCase
{
    public function testLogin(): void
    {
        self::bootKernel();

        $client = self::createClient();
        $client->request('POST', '/v1/login', [
            'json' => [
                'username' => 'user',
                'password' => 'password',
            ],
        ]);

        self::assertResponseIsSuccessful();
    }
}