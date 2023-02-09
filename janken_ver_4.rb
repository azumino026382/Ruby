class Game

  puts "じゃんけん..."

  def janken
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    player_hand = gets.to_i
    program_hand = rand(3)
    if player_hand > 4
      puts "入力された内容が無効です"
    elsif  player_hand == 3
      puts "ゲームを終了します"
    else
      puts "ポン"
    end

    @player_hand = player_hand
    @program_hand = program_hand
    puts "------------------------------"

    jankens = ["グー", "チョキ", "パー"]
    puts "あなた：#{jankens[@player_hand]}を出しました"
    puts "相手：#{jankens[@program_hand]}を出しました"


    if @player_hand == @program_hand
      puts "あいこで"
      return true
    elsif (@player_hand == 0 && @program_hand == 1) || (@player_hand == 1 && @program_hand == 2) || (@player_hand == 2 && @program_hand == 0)
      puts "あなたの勝ちです"
      @more_game =  "あなたの勝ちです"
      return false
    else
      puts "あなたの負けです"
      @more_game =  "あなたの負けです"
      return false
    end

  end

  def finger_point
    puts "あっち向いて..."
    puts "0(上)1(右)2(下)3(左)"
    player_direction = gets.to_i
    program_direction = rand(4)
    if player_direction >= 4
        puts "入力内容が無効です"
    else
        puts "ホイ"
    end
    puts "------------------------------"

    directions = ["上", "右", "下", "左"]
    puts "あなた：#{directions[player_direction]}"
    puts "相手：#{directions[program_direction]}"

 
    if player_direction == program_direction
      case @more_game
      when "あなたの勝ちです"
        puts "あなたの勝ちです"
        return false
      when "あなたの負けです"
        puts "あなたの負けです"
        return false
      end
    else
      puts "勝敗が決まりません"
      return true
    end
   
  end

end

game = Game.new
next_game = true

while next_game
  result = game.janken
  if result
    result = game.janken
  else
    next_game = game.finger_point
  end
end

