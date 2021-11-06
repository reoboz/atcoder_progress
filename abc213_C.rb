h,w,n = gets.chomp.split.map(&:to_i)
x = Hash.new{|h,k| h[k] = []}
y = Hash.new{|h,k| h[k] = []}
(1..n).each do |i|
    x[i], y[i] = gets.chomp.split.map(&:to_i)
end

x = x.sort_by{|k,v| v}.to_h
y = y.sort_by{|k,v| v}.to_h

output_x = []
output_y = []

num = 0
last_num = -1
x.each_with_index do |(k,v),_|
    if v != last_num
        num += 1
        last_num = v
    end
    output_x[k] = num 
end

num = 0
last_num = -1
y.each_with_index do |(k,v),_|
    if v != last_num
        num += 1
        last_num = v
    end
    output_y[k] = num 
end


(1..n).each do |i|
    puts "#{output_x[i]} #{output_y[i]}"
end