import csv
from db import Connection

connect_db = Connection()
with open('jobs_csv/jobs.csv','r') as jobs:
    reader = csv.reader(jobs)
    for row in reader:
        connect_db.connect()
        if row[0].split(';')[0] != "User" and row[0].split(';')[1] != "Incarico":
            user_id = connect_db.get_user_id(row[0].split(';')[0])
            job_id = connect_db.get_job_id(row[0].split(';')[1])
            connect_db.insert_jobs(user_id, job_id)
