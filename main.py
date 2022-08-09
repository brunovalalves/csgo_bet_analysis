import psycopg2
import requests
from bs4 import BeautifulSoup

def insert_match(id, game, odd_team1, odd_team2):
    #Establishing the connection
    conn = psycopg2.connect(
    database="cs_go_bets", user='postgres', password='postgrespw', host='127.0.0.1', port= '49153'
    )
    #Setting auto commit false
    conn.autocommit = True

    #Creating a cursor object using the cursor() method
    cursor = conn.cursor()

    # Preparing SQL queries to INSERT a record into the database.
    cursor.execute('INSERT INTO matches(id, game, odd_team1, odd_team2) VALUES ('+id+', \''+game+'\', '+str(odd_team1)+', '+str(odd_team2)+')')
    
    # Commit your changes in the database
    conn.commit()
    print("Records inserted........")

    # Closing the connection
    conn.close()

def get_odds(id, game):
    bets_request = requests.get ("https://www.hltv.org/betting/analytics/"+id+"/"+game)    
    bets_request_bs = BeautifulSoup(bets_request.content, "html.parser")
    
    best_odd_team1 = 0
    for td in bets_request_bs.find_all('td',{'class':'odds team1'}):
        if float(td['data-numeric-odds'])>best_odd_team1:
            best_odd_team1 = float(td['data-numeric-odds'])   
    
    best_odd_team2 = 0
    for td in bets_request_bs.find_all('td',{'class':'odds team2'}):
        if float(td['data-numeric-odds'])>best_odd_team2:
            best_odd_team2 = float(td['data-numeric-odds'])
    
    return(best_odd_team1,best_odd_team2)

def main():
    matches_request = requests.get ("https://www.hltv.org/matches")    
    matches_request_bs = BeautifulSoup(matches_request.content, "html.parser") 
    for a in matches_request_bs.find_all('a',{'class':'match'}):
        id = a['href'].split('/')[2]        
        print('Analisando o jogo '+str(id))
        game = a['href'].split('/')[3]
        odds = get_odds(id, game)        
        insert_match(id, game, odds[0], odds[1])
        
            
        
    


if __name__ == "__main__":
    main()