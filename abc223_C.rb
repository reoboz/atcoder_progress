N = gets.chomp.to_i
M = Array.new(N){ gets.to_s.split.map{ |e| e.to_i } } 
time = 0
length = 0.0
(0..N-1).each do |i|
  a = M[i][0]
  b = M[i][1]
  time += a.to_f / b 
end

time /= 2
(0..N-1).each do |i|
  a = M[i][0]
  b = M[i][1]
  if time > a.to_f / b
    length += a
    time -= a.to_f / b
    # "#{a.to_f / b}秒使って#{a}伸ばす.残り#{time}"
  else
    length += b * time.to_f
    time = 0
    # "#{time}秒使って#{b * time.to_f}伸ばす.残り#{time}"
  end
end

puts length

# 時間使い切った時にtime = 0にするのを忘れてた