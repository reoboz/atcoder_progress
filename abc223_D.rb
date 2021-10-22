N,M = gets.chomp.split.map(&:to_i)
arr = [*1..N]
arr_order = []
(1..M).each do |_|
  a,b = gets.chomp.split.map(&:to_i)
  unless arr_order.include?([a,b].reverse)
  	arr_order.push [a,b]
  else
    puts -1
    exit
  end
end
(1..M).each do |i|
  a,b = arr_order[i-1]
  pos_a = arr.index(a)
  pos_b = arr.index(b)
  if pos_a > pos_b
    arr.delete(a)
    arr.insert(pos_b,a)
  end
end
puts arr.join(" ")