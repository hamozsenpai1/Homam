from flask import Flask, request, jsonify,render_template,abort
from flask_mysqldb import MySQL
import flask
import random
import json
from datetime import date, datetime
from flask_ngrok import run_with_ngrok

app = Flask(__name__)
mysql = MySQL(app)

app.config['JSON_SORT_KEYS'] = False
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'senior'


# This for return json with table name from db
def query_db(query, args=(), one=False):
    cur = mysql.connection.cursor()
    cur.execute(query, args)
    r = [dict((cur.description[i][0], value) \
               for i, value in enumerate(row)) for row in cur.fetchall()]
    return (r[0] if r else None) if one else r

#for getting the question 
@app.route('/question',methods=['GET'])
def Question():
    grade=""
    rv=""
    id=request.args.get('id')
    cursor=mysql.connection.cursor()
    cursor.execute("SELECT `LEVEL` FROM users WHERE `user_id`=%s ;",[id])
    id_level=cursor.fetchall()
    print(id_level)
    if request.method=='GET':
        rv = query_db('''SELECT * FROM `questions` WHERE `category` = "software" AND `Level`='%s';''',[id_level[0][0]])
        n=12
        rv=random.sample(rv, n)

        rv1=query_db('''SELECT * FROM `questions` where `category` ="AI" AND `Level`='%s';''',[id_level[0][0]])
        n=6
        rv1=random.sample(rv1,n)

        rv2=query_db('''SELECT * FROM `questions` where `category` ="network" AND `Level`='%s';''',[id_level[0][0]])
        rv2=random.sample(rv2,n)

        rv+=rv1
        rv+=rv2
        return jsonify(rv)
    
# The knwloged system
@app.route('/kbs',methods=['GET'])
def kbs():
    rv=""
    id=request.args.get('id')
    cursor=mysql.connection.cursor()
    cursor.execute("SELECT `swe_score` FROM users WHERE `user_id`=%s ;",[id])
    rv=cursor.fetchall()
    if rv[0][0]<=6:
        cursor=mysql.connection.cursor()
        sw=query_db('''SELECT `course_name` FROM courses WHERE category='software';''')
        n=1
        sw=random.sample(sw,n)
        dump=sw[0]
        print(dump['course_name'])
        cursor.execute('select `course_id` FROM `courses` WHERE course_name = %s',[dump['course_name']])
        dump_id=cursor.fetchall()
        cursor.execute("INSERT INTO `recomendation`(`user_id`, `course_id`) VALUES (%s,%s)",[id,dump_id[0][0]])
        mysql.connection.commit()
    cursor=mysql.connection.cursor()
    cursor.execute("SELECT `ai_score` FROM users WHERE `user_id`=%s ;",[id])
    rv=cursor.fetchall()
    if rv[0][0]<=3:
        cursor=mysql.connection.cursor()
        AI=query_db('''SELECT `course_name` FROM courses WHERE category='AI';''')
        n=1
        AI=random.sample(AI,n)
        dump=AI[0]
        print(dump['course_name'])
        cursor.execute('select `course_id` FROM `courses` WHERE course_name = %s',[dump['course_name']])
        dump_id=cursor.fetchall()
        cursor.execute("INSERT INTO `recomendation`(`user_id`, `course_id`) VALUES (%s,%s)",[id,dump_id[0][0]])
        mysql.connection.commit()
    cursor=mysql.connection.cursor()
    cursor.execute("SELECT `networks_score` FROM users WHERE `user_id`=%s ;",[id])
    rv=cursor.fetchall()   
    if rv[0][0]<=3:
        cursor=mysql.connection.cursor()
        network=query_db('''SELECT `course_name` FROM courses WHERE category='network';''')
        n=1
        network=random.sample(network,n) 
        cursor=mysql.connection.cursor()
        dump=network[0]
        print(dump['course_name'])
        cursor.execute('SELECT `course_id` FROM `courses` WHERE `course_name` = %s',[dump['course_name']])
        dump_id=cursor.fetchall()
        cursor.execute("INSERT INTO `recomendation`(`user_id`, `course_id`) VALUES (%s,%s)",[id,dump_id[0][0]])
        mysql.connection.commit()


    recomandtion=sw+AI+network
    return jsonify(recomandtion)

#the get the score after the test 
@app.route('/get_score',methods=['POST'])
def Scores():
    rv=request.json
    print(rv)
    id = request.args.get('id')
    AI_score=0
    Swe_score=0
    Network=0
    for z in rv :
        cursor=mysql.connection.cursor()
        ans=z['id']
        cursor.execute("SELECT `Answer_index` FROM questions WHERE `Question_id` = %s;",[ans]) #need change
        ans=cursor.fetchall()
        dump=z['index']
        if dump==ans[0][0]:
            cursor=mysql.connection.cursor()
            cursor.execute("SELECT `category` FROM questions WHERE `Question_id`= %s;",[z['id']])
            cat=cursor.fetchall()
            if cat[0][0] == "AI":
                AI_score+=1
            elif cat[0][0]=="software":
                Swe_score+=1
            else:
                Network+=1
        cursor=mysql.connection.cursor()
        cursor.execute("UPDATE `users` SET `ai_score`=%s,`swe_score`=%s,`networks_score`=%s WHERE `user_id`=%s ",[AI_score,Swe_score,Network,id])
        mysql.connection.commit()
        cursor.close
        final_score=Swe_score+Network+AI_score
        if(final_score>15):
            cursor.execute("UPDATE `users` SET `Level`='3' WHERE `user_id` = %s",[id])
            mysql.connection.commit()
            cursor.close
        elif(final_score>10):
            cursor.execute("UPDATE `users` SET `Level`='2' WHERE `user_id` = %s",[id])
            mysql.connection.commit()
            cursor.close
    return jsonify({"Your score":final_score})


@app.route('/login',methods=['POST','GET'])
def login():
    if request.method=='POST':
        rv=request.get_json()

        # try:  
        map=rv
        username=map['username']
        password=map['password']
        
        cursor=mysql.connection.cursor()
        cursor.execute('select * from users where user_name = %s AND password = %s',[username,password])
        accoute= cursor.fetchall()

        if accoute:
            id=query_db('select * from users where user_name = %s AND password = %s',[username,password])
            # id=cursor.fetchall()

            return jsonify (id[0])
        else:

            response = jsonify({'message': 'You are nssssssssot authorized to access'})
            response.status_code=403
            return response


@app.route('/register',methods=['POST','GET'])
def register():
    if request.method=='POST':
        rv=request.json
        map=rv[0]
        username=map['username']
        passward=map['passward']
        Email=map['Email']
        name=map['passward']
        specialty=map['username']
        phonenumber=map['passward']
        print(phonenumber)
        cursor=mysql.connection.cursor()
        cursor.execute('''INSERT INTO users VALUES(%s,%s,%s,%s,%s,%s,"","","","","","")''',[username,passward,Email,name,specialty,phonenumber])
        mysql.connection.commit()
        cursor.close()
        id=query_db('select * from users where user_name = %s AND password = %s',[username,passward])
        return jsonify({"data":id})
    else:
        car="donky"
        return car


if __name__ == '__main__':
    app.run(debug=True)
    app = Flask(__name__)
    mysql = MySQL(app)
    # run_with_ngrok(app)
