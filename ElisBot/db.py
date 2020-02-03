import pymysql as mariadb
import pymysql.cursors



class Connection:
    connection=None
    #Tentativo di connessione al DB
    def connect(self):
        try:
            self.connection = mariadb.connect(user='root', password='', db='ElisBot', host='localhost',cursorclass=pymysql.cursors.DictCursor)
        except:
            print('Connection failed!')



    #Function used to find all info by sending the label
    def findByLabel(self,label):
       try:

            with self.connection.cursor() as cursor:
                queryForLabel = 'select * from Residence_DB where Sigla= %s'
                cursor.execute(queryForLabel,(label))
                result = cursor.fetchone()
               # print(result)

       finally:

                self.connection.close()

       return result

    #Function used to get all the labels from the database
    def getLabels(self):
        try:
            with self.connection.cursor() as cursor:
                queryForLabel = 'select Sigla from Residence_DB'
                cursor.execute(queryForLabel)
                result = cursor.fetchall()
                #print result
                filtered_result = []
                for label in result:
                    if label['Sigla'] != None and label['Sigla'].isdigit():

                        filtered_result += map(lambda lab:int(lab),label.values())

                #print(filtered_result)

        finally:
            self.connection.close()

        return filtered_result

    #Function used to get user's info by sending name o surname
    def getUserByNameOrSurname(self,name):
      try:
        with self.connection.cursor() as cursor:

            queryForUserInfo = 'select * from Residence_DB where concat(Nome, " " ,Cognome) like %s'
            cursor.execute(queryForUserInfo,("%" + name + "%"))
            result = cursor.fetchall()
            #print(result)
      finally:

                self.connection.close()

      return result



    #find users into specified room
    def getUsersFromRoom(self,room):
        try:

            with self.connection.cursor() as cursor:

                  queryForUserInfo = 'select Nome,Cognome,Capo_Stanza,Capo_Nucleo from Residence_DB where Stanza like %s'
                  cursor.execute(queryForUserInfo,(room + "%"))
                  result = cursor.fetchall()
                  #print(result)
        finally:
                self.connection.close()

        return result


    #find users by job
    def getUsersByJob(self,job):
        try:

            with self.connection.cursor() as cursor:

                  queryForUserInfo = 'select Residence_DB.Nome,Residence_DB.Cognome,Incarichi.Nome from Residence_DB  inner join Incaricato on Residence_DB.ID = Incaricato.ID_Residente  inner join Incarichi on Incaricato.ID_Incarico = Incarichi.ID where Incarichi.Nome like %s';
                  cursor.execute(queryForUserInfo,(job + "%"))
                  result = cursor.fetchall()
                  #print(result)
        finally:
                self.connection.close()

        return result

    #get all jobs
    def getJobs(self):
        try:

            with self.connection.cursor() as cursor:

                  queryForJobs = 'select * from Incarichi order by Incarichi.Nome ASC'
                  cursor.execute(queryForJobs)
                  result = cursor.fetchall()
                  #print(result)
        finally:
                self.connection.close()

        return result

    #get work round centralino
    def get_work_round(self,label):
        try:

            with self.connection.cursor() as cursor:

                  queryForJobs = """select R.Nome,R.Cognome,T.data from Residence_DB as R,Turno as T where R.Sigla=%s""
                  and R.Sigla=T.sigla"""
                  cursor.execute(queryForJobs,(label))
                  result = cursor.fetchall()
        finally:
                self.connection.close()

        return result

    def get_user_id(self, name):
        try:
            with self.connection.cursor() as cursor:
                queryForUserInfo = 'select ID from Residence_DB where concat(Cognome, " " ,Nome) like %s'
                cursor.execute(queryForUserInfo, ("%" + name + "%"))
                result = cursor.fetchone()
        except:
            self.connection.close()
        return result['ID']
        
    def get_job_id(self, job):
        try:
            with self.connection.cursor() as cursor:
                queryForUserInfo = 'select ID from Incarichi where Nome like %s'
                cursor.execute(queryForUserInfo, job.strip())
                result = cursor.fetchone()
        except:
            self.connection.close()
        return result['ID']
        
    def insert_jobs(self, user_id, jobs_id):
        try:
            with self.connection.cursor() as cursor:
                # Create a new record
                sql = "INSERT INTO `Incaricato` (`ID_Residente`, `ID_Incarico`) VALUES (%s, %s)"
                cursor.execute(sql, (user_id, jobs_id))
        
            # connection is not autocommit by default. So you must commit to save
            # your changes.
            self.connection.commit()
        except:
            self.connection.close()
        
