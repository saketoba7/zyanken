
while true do
	puts "じゃんけん..."
	puts "0(グー)1(チョキ)2(パー)3(戦わない)"
	
	player_hand = gets.to_i
	computer_hand = rand(3)
	
	unless player_hand == 3
	puts "あなた：#{player_hand}を出しました"
	puts "相手：#{computer_hand}を出しました"

	while player_hand == computer_hand do
	puts "あいこで"
	puts "0(グー)1(チョキ)2(パー)3(戦わない)"
	
	player_hand = gets.to_i
	computer_hand = rand(3)
	
	puts "あなた：#{player_hand}を出しました"
	puts "相手：#{computer_hand}を出しました"

	end
	
	if player_hand == 0 && computer_hand == 1 || player_hand == 1 && computer_hand == 2 || player_hand == 2 && computer_hand == 0
	player_winner_flag = true
	else
	player_winner_flag = false
	end
	
	puts "あっち向いて〜"
	puts "0(上)1(下)2(左)3(右)"
	player_direction = gets.to_i
	computer_direction = rand(4)
	puts "ホイ！"
	puts "---------------"
	puts "あなた：#{player_direction}"
	puts "相手：#{computer_direction}"
	
	if player_winner_flag && player_direction == computer_direction
	puts "win"
	elsif !player_winner_flag && player_direction == computer_direction
	puts "lose"
	end
	else
	break
	end
	end
