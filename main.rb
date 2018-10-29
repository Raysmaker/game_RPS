require_relative 'lib/game'

obj = %w{камень ножницы бумага огонь}
puts "\n0-#{obj[0]}, 1-#{obj[1]}, 2-#{obj[2]}, 3-#{obj[3]}"

print "Введите вариант: "

user = nil
loop do
  user = STDIN.gets.chomp.to_i.abs
  if (0..3).include? user
    break
  end
end

bot = rand(4)

puts "Пользователь выбрал: #{obj[user]}"
puts "Компьютер выбрал: #{obj[bot]}"

game = Game.new(user, bot)
game.result
game.print