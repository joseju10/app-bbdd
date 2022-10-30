class Config:
    SECRET_KEY = 'B!1w8NAt1T^%kvhUI*S^'

class DevelopmentConfig(Config):
    DEBUG = True
    MYSQL_HOST = 'localhost'
    MYSQL_USER = 'joseju'
    MYSQL_PASSWORD = 'lolazo25'
    MYSQL_DB = 'flask_login'

config = {
    'development': DevelopmentConfig
}