import psycopg2
from main_controller import cursor


def searchByCityRegion(city, region):
    if (city and region):
        cursor.execute(
            f'SELECT hospital_name FROM TEMP_IMPORT WHERE region = \'{region}\' AND Hospital_address LIKE %(city)s', {
                'city': f'%{city}%'})
    elif (city):
        cursor.execute(
            f'SELECT hospital_name FROM TEMP_IMPORT WHERE Hospital_address LIKE %(city)s', {
                'city': f'%{city}%'})
    elif (region):
        cursor.execute(
            f'SELECT hospital_name FROM TEMP_IMPORT WHERE region = \'{region}\'')
    values = cursor.fetchall()
    return values


def insertData():
    pass


def deleteData():
    pass


# for debugging
def showAllTables():
    cursor.execute("""
        SELECT table_name 
        FROM information_schema.tables
        WHERE table_schema = 'public'      
        """)

    for table in cursor.fetchall():
        print(table)


# for debugging
def showRow():
    cursor.execute("""SELECT * FROM TEMP_IMPORT""")
    print(cursor.fetchone())


if __name__ == '__main__':
    pass
