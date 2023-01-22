class Game
  def janken
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    player_hand = gets.to_i 
    program_hand = rand(4)
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
  end
  
  def janken_result
    jankens=["グー", "チョキ", "パー"]

    puts "あなた：#{jankens[@player_hand]}を出しました"
    puts "相手：#{jankens[@program_hand]}を出しました"

    puts "------------------------------"
  end
  
  def even
    puts "あいこで..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    player_hand = gets.to_i 
    program_hand = rand(4)
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
  end
 
  def finger_point
    #if (@player_hand == 0 && @program_hand ==1) ||(@player_hand == 1 && @program_hand ==2) || (@player_hand == 2 && @program_hand ==0)
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
      
    #else
  end
  
  def finger_point_result
    directions = ["上", "右", "下", "左"]
    
    puts "あなた：#{directions[player_direction]}"
    puts "相手：#{directions[program_direction]}"
  end

  def total_result
    if (@player_hand == 0 && @program_hand ==1) ||(@player_hand == 1 && @program_hand ==2) || (@player_hand == 2 && @program_hand ==0)
      if player_direction == program_direction
        puts "あなたの勝ちです"
      else
        game.janken
      end
    else
      if player_direction == program_direction
        puts "あなたの負けです"
      else
        game.janken
    end
  end
end

=begin    
player_hand = gets.to_i 
program_hand = rand(4)
player_direction = gets.to_i
program_direction = rand(4)
=end

game = Game.new

game.janken
game.janken_result
while @player_hand == @program_hand
  game.even
  game.janken_result
end

game.finger_point
game.finger_point_result
game.total_result

end
