import requests
import time

from tqdm import tqdm
from ddlgenerator.ddlgenerator import Table
from bs4 import BeautifulSoup

all_players_url = 'http://basketball.realgm.com/nba/players'

response = requests.get(all_players_url)
soup = BeautifulSoup(response.content, 'html.parser')
table = soup.find('tbody')

players = []

for tr in table.find_all('tr'):
    curr_player = {}

    for td in tr.find_all('td'):
        if td['data-th'] == '#':
            curr_player['number'] = td['rel']
        else:
            curr_player[td['data-th']] = td['rel']

        if td['data-th'] == 'Player':
            link = td.a.get('href')
            link_parts = link.split('/')
            curr_player['pk'] = int(link_parts[-1])

    players.append(curr_player)


players_table_sql = Table(
        players,
        table_name='Players',
        pk_name='pk',
        force_pk=True
    ).sql(dialect='postgresql', inserts=True)

print(players_table_sql)

player_games = []

for player in tqdm(players):
    time.sleep(0.5)
    url = 'http://basketball.realgm.com/player/x/GameLogs/{}'.format(
        player['pk']
    )

    response = requests.get(url)
    soup = BeautifulSoup(response.content, 'html.parser')
    thead = soup.find('thead')

    header_lookup = []

    try:
        for tr in thead.find_all('tr'):
            for th in tr.find_all('th'):
                header_lookup.append(th.string)
    except AttributeError:
        continue

    table = soup.find('tbody')

    for tr in table.find_all('tr'):
        curr_game = {
            'player_id': player['pk']
        }

        for idx, td in enumerate(tr.find_all('td')):
            curr_game[header_lookup[idx]] = td['rel']

        player_games.append(curr_game)

game_sql = Table(
    player_games,
    table_name='GameStats'
).sql(dialect='postgresql', inserts=True)

print(game_sql)
