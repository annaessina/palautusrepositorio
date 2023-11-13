class Player:
    def __init__(self, player_info):
        self.name = player_info['name']
        self.team = player_info['team']
        self.goals = player_info['goals']
        self.assists = player_info['assists']
    
    def total_points(self):
        return self.goals + self.assists

    def __str__(self):
        return f"{self.name:20} {self.team} {self.goals} + {self.assists} = {self.total_points()}"

