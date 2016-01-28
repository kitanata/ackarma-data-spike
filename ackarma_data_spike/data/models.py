# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals
import math
from django.db import models


FANDUEL_ADJUSTMENTS = {
    '3FG': 3,
    '2FG': 2,
    'FT': 1,
    'REBOUND': 1.2,
    'ASSIST': 1.5,
    'BLOCK': 2,
    'STEAL': 2,
    'TURNOVER': -1
}


class Gamestat(models.Model):
    fgm = models.IntegerField()
    pos = models.ForeignKey('data.Position', db_column='pos')
    fg_field = models.DecimalField(db_column='fg_', max_digits=4, decimal_places=3)  # Field renamed because it ended with '_'.
    pf = models.IntegerField()
    field_3pm = models.IntegerField(db_column='_3pm')  # Field renamed because it started with '_'.
    status = models.CharField(max_length=7)
    stl = models.IntegerField()
    opponent = models.CharField(max_length=16)
    tov = models.IntegerField()
    orb = models.IntegerField()
    field_date = models.DateTimeField(db_column='_date')  # Field renamed because it started with '_'.
    fta = models.IntegerField()
    fic = models.DecimalField(max_digits=3, decimal_places=1)
    w_l = models.CharField(max_length=1)
    drb = models.IntegerField()
    player = models.ForeignKey('data.Player', db_column='player_id')
    ast = models.IntegerField()
    field_min = models.IntegerField(db_column='_min')  # Field renamed because it started with '_'.
    team = models.CharField(max_length=13)
    blk = models.IntegerField()
    pts = models.IntegerField()
    fga = models.IntegerField()
    ft_field = models.DecimalField(db_column='ft_', max_digits=4, decimal_places=3)  # Field renamed because it ended with '_'.
    ftm = models.IntegerField()
    field_3p_field = models.DecimalField(db_column='_3p_', max_digits=4, decimal_places=3)  # Field renamed because it started with '_'. Field renamed because it ended with '_'.
    field_3pa = models.IntegerField(db_column='_3pa')  # Field renamed because it started with '_'.
    reb = models.IntegerField()

    def fanduel_3fg(self):
        return self.field_3pm * FANDUEL_ADJUSTMENTS['3FG']

    def fanduel_2fg(self):
        return (self.fgm - self.field_3pm) * FANDUEL_ADJUSTMENTS['2FG']

    def fanduel_ft(self):
        return self.ftm * FANDUEL_ADJUSTMENTS['FT']

    def fanduel_rebound(self):
        return self.reb * FANDUEL_ADJUSTMENTS['REBOUND']

    def fanduel_assist(self):
        return self.ast * FANDUEL_ADJUSTMENTS['ASSIST']

    def fanduel_block(self):
        return self.blk * FANDUEL_ADJUSTMENTS['BLOCK']

    def fanduel_steal(self):
        return self.stl * FANDUEL_ADJUSTMENTS['STEAL']

    def fanduel_turnover(self):
        return self.tov * FANDUEL_ADJUSTMENTS['TURNOVER']

    def fanduel_points_total(self):
        return math.fsum((
            self.fanduel_3fg(),
            self.fanduel_2fg(),
            self.fanduel_ft(),
            self.fanduel_rebound(),
            self.fanduel_block(),
            self.fanduel_assist(),
            self.fanduel_steal(),
            self.fanduel_turnover()
        ))

    class Meta:
        ordering = ['-field_date']
        db_table = 'gamestats'


class Player(models.Model):
    number = models.IntegerField()
    yos = models.IntegerField()
    pos = models.ForeignKey('data.Position', db_column='pos')
    height = models.IntegerField()
    draft_status = models.DecimalField(max_digits=7, decimal_places=3)
    name = models.CharField(max_length=25)
    age = models.IntegerField()
    current_team = models.CharField(max_length=22)
    nationality = models.CharField(max_length=32)
    weight = models.IntegerField()
    pre_draft_team = models.CharField(max_length=60)

    def fanduel_avg_total(self):
        NUM_GAMES = 10
        games = self.gamestat_set.all()[:NUM_GAMES]
        summation = 0

        for game in games:
            summation += game.fanduel_points_total()

        avg = summation / NUM_GAMES
        return avg

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'players'


class Position(models.Model):
    id = models.IntegerField(primary_key=True)
    short_name = models.CharField(max_length=5)
    long_name = models.CharField(max_length=100)

    def __str__(self):
        return self.long_name
