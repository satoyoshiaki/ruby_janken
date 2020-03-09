
class Janken
  def myhand
    puts "数字を入力してください"
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    puts "0:グー"
    puts "1:チョキ"
    puts "2:パー"
        imput_hand = gets.chomp
        unless imput_hand == "0" || imput_hand == "1" || imput_hand == "2"
          puts "あなたの入力は無効です。再挑戦する場合は、0~2の数字を入力し直してください"
          puts "0:グー\n1:チョキ\n2:パー"
          janken = Janken.new
          janken.myhand
          janken.enehand
          janken.syoubu

        else

          @imput_hand = imput_hand.to_i
        end
  end
#end

#class Enemy
  def enehand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    @enemy_hand = rand(3)
    enemy_te = ["グー","チョキ","パー"]
    @enemyhand = enemy_te[@enemy_hand]
  end
#end

#class Janken
    def syoubu
        result = (@imput_hand - @enemy_hand + 3) %3

        if  result == 0
            puts "相手の手は#{@enemyhand}なので\n引き分けです。再挑戦待ってます！"


            janken = Janken.new

            janken.myhand
            janken.enehand
            janken.syoubu

        elsif result == 1
            puts "相手の手は#{@enemyhand}なので\nあなたの負けです。　　残念!!"
        elsif result == 2
            puts "相手の手は#{@enemyhand}なので\nあなたの勝ちです!!    おめでとう"
        else
            puts ""
        end
    end

    if @a == false
        janken = Janken.new

        janken.myhand
        janken.enehand
        janken.syoubu
    end

end



janken = Janken.new


# 下記の記述で、ジャンケンメソッドが起動される
janken.myhand
janken.enehand
janken.syoubu
