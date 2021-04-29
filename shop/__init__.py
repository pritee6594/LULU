import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
from flask_uploads import UploadSet, configure_uploads, IMAGES, patch_request_class
from flask_login import LoginManager
from flask_msearch import Search
from flask_mysqldb import MySQL


app = Flask(__name__)

# Databases Connection....

app.config["SQLALCHEMY_DATABASE_URI"] ='postgresql://kvagxribnpevli:bb66161683f5efe70890b73f8130b16e24051276d21854560cbba73f28dc6887@ec2-54-155-35-88.eu-west-1.compute.amazonaws.com:5432/d4cj3acirfjfqv'
app.config['SECRET_KEY']='lulu/MyEcomSite'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
basedir = os.path.abspath(os.path.dirname(__file__))

db = SQLAlchemy(app)

mysql = MySQL(app)

# For images....

app.config['UPLOADED_PHOTOS_DEST'] = os.path.join(basedir, 'static/images')

photos = UploadSet('photos', IMAGES)
configure_uploads(app, photos)
patch_request_class(app)

bcrypt = Bcrypt(app)
search = Search()







login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view='customerLogin'
login_manager.needs_refresh_message_category='danger'
login_manager.login_message = u"Please login first"



# When App will run, it will check these routes first...

from shop.products import routes
from shop.admin import routes
from shop.carts import carts
from shop.customers import routes
