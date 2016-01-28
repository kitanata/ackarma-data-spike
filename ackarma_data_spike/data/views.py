from bokeh.plotting import figure, output_file, show
from bokeh.embed import components

from sklearn.datasets import make_classification
from sklearn.datasets import make_blobs
from sklearn.datasets import make_gaussian_quantiles

from django.shortcuts import render, get_object_or_404

from data.models import Gamestat, Player

def home(request):
    players = list(Player.objects.all())
    stats = list(Gamestat.objects.all())

    rebounds = list(map(lambda x: x.reb, stats))
    assists = list(map(lambda x: x.ast, stats))
    blocks = list(map(lambda x: x.blk, stats))
    steals = list(map(lambda x: x.stl, stats))
    points = list(map(lambda x: x.fanduel_points_total(), stats))

    plot = figure(title="Scatter Plot", x_axis_label='Data', y_axis_label='Fan Duel Points')
    plot.scatter(rebounds, points, legend="Rebounds", fill_color="red", size=[10] * len(stats))
    plot.scatter(assists, points, legend="Assists", fill_color="blue", size=[10] * len(stats), marker="triangle")
    plot.scatter(blocks, points, legend="Blocks", fill_color="black", size=[10] * len(stats), marker="square")
    plot.scatter(steals, points, legend="Steals", fill_color="green", size=[10] * len(stats), marker="cross")

    three_pointers = list(map(lambda x: x.field_3pm, stats))
    two_pointers = list(map(lambda x: x.fgm - x.field_3pm, stats))
    free_throws = list(map(lambda x: x.ftm, stats))

    plot2 = figure(title="Point Scatter Plot", x_axis_label='Shots Made', y_axis_label='Fan Duel Points')
    plot2.scatter(three_pointers, points, legend="3 Pointers", fill_color="red", size=[10] * len(stats))
    plot2.scatter(two_pointers, points, legend="2 Pointers", fill_color="blue", size=[10] * len(stats), marker="triangle")
    plot2.scatter(free_throws, points, legend="Free Throws", fill_color="green", size=[10] * len(stats), marker="square")

    script_a, div_a = components(plot)
    script_b, div_b = components(plot2)

    return render(request, 'home.html', {
        'players': players,
        "script_a": script_a, 
        "div_a": div_a,
        "script_b": script_b,
        "div_b": div_b
    })


def player(request, player_pk):
    player = get_object_or_404(Player, pk=player_pk)

    stats = list(player.stats.all())
    rebounds = list(map(lambda x: x.reb, stats))
    assists = list(map(lambda x: x.ast, stats))
    blocks = list(map(lambda x: x.blk, stats))
    steals = list(map(lambda x: x.stl, stats))
    points = list(map(lambda x: x.fanduel_points_total(), stats))

    plot = figure(title="Scatter Plot", x_axis_label='Data', y_axis_label='Fan Duel Points')
    plot.scatter(rebounds, points, legend="Rebounds", fill_color="red", size=[10] * len(stats))
    plot.scatter(assists, points, legend="Assists", fill_color="blue", size=[10] * len(stats), marker="triangle")
    plot.scatter(blocks, points, legend="Blocks", fill_color="black", size=[10] * len(stats), marker="square")
    plot.scatter(steals, points, legend="Steals", fill_color="green", size=[10] * len(stats), marker="cross")

    three_pointers = list(map(lambda x: x.field_3pm, stats))
    two_pointers = list(map(lambda x: x.fgm - x.field_3pm, stats))
    free_throws = list(map(lambda x: x.ftm, stats))

    plot2 = figure(title="Point Scatter Plot", x_axis_label='Shots Made', y_axis_label='Fan Duel Points')
    plot2.scatter(three_pointers, points, legend="3 Pointers", fill_color="red", size=[10] * len(stats))
    plot2.scatter(two_pointers, points, legend="2 Pointers", fill_color="blue", size=[10] * len(stats), marker="triangle")
    plot2.scatter(free_throws, points, legend="Free Throws", fill_color="green", size=[10] * len(stats), marker="square")

    script_a, div_a = components(plot)
    script_b, div_b = components(plot2)

    return render(request, "player.html", {
        "player": player,
        "script_a": script_a, 
        "div_a": div_a,
        "script_b": script_b,
        "div_b": div_b
    })
