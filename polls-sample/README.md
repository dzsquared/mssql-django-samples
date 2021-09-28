# Polls Sample

This sample follows the default Django example provided here: https://docs.djangoproject.com/en/3.2/intro/tutorial01/

## 🗒️ Some Notes
- mysite/manage.py is the CLI that you will interact with to control the Django project, often using [django-admin](https://docs.djangoproject.com/en/3.2/ref/django-admin/)
- the localhost is set as the database in `settings.py` through environment variables

```python
DATABASES = {
    'default': {
        'ENGINE': 'mssql',
        'NAME': 'SampleAppDB',
        'HOST': os.environ['sqlhost'],
        'USER': 'sqladmin',
        'PASSWORD': os.environ['sqlpassword'],
        'OPTIONS': {
                'driver': 'ODBC Driver 17 for SQL Server',
                'connection_retries': 25,
        },
    }
}
```
