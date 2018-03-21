import csv
from db import Connection

connect_db = Connection()
connect_db.connect()
with open('jobs_csv/jobs.csv','r') as jobs:
    reader = csv.reader(jobs)
    for row in reader:
        if row[0] != "Incaricato" and row[1] != "Incarico":
            user_id = connect_db.get_user_id(row[0])
            job_id = connect_db.get_job_id(row[1])
            connect_db.insert_user_jobs(user_id["ID"], job_id["ID"])
