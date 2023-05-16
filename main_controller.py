from model import *
from views import views
from flask import Flask
import psycopg2


# connect to  database
connection = psycopg2.connect(database="health_insurance_hospitals",
                              user="postgres",
                              password="123456",
                              host="localhost",
                              port="5432")
connection.autocommit = True

cursor = connection.cursor()

# create flask app
app = Flask(__name__, template_folder='template')
app.register_blueprint(views, url_prefix='/')
app.config['SECRET_KEY'] = 'as4d6f54as6d'


if __name__ == '__main__':
    # run flask app
    app.run(debug=True)

    # for testing
    showAllTables()
    showRow()
