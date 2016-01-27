from django.contrib import admin
from .models import OneSix

class OneSixAdmin(admin.ModelAdmin):
    list_display = (
        'field_date', 'team', 'opponent', 'w_l', 'status',
        'pos', 'field_min', 'fgm', 'fga', 'fg_field',
        'field_3pm', 'field_3pa', 'field_3p_field', 'ftm', 'fta',
        'ft_field', 'orb', 'drb', 'reb', 'ast',
        'stl', 'blk', 'pts', 'fic', 'pf', 'tov'
    )


admin.site.register(OneSix, OneSixAdmin)
