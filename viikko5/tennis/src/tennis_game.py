class TennisGame:
    def __init__(self, player1_name, player2_name):
        self.player1 = player1_name
        self.player2 = player2_name
        self.m_score1 = 0
        self.m_score2 = 0
        self.points = ["Love", "Fifteen", "Thirty", "Forty"]

    def won_point(self, player_name):
        if player_name == "player1":
            self.m_score1 += 1
        else:
            self.m_score2 += 1

    def get_score(self):
        if self.m_score1 == self.m_score2:
            return self.draw_game()
        if self.m_score1 >= 4 or self.m_score2 >= 4:
            return self.current_result()
        else:
            return f"{self.points[self.m_score1]}-{self.points[self.m_score2]}"


    def draw_game(self):
        if self.m_score1 < 4:
            score = f"{self.points[self.m_score1]}-All"
        else:
            score = "Deuce"

        return score
    def current_result(self):
        difference = self.m_score1 - self.m_score2

        if difference == 1:
            score = "Advantage player1"
        elif difference == -1:
            score = "Advantage player2"
        elif difference >= 2:
            score = "Win for player1"
        else:
            score = "Win for player2"

        return score
