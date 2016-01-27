import requests
from bs4 import BeautifulSoup
import subprocess
import time


response = requests.get('http://basketball.realgm.com/nba/players')

soup = BeautifulSoup(response.content, 'html.parser')

table = soup.find('tbody')

player_ids = []

for tr in table.find_all('tr'):
    td = tr.find_all('td')[1]
    link = td.a.get('href')
    link_parts = link.split('/')
    player_ids.append(link_parts[-1])

for id in player_ids:
    time.sleep(1)
    url = 'http://basketball.realgm.com/player/x/GameLogs/{}'.format(id)

    print(subprocess.call(['ddlgenerator', '-i', 'postgresql', '--no-creates',  url]))
