n, k = gets.chomp.split.map(&:to_i)
progress = 0
money = k
friends = []
(1..n).each do |i|
    a, b = gets.chomp.split.map(&:to_i)
    friends << [a,b]
end

friends = friends.sort_by{|a|a[0]}

friends.each do |i|
    i[0] -= progress
    i[0] = 0 if i[0] < 0 
    if money - i[0] >= 0
        money += i[1]
        money -= i[0]
        progress += i[0]
    else
        progress += money
        money = 0
        break
    end
end

progress += money

puts progress