# -*- coding: utf-8 -*-
# Generated by Django 1.9.1 on 2016-01-28 21:46
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('data', '0003_auto_20160128_2006'),
    ]

    operations = [
        migrations.AlterField(
            model_name='gamestat',
            name='player',
            field=models.ForeignKey(db_column='player_id', on_delete=django.db.models.deletion.CASCADE, related_name='stats', to='data.Player'),
        ),
    ]
