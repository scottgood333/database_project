from flask import Flask, Blueprint, render_template, request, redirect, url_for, flash

views = Blueprint('views', __name__)


@views.route('/', methods=['GET', 'POST'])
def search():
    if request.method == 'POST':
        city = request.form.get('city')
        region = request.form.get('region')

        print(f'city:{city}')
        print(f'region:{region}')

        from model import searchByCityRegion
        values = searchByCityRegion(city, region)
        for value in values:
            print(value[0])

    return render_template('test.html')
