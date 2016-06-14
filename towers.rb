class TowerOfHanoi
  ###########################################################################
  #
  # Description of the data structures used to model the Tower of Hanoi game:
  # -------------------------------------------------------------------------
  # Disks are simply modeled as positive integers. Each of the three rods
  # contains a (possibly empty) stack of disks. Each stack is modeled as
  # an array containing such disks. The disks in a stack are only allowed
  # to be in a sorted (ascending) order at any point during the game. The
  # game "platform" is modeled as an array containing three stacks of disks.
  #
  # A game state corresponds to a particular configuration of the aforesaid
  # data structures.
  # Example of a game state: [[1, 2, 3], [], []]
  #
  ###########################################################################

  def initialize(disks = 1)
    @disks = disks
    @stacks = [(1..disks).to_a, [], []]
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

end
