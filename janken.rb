def janken
puts "じゃんけん・・・"
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
player_hand = gets.to_i
puts "ホイ！"
puts "-----------------------------------------------------"
program_hand = rand(3)

if player_hand > 3
  puts "エラーです。０〜3の数字を半角で入力してください。"
  return true
end

if player_hand == 3
  puts "また挑戦してね！！"
  return false
end

jankens =["グー","チョキ","パー"]
puts "あなた:#{jankens[player_hand]}を出しました！"
puts "相手:#{jankens[program_hand]}を出しました！"

if player_hand == program_hand
  puts "あいこで・・・"
  return true
elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
  puts "--------------------------------------------"
  puts "あなた：あっちむいて〜"
  puts "0(上)1(下)2(左)3(右)"
  player_hand_s = gets.to_i
  puts "ホイ！"
  puts "--------------------------------------------"
  program_hand_s = rand(4)

if player_hand_s > 4
  puts "エラーです。０〜3の数字を半角で入力してください。じゃんけんからやり直し。"
  return true
end

second_games =["上","下","左","右"]
puts "あなた:#{second_games[player_hand_s]}"
puts "相手:#{second_games[program_hand_s]}"

if player_hand_s == program_hand_s
  puts "あなたの勝ちです！おめでとう〜！！"
  return false
else
  return true
end


elsif (player_hand == 0 && program_hand == 2) || (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1)
  puts "--------------------------------------------"
  puts "相手：あっちむいて〜"
  puts "0(上)1(下)2(左)3(右)"
  program_hand_s = rand(4)
  puts "ホイ！"
  puts "--------------------------------------------"
  player_hand_s = gets.to_i

if player_hand_s > 4
  puts "エラーです。０〜3の数字を半角で入力してください。じゃんけんからやり直し。"
  return true
end

second_games =["上","下","左","右"]
puts "あなた:#{second_games[player_hand_s]}"
puts "相手:#{second_games[program_hand_s]}"

if player_hand_s == program_hand_s
  puts "あなたの負けです。また挑戦してね！"
  return false
else
  return true
end
end
end

next_game = true

while next_game
  next_game = janken
end
