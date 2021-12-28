# Symfony Authentication

Reproducer https://github.com/symfony/symfony/issues/44806

## How to reproduce:
- git clone https://github.com/darthf1/symfony-authentication.git
- cd symfony-authentication
- git checkout reproducer/5.3
- docker build . -t bug-5.3
- docker run bug-5.3 bin/phpunit

### Output
```
OK (1 test, 1 assertion)
```