import requests
import json
url = "http://watreeserveur.ddns.net/~/in-cse/in-name/Watree"
#url = "http://192.168.1.11/~/in-cse/in-name/Watree"



def get_humidite(x):
    header = {'X-M2M-Origin': 'admin:admin', 'Content-type': 'application/json'}
    r = requests.get(url+"/Plantes_humidite/plante_"+str(x), headers=header)
    print(r.status_code)
    return (r.json())["m2m:cin"]["con"]

def get_temperature():
    header = {'X-M2M-Origin': 'admin:admin', 'Content-type': 'application/json'}
    r = requests.get(url+"/Temperature/temperature", headers=header)
    print(r.status_code)
    return (r.json())["m2m:cin"]["con"]

def get_luminosite():
    header = {'X-M2M-Origin': 'admin:admin', 'Content-type': 'application/json'}
    r = requests.get(url+"/Luminosite/luminosite", headers=header)
    print(r.status_code)
    return (r.json())["m2m:cin"]["con"]

def get_niveau_eau():
    header = {'X-M2M-Origin': 'admin:admin', 'Content-type': 'application/json'}
    r = requests.get(url+"/Niveau_eau/niveau_eau", headers=header)
    print(r.status_code)
    return (r.json())["m2m:cin"]["con"]

def put_temperature(x):
    #on delete
    header = {'X-M2M-Origin': 'admin:admin'}
    r = requests.delete(url+"/Temperature/temperature", headers=header)
    print(r.status_code)
    #on recrée
    header = {
        "X-M2M-Origin": "admin:admin",
        "Content-type": "application/json;ty=4"
    }
    body = {
        "m2m:cin": {

            "rn": "temperature",
            "cnf":	"temperature de la piece",
            "con":str(x)
        }
    }
    r = requests.post(url+"/Temperature", data=json.dumps(body), headers=header)
    print(r.status_code)

def put_niveau_eau(x):
    #on delete
    header = {'X-M2M-Origin': 'admin:admin'}
    r = requests.delete(url+"/Niveau_eau/niveau_eau", headers=header)
    print(r.status_code)
    #on recrée
    header = {
        "X-M2M-Origin": "admin:admin",
        "Content-type": "application/json;ty=4"
    }
    body = {
        "m2m:cin": {

            "rn": "niveau_eau",
            "cnf":	"niveau d'eau",
            "con":str(x)
        }
    }
    r = requests.post(url+"/Niveau_eau", data=json.dumps(body), headers=header)
    print(r.status_code)



def put_luminosite(x):
    #on delete
    header = {'X-M2M-Origin': 'admin:admin'}
    r = requests.delete(url+"/Luminosite/luminosite", headers=header)
    print(r.status_code)
    #on recrée
    header = {
        "X-M2M-Origin": "admin:admin",
        "Content-type": "application/json;ty=4"
    }
    body = {
        "m2m:cin": {

            "rn": "luminosite",
            "cnf":	"luminosite moyenne",
            "con":str(x)
        }
    }
    r = requests.post(url+"/Luminosite", data=json.dumps(body), headers=header)
    print(r.status_code)


def put_humidite(plante, value):
    #on delete
    header = {'X-M2M-Origin': 'admin:admin'}
    r = requests.delete(url+"/Plantes_humidite/plante_"+str(plante), headers=header)
    print(r.status_code)
    #on recrée
    header = {
        "X-M2M-Origin": "admin:admin",
        "Content-type": "application/json;ty=4"
    }
    body = {
        "m2m:cin": {

            "rn": "plante_"+str(plante),
            "cnf":	"humidite plante "+str(plante),
            "con":str(value)
        }
    }
    r = requests.post(url+"/Plantes_humidite", data=json.dumps(body), headers=header)
    print(r.status_code)


if __name__=="__main__":
    print("toto")
