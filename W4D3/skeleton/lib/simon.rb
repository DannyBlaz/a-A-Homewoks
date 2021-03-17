class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

  def play
    until @game_over
      take_turn
      system("clear")
    end

    game_over_message
    reset_game
  end

  def take_turn
   show_sequence
    require_sequence

    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    
  end

  def add_random_color
    col = COLORS.sample
    @seq << col
  end

  def round_success_message
    "congatulations round passed, lets step it up a bit"
  end

  def game_over_message
    puts "game over #{@sequence_length}"
  end

  def reset_game
    @sequence_length = 1
    self.game_over = false
    @seq.clear
  end
end
