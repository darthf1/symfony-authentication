# Symfony Authentication

Reproducer https://github.com/symfony/symfony/issues/44806

## How to reproduce:
- checkout repo
- docker build . -t bug-5.4
- docker run bug-5.4 bin/phpunit

### Output
```
There was 1 failure:

1) App\Tests\LoginTest::testLogin
Failed asserting that the Response is successful.
HTTP/1.1 401 Unauthorized
Cache-Control:    no-cache, private
Content-Type:     application/json
Date:             Tue, 28 Dec 2021 16:34:43 GMT
Link:             <http://example.com/api/docs.jsonld>; rel="http://www.w3.org/ns/hydra/core#apiDocumentation"
Www-Authenticate: Bearer
X-Robots-Tag:     noindex

{"code":401,"message":"Invalid or expired login link."}

/home/www/app/vendor/api-platform/core/src/Bridge/Symfony/Bundle/Test/BrowserKitAssertionsTrait.php:33
/home/www/app/tests/LoginTest.php:21

```