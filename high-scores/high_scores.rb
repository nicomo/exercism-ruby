# Manage a game player's High Score list

class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores[-1]
  end

  def personal_best
    @scores.max()
  end

  def personal_top_three
    @scores.sort.reverse.slice(0, 3)
  end

  def latest_is_personal_best?
    @scores.max() == @scores[-1]
  end
end