import time
import sys
import psycopg2
import requests
from bs4 import BeautifulSoup

def insert_match(conn, id, game, odd_team1, odd_team2):

    #Creating a cursor object using the cursor() method
    cursor = conn.cursor()

    # Preparing SQL queries to INSERT a record into the database.
    cursor.execute('insert into matches(id, game, odd_team1, odd_team2) values ('+id+', \''+game+'\', '+str(odd_team1)+', '+str(odd_team2)+')')
    
    # Commit your changes in the database
    conn.commit()
    print("Records inserted........")

def select_match(conn, id):

    #Creating a cursor object using the cursor() method
    cursor = conn.cursor()

    # Preparing SQL queries to INSERT a record into the database.
    cursor.execute('select * from matches where id = ' + id)
    
    return cursor.fetchone()
   
def select_matches_without_winners(conn):
    cursor = conn.cursor()
    cursor.execute('select id, game from matches where winner is null')
    return cursor.fetchall()

def write_winner(conn, id, win):
    cursor = conn.cursor()
    cursor.execute('update matches set winner = ' + str(win) + ' where id = ' + str(id))       
    conn.commit()

def get_odds(id, game):
    bets_request = requests.get ("https://www.hltv.org/betting/analytics/"+id+"/"+game)    
    bets_request_bs = BeautifulSoup(bets_request.content, "html.parser")
    
    odd_team1 = 0
    for td in bets_request_bs.select('td.odds.team1'):
        if float(td['data-numeric-odds'])>odd_team1:
            odd_team1 = float(td['data-numeric-odds'])
    print(odd_team1)        
    
    odd_team2 = 0
    for td in bets_request_bs.select('td.odds.team2'):
        if float(td['data-numeric-odds'])>odd_team2:
            odd_team2 = float(td['data-numeric-odds'])
    print(odd_team2)
    
    return(odd_team1,odd_team2)

def main():
    db_password = 'postgrespw'
    if len(sys.argv) != 1:
        db_password = sys.argv[1]      

    # print(get_odds("2357822","ec-kyiv-vs-yodagus-elisa-invitational-fall-2022-contenders"))
    #Establishing the connection
    conn = psycopg2.connect(
    database="cs_go_bets", user='postgres', password=db_password, host='127.0.0.1', port= '5432'
    )
    #Setting auto commit false
    conn.autocommit = True
    matches_request = requests.get ("https://www.hltv.org/matches")    
    matches_request_bs = BeautifulSoup(matches_request.content, "html.parser") 
    for a in matches_request_bs.find_all('a',{'class':'match'}):
        id = a['href'].split('/')[2]        
        print('Analisando o jogo '+str(id))
        game = a['href'].split('/')[3]
        odds = get_odds(id, game)       
        if (odds[0]==0 or odds[1]==0 or select_match(conn, id) != None):
            print('NOT inserted on DB')
        else:  
            print('inserted on DB')       
            insert_match(conn, id, game, odds[0], odds[1])

    for match in select_matches_without_winners(conn):
        results_request = requests.get ("https://www.hltv.org/matches/"+str(match[0])+"/"+match[1])    
        results_request_bs = BeautifulSoup(results_request.content, "html.parser")
        div = results_request_bs.find('div',{'class':'won'})
        win = 0 
        time.sleep (1)
        if div != None:
            if 'team1' in div.parent['class'][0]:
                win = 1
                print('Time 1 vencedor')
                write_winner (conn, match[0], win)                
            elif 'team2' in div.parent['class'][0]:
                print('Time 2 vencedor')
                win = 2
                write_winner (conn, match[0], win)                          
            else:
                print('Nenhum time vencedor')
        else:
            print('Jogo ainda não acabou')
            print (match, div, results_request)
      
    # Closing the connection
    conn.close()        
    


if __name__ == "__main__":
    main()