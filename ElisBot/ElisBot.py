# -*- coding: utf-8 -*-
import telepot,time,requests,urllib3,telepot.api,emoji
from telepot.namedtuple import KeyboardButton, ReplyKeyboardMarkup,ReplyKeyboardRemove
from config import Config
from pprint import pprint

def buildKeyboard():
    global port
    buttons = []
    getJobs = requests.get('http://0.0.0.0:{}/getJobs/'.format(str(port)))
    jobs = getJobs.json()
    for job in jobs:
        buttons.append([KeyboardButton(text = job['Nome'])])

    reply_markup = ReplyKeyboardMarkup(keyboard=buttons,resize_keyboard=True,one_time_keyboard=True,selective=True)

    return reply_markup

def getJobs():
    global port
    try:
        request = requests.get('http://0.0.0.0:{}/getJobs/'.format(str(port)))
    except requests.exceptions.ConnectionError:
        pprint("Problem with Internet connection!")

    return request.json()

def findByLabel(label):
        global port
        try:
          request = requests.get('http://0.0.0.0:{0}/findByLabel/{1}'.format(str(port),str(label)))
          #print request.text
        except requests.exceptions.ConnectionError:
          pprint("Problem with Internet Connection!")

        return request.json()

def getLabels():
    global port
    try:
        request = requests.get('http://0.0.0.0:{}/getLabels/'.format(str(port)))
    except requests.exceptions.ConnectionError:
        pprint("Problem with Internet connection!")

    return request.json()

def getUserByNameSurname(name):
     global port
     try:
            request = requests.get('http://0.0.0.0:{0}/getInfoByNameSurname/{1}'.format(str(port),name))
     except requests.exceptions.ConnectionError:
            pprint("Problem with Internet connection!")

     return request.json()


def getUsersFromRoom(room):
    global port
    try:
        request = requests.get('http://0.0.0.0:{0}/getUsersFromRoom/{1}'.format(str(port),room))
    except requests.execptions.ConnectionError:
        pprint("Problem with Internet connection!")

    return request.json()



def getUsersByJob(job):
    global port
    try:
        request = requests.get('http://0.0.0.0:{0}/getUsersByJob/{1}'.format(str(port),job))
    except requests.execptions.ConnectionError:
        pprint("Problem with Internet connection!")

    return request.json()
    
def getWorkRound(label):
    global port
    try:
        request = requests.get('http://0.0.0.0:{0}/turno/{1}'.format(str(port),str(label)))
    except requests.execptions.ConnectionError:
        pprint("Problem with Internet connection!")

    return request.json()


def checkInputLabel(command):
  if command.isdigit():
    return int(command)
  else:
    return False



def handle(msg):
    command = msg['text']
    chat_id = msg['chat']['id']
    global inLabel,inName,inRoom,inJob,inWorkRound,user_states
    pprint("Got command : %s" % command)
    #Start commands
    if command.lower() == "/start":
        bot.sendMessage(chat_id,"Welcome to the Elis bot! \n You can use : \n /findbyname to look for a user by his name \n /findbylabel to look for a user by his label (sigla) \n /findbyroom to look for users into a room \n /findbyjob to look for users by their job")
        user_states[chat_id] = [inLabel,inName,inRoom,inJob,inWorkRound]
    elif chat_id in user_states.keys():

        if command.lower() == "/findbylabel":
            user_states[chat_id][0] = True
            bot.sendMessage(chat_id,"Inviami la sigla da cercare")

        elif user_states[chat_id][0]:
            command = checkInputLabel(command)
            if command:
                labels = getLabels()

                if command in labels:

                    response = findByLabel(command)
                    nome = response['Nome']
                    cognome = response['Cognome']
                    stanza = response['Stanza']
                    corso = response['Corso']
                    cell = response['Num_tel']
                    email = response['E_mail_1_Value']
                    data = emoji.emojize(":boy: "+ nome + " " + cognome + "\n" + ":envelope: " + email + "\n" + ":telephone_receiver: " + cell + "\n" + ":books: " +corso + "\n" + ":hotel: " + stanza + "\n\n")
                    bot.sendChatAction(chat_id,'typing')
                    bot.sendMessage(chat_id,data)
                else:
                    bot.sendMessage(chat_id,"Non conosco la sigla inserita!")
            else:

                bot.sendMessage(chat_id,"Non conosco la sigla inserita!")
            user_states[chat_id][0]=False

        elif command.lower() == "/findbyname":

            user_states[chat_id][1] = True
            bot.sendMessage(chat_id,"Inviami il nome da cercare")

        elif user_states[chat_id][1]:
            name = command.lower()
            response = getUserByNameSurname(name)
            data = ""
            for user in response:
                nome = user['Nome']
                cognome = user['Cognome']
                email = user['E_mail_1_Value']
                cell = user['Num_tel']
                course = user['Corso']
                stanza = user['Stanza']
                sigla = user['Sigla']

                data += emoji.emojize(":boy: "+ nome + " " + cognome + "\n" + ":envelope: " + email + "\n" + ":telephone_receiver: " + cell + "\n" + ":books: " + course + "\n" + ":hotel: " + stanza + "\n" + ":ticket: " +sigla + "\n\n")

            if data == "":
                bot.sendMessage(chat_id,"Residente non trovato!")
            else:
                bot.sendChatAction(chat_id,'typing')
                bot.sendMessage(chat_id,data)
            user_states[chat_id][1]=False

        elif command.lower() == "/findbyroom":
            user_states[chat_id][2] = True
            bot.sendMessage(chat_id,"Inviami il nome della stanza!")

        elif user_states[chat_id][2]:
            room = command.lower()
            response = getUsersFromRoom(room)
            data = ""
            for user in response:
                nome = user['Nome']
                cognome = user['Cognome']
                cs = user["Capo_Stanza"]

                if cognome == "Paciolla" and cs == "Y":
                    data+=emoji.emojize(u"\U0001f466\U0001f3ff" + nome + " " + cognome + " *- Capo Stanza*"+"\n")
                else:
                    if cs == "Y":
                        data+=emoji.emojize(":man: " + "*" + nome + "*" + " " + "*"+ cognome + " - Capo Stanza*" +"\n")
                    else:
                        data+=emoji.emojize(":boy: " + nome + " " + cognome +"\n")
            if data == "":
                bot.sendMessage(chat_id,"Stanza non trovata!")
            else:
                bot.sendChatAction(chat_id,'typing')
                bot.sendMessage(chat_id,data,parse_mode="Markdown")
            user_states[chat_id][2] = False

        elif command.lower() == "/findbyjob":
            user_states[chat_id][3] = True
            reply_markup = buildKeyboard()
            bot.sendMessage(chat_id,"Inviami il nome dell' incarico",reply_markup=reply_markup)

        elif user_states[chat_id][3]:
            job = command.lower()
            response = getUsersByJob(job)
            data = ""
            for user in response:
                nome = user['Nome']
                cognome = user['Cognome']

                if nome == "Carlo" or cognome == "Longo":
                    data+=emoji.emojize(u"\U0001f466\U0001f3ff" + nome + " " + cognome + "\n")
                else:
                    data+=emoji.emojize(":boy: " + nome + " " + cognome + "\n")
            if data == "":
                bot.sendMessage(chat_id,"Incaricato non trovato!",reply_markup=ReplyKeyboardRemove())
            else:
                bot.sendChatAction(chat_id,'typing')
                bot.sendMessage(chat_id,data,reply_markup=ReplyKeyboardRemove())
            user_states[chat_id][3] = False
            
        elif command.lower() == "/centralino":
            user_states[chat_id][4] = True
            bot.sendMessage(chat_id,'Inviami la sigla del turnista')
            
        elif user_states[chat_id][4]:
            label = checkInputLabel(command.lower())
            response = getWorkRound(label)
            data = ""
            
            if label:
                bot.sendMessage(chat_id,"Quando devi lavorare: ")
                for user in response:
                    #nome = user['Nome']
                    #cognome = user['Cognome']
                    date = user['data']
                    
                    data+=emoji.emojize(":alarm_clock:" + " " + date + "\n")
                    
                if data == "":
                    bot.sendMessage(chat_id,"Turnista non trovato!")
                else:
                    bot.sendChatAction(chat_id,'typing')
                    bot.sendMessage(chat_id,data)
            else:
                bot.sendMessage(chat_id,'Devi inviarmi una sigla numerica, non conosco altre forme di sigle. Mi dispiace!')
            user_states[chat_id][4] = False

        else:
            bot.sendMessage(chat_id,"Comando non supportato!",reply_markup=ReplyKeyboardRemove())
            user_states[chat_id][0] = False
            user_states[chat_id][1] = False
            user_states[chat_id][2] = False
            user_states[chat_id][3] = False
            user_states[chat_id][4] = False


    else:
        bot.sendMessage(chat_id,"Sono stato aggiornato, invia /start per aggiornare!")

#****************************************** Fine metodi ****************************************************************************


#Configure proxy
#proxy_url = 'http://proxy.server:3128/'

#telepot.api._pools = {
 #   'default': urllib3.ProxyManager(proxy_url=proxy_url, num_pools=3, maxsize=10, retries=False, timeout=30),
#}

#telepot.api._onetime_pool_spec = (urllib3.ProxyManager, dict(proxy_url=proxy_url, num_pools=1, maxsize=1, retries=False, timeout=30))

#Config plus start listening to messages..
bot = telepot.Bot(Config.token_bot)
bot.message_loop(handle)
inLabel=False
inName=False
inRoom = False
inJob = False
inWorkRound = False
port = 5500
user_states = {}
print ("Attendo..")

while 1:

    try:

        time.sleep(10)
    except requests.exceptions.ConnectionError as e:

        print(str(e))
