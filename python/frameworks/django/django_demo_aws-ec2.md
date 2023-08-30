# Django demo project on AWS EC2

## Development Environment for Python Projects (opinionated and productive)

- Managing different Python versions on the same machine with `pyenv` Python manager
- Configuring the virtual environment for the Python project
- Standardizing dependency management process with `Poetry`
- Defining consistent code formatting rules by means of `black`
- Organizing code style checking with `flake8`
- Executing static type checking with `mypy`
- Invoking the configured tools with `Make`

<details open>
<summary>Project structure overview</summary>
<br>
<code>tree -a -L 2 -I venv</code>

<pre>
django-ec2-demo/            <- (1) Project root with all project contents including the venv
.
├── apps                    <- (2) Project apps, templates, static, etc
│   ├── static
│   └── templates
├── config                  <- (3) Project settings, URLconf, etc
│   ├── asgi.py
│   ├── settings
│   │   ├── base.py
│   │   ├── local.py
│   │   ├── production.py
│   │   └── tests.py
│   ├── urls.py
│   └── wsgi.py
├── manage.py
├── .pre-commit-config.yaml
├── README.md
├── requirements
│   ├── base.txt
│   ├── local.txt
│   └── production.txt

</pre>
</details>

### Walkthrough notes

1. split requirements.txt into requirements/base + local + [tests] + production.txt
2. split settings into settings/base + local +  + [tests] + production.py >> update manage.py
3. separate environmental variables from code: django-environ (or other lib, e.g. `python-decouple`)
4. generate new random SECRET_KEY **before!** applying migrations
5. update code according to `manage.py check --deploy` recommendations
7. On EC2 add `.env` with DJANGO_DEBUG=True and Public IPv4 DNS in `ALLOWED_HOSTS`
8. Run Django dev server with 0.0.0.0:8000
9. Config Custom TCP inbound rule (in security group of EC2 instance) to allow visit running server only from your IP (while working on the project)
10. Access the development server over HTTP and/or configure HTTPS.
11. On production env install Gunicorn and nginx

    python /app/manage.py collectstatic --noinput
    exec /usr/local/bin/gunicorn config.wsgi --bind 0.0.0.0:5000
    gunicorn --workers 3 --bind 0.0.0.0:8000 helloworld.wsgi:application

#### Helpers

```shell
python3 -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'

gunicorn config.wsgi:application --bind 0.0.0.0:8000
```

#### Refs

- <https://vglushko.github.io/development/2022/12/22/python-dev-environment.html>
