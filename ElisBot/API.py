# -*- coding: utf-8 -*-
from flask import Flask,jsonify
from db import Connection
from flask_cors import CORS
from flask.json import JSONEncoder
from datetime import date


class CustomJSONEncoder(JSONEncoder):

    def default(self, obj):
        try:
            if isinstance(obj, date):
                return obj.strftime('%d of %B %Y')
            iterable = iter(obj)
        except TypeError:
            pass
        else:
            return list(iterable)
        return JSONEncoder.default(self, obj)

app = Flask(__name__)
app.config['JSON_AS_ASCII'] = False
app.json_encoder = CustomJSONEncoder
CORS(app)
connect_db = Connection()


@app.route("/findByLabel/<int:label>",methods=['GET'])
def findByLabel(label):
    #Connect with MariaDB
    connect_db.connect()
    return jsonify(connect_db.findByLabel(label))


@app.route("/getLabels/",methods=['GET'])
def getLabels():

    connect_db.connect()
    return jsonify(connect_db.getLabels())

@app.route("/getInfoByNameSurname/<name>",methods=['GET'])
def getUserInfoByNameSurname(name):

    connect_db.connect()
    return jsonify(connect_db.getUserByNameOrSurname(name))


@app.route("/getUsersFromRoom/<room>",methods=['GET'])
def getUsersFromRoom(room):

    connect_db.connect()
    return jsonify(connect_db.getUsersFromRoom(room))


@app.route("/getUsersByJob/<job>",methods=['GET'])
def getUsersByJob(job):

    connect_db.connect()
    return jsonify(connect_db.getUsersByJob(job))


@app.route("/getJobs/",methods=['GET'])
def getJobs():

    connect_db.connect()
    return jsonify(connect_db.getJobs())


@app.route("/turno/<label>",methods=['GET'])
def get_work_round(label):
    
    connect_db.connect()
    return jsonify(connect_db.get_work_round(label))
    

if __name__ == "__main__":
    app.run(port=5500)
