class Game

  def initialize(user, bot)
    @bot = bot
    @user = user
  end

  # 0 - победила дружба
  # 1 - победил компьютер
  # 2 - победил пользователь
  # ========================
  def result
    return 0 if (@user ==  @bot)
    return 1 if (@user == 2 && @bot == 1) ||
                (@user == 0 && @bot == 2) ||
                (@user == 1 && @bot == 0) ||
                (@user == 3 && @bot == 0) ||
                (@user == 1 && @bot == 3) ||
                (@user == 2 && @bot == 3)
    return 2
  end

  def print
    if result == 0 && @user == 3
      return puts "Вы — огонь, компьютер — огонь Все огонь!"
    end

    return puts "Победила дружба"       if result == 0
    return puts "Победил компьютер!"    if result == 1
    return puts "Победил пользователь!" if result == 2
  end
end
