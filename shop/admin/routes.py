from flask import render_template,session, request,redirect,url_for,flash
from shop import app,db,bcrypt
from shop.products.models import Addproduct,Category

@app.route('/admin')
def admin():
    products = Addproduct.query.all()
    return render_template('admin/index.html', title='Admin page',products=products)


@app.route('/categories')
def categories():
    categories = Category.query.order_by(Category.id.desc()).all()
    return render_template('admin/brand.html', title='categories',categories=categories)