from flask import Flask, render_template
import time
import pymysql
pymysql.install_as_MySQLdb()
app = Flask(__name__)
time.sleep(10)
db = pymysql.connect(host="db",user="web",password="P@ssw0rd",database="hdxw",charset='utf8mb4')

cursor = db.cursor()
sql = "select * from news"
cursor.execute(sql)
results = cursor.fetchall()

list_title = []
list_url = []

for row in results:
    title = row[1]
    url = row[0]
    list_title.append(title)
    list_url.append(url)
cursor.close()
db.close()

@app.route('/')
def index():
    title = list_title
    url = list_url
    return render_template('index.html',
                           title = title,
                           url = url)
if __name__ == '__main__':
    app.run(host="0.0.0.0")
