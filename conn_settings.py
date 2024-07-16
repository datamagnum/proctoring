import os
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# MySQL Configuration
MYSQL_HOST = os.getenv("MYSQL_HOST")
MYSQL_USER = os.getenv("MYSQL_USER")
MYSQL_PORT = os.getenv("MYSQL_PORT")
MYSQL_PASSWORD = os.getenv("MYSQL_PASSWORD")
MYSQL_DB = os.getenv("MYSQL_DB")
MYSQL_CURSORCLASS = os.getenv("MYSQL_CURSORCLASS")

# AWS S3 Configuration
S3_BUCKET = os.getenv("S3_BUCKET")
S3_KEY = os.getenv("S3_KEY")
S3_SECRET = os.getenv("S3_SECRET")
S3_LOCATION = os.getenv("S3_LOCATION")
S3_REGION = os.getenv("S3_REGION")

# Mail Configuration
MAIL_SERVER = os.getenv("MAIL_SERVER")
MAIL_PORT = os.getenv("MAIL_PORT")
MAIL_USERNAME = os.getenv("MAIL_USERNAME")
MAIL_PASSWORD = os.getenv("MAIL_PASSWORD")
MAIL_USE_TLS = os.getenv("MAIL_USE_TLS")
MAIL_USE_SSL = os.getenv("MAIL_USE_SSL")

# Other configurations
SESSION_COOKIE_SAMESITE = os.getenv("SESSION_COOKIE_SAMESITE")
SESSION_TYPE = os.getenv("SESSION_TYPE")
TEMPLATES_AUTO_RELOAD = os.getenv("TEMPLATES_AUTO_RELOAD")
UPLOAD_FOLDER = os.getenv("UPLOAD_FOLDER")
CSV_ALLOWED_EXTENSIONS = set(os.getenv("CSV_ALLOWED_EXTENSIONS", "").split(","))
PHOTO_ALLOWED_EXTENSIONS = set(os.getenv("PHOTO_ALLOWED_EXTENSIONS", "").split(","))