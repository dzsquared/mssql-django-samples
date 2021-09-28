# Polls Sample

This sample follows the default Django example provided here: https://docs.djangoproject.com/en/3.2/intro/tutorial01/

## 🗒️ Some Notes
- mysite/manage.py is the CLI that you will interact with to control the Django project, often using [django-admin](https://docs.djangoproject.com/en/3.2/ref/django-admin/)
- the localhost is set as the database in `settings.py` through environment variables
```python
DATABASES = {
    'default': {
        'ENGINE': 'mssql',
        'NAME': os.environ['SQLDB'],
        'HOST': os.environ['SQLHOST'],
        'USER': os.environ['SQLUSER'],
        'PASSWORD': os.environ['SQLPASSWORD'],
        'OPTIONS': {
                'driver': 'ODBC Driver 17 for SQL Server',
                'connection_retries': 25,
        },
    }
}
```
- to start the app use `python manage.py runserver`, which uses port 8000 by default. If in Codespaces, use `python manage.py runserver 0.0.0.0:8000` to support the URL redirection.
- use `python manage.py createsuperuser` to create an admin superuser in the sample app