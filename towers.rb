class TowerOfHanoi
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

end
