# -*- coding: utf-8 -*-
from flask import Flask,jsonify
from db import Connection
from flask_cors import CORS


app = Flask(__name__)
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




if __name__ == "__main__":
    app.run()