# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models


class OneSix(models.Model):
    field_date = models.DateTimeField(db_column='_date')  # Field renamed because it started with '_'.
    team = models.CharField(max_length=300)
    opponent = models.CharField(max_length=300)
    w_l = models.CharField(max_length=1)
    status = models.CharField(max_length=7)
    pos = models.CharField(max_length=2)
    field_min = models.CharField(db_column='_min', max_length=5)  # Field renamed because it started with '_'.
    fgm = models.IntegerField()
    fga = models.IntegerField()
    fg_field = models.FloatField(db_column='fg_')  # Field renamed because it ended with '_'.
    field_3pm = models.IntegerField(db_column='_3pm')  # Field renamed because it started with '_'.
    field_3pa = models.IntegerField(db_column='_3pa')  # Field renamed because it started with '_'.
    field_3p_field = models.FloatField(db_column='_3p_')  # Field renamed because it started with '_'. Field renamed because it ended with '_'.
    ftm = models.IntegerField()
    fta = models.IntegerField()
    ft_field = models.FloatField(db_column='ft_')  # Field renamed because it ended with '_'.
    orb = models.IntegerField()
    drb = models.IntegerField()
    reb = models.IntegerField()
    ast = models.IntegerField()
    stl = models.IntegerField()
    blk = models.IntegerField()
    pts = models.IntegerField()
    fic = models.FloatField()
    pf = models.IntegerField()
    tov = models.IntegerField()
    
    def __str__(self):
        return '{}'.format(self.pk)

    class Meta:
        managed = False
        db_table = 'one_six'
