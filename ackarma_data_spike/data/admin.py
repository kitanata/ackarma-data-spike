from django.contrib import admin
from .models import *


class GamestatAdmin(admin.ModelAdmin):
    list_display = (
        '__str__',
        'player',
        'field_date',
        'team',
        'opponent',
        'w_l',
        'status',
        'pos',
        'field_min',
        'fgm',
        'fga',
        'fg_field',
        'field_3pm',
        'field_3pa',
        'field_3p_field',
        'ftm',
        'fta',
        'ft_field',
        'orb',
        'drb',
        'reb',
        'ast',
        'stl',
        'blk',
        'pts',
        'fic',
        'pf',
        'tov',
        'fanduel_3fg',
        'fanduel_2fg',
        'fanduel_ft',
        'fanduel_assist',
        'fanduel_rebound',
        'fanduel_block',
        'fanduel_steal',
        'fanduel_turnover',
        'fanduel_points_total'
    )

    list_filter = (
        ('player',)
    )


class PlayerAdmin(admin.ModelAdmin):
    list_display = (
        'name',
        'number',
        'yos',
        'pos',
        'height',
        'draft_status',
        'age',
        'current_team',
        'nationality',
        'weight',
        'pre_draft_team',
        'fanduel_avg_total'
    )

    search_fields = (
        'name',
    )


admin.site.register(Gamestat, GamestatAdmin)
admin.site.register(Player, PlayerAdmin)
admin.site.register(Position)
