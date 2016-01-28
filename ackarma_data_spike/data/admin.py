from django.contrib import admin
from .models import Players, Gamestats


class GamestatsAdmin(admin.ModelAdmin):
    list_display = (
        'player',
        'field_date', 'team', 'opponent', 'w_l', 'status',
        'pos', 'field_min', 'fgm', 'fga', 'fg_field',
        'field_3pm', 'field_3pa', 'field_3p_field', 'ftm', 'fta',
        'ft_field', 'orb', 'drb', 'reb', 'ast',
        'stl', 'blk', 'pts', 'fic', 'pf', 'tov',
    )

    list_filter = (
        ('player',)
    )


class PlayersAdmin(admin.ModelAdmin):
    list_display = (
        '__str__',
        'number',
        'yos',
        'pos',
        'height',
        'draft_status',
        'player',
        'age',
        'current_team',
        'nationality',
        'weight',
        'pre_draft_team'
    )


admin.site.register(Gamestats, GamestatsAdmin)
admin.site.register(Players, PlayersAdmin)
