class TowerOfHanoi
  ###########################################################################
  #
  # Description of the data structures used to model the Tower of Hanoi game:
  # -------------------------------------------------------------------------
  # Disks are simply modeled as positive integers. Each of the three rods
  # contains a (possibly empty) stack of disks. Each stack is modeled as
  # an array containing such disks. The disks in a stack are only allowed
  # to be in a sorted (descending) order at any point during the game. The
  # game "platform" is modeled as an array containing three stacks of disks.
  #
  # A game state corresponds to a particular configuration of the aforesaid
  # data structures.
  # Example of a game state: [[3, 2, 1], [], []]
  #
  ###########################################################################

  def initialize(disks = 1)
    @disks = disks
    @stacks = [(1..disks).to_a.reverse, [], []]
  end

  def welcome
    "# Welcome to Tower of Hanoi!"
  end

  def instructions
    <<~HEREDOC
      # Instructions:
      # Enter where you would like to move from and to
      # in the format [1, 3]. Enter 'q' to quit.
    HEREDOC
  end

  def quit?(user_input)
    user_input.strip.downcase == "q"
  end

  def render
    empty_strings = Array.new(@disks) { "" }

    stacks_text = @stacks.map do |stack|
      empty_strings.zip(stack).map(&:join).map { |s| s.rjust(5) }
    end

    display_string =
      stacks_text[0]
      .zip(stacks_text[1], stacks_text[2])
      .map(&:join)
      .reverse
      .join("\n")

    display_string
  end

  def game_won?
    winning_stack = (1..@disks).to_a.reverse

    @stacks[1] == winning_stack || @stacks[2] == winning_stack
  end

end
