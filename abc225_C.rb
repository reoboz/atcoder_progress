N, M = gets.chomp.split.map(&:to_i)
B = []
(1..N).each do |i|
    b = gets.chomp.split.map(&:to_i)
    B.push b
end
(0..N-1).each do |i|
    (0..M-1).each do |j|
        if j != M-1 && B[i][j] % 7 == 0 && B[i][j+1] % 7 == 1
            puts "No"
            exit
        end
        unless i == N-1 || B[i][j]+7 == B[i+1][j]
            puts "No"
            exit
        end
        unless j == M-1 || B[i][j]+1 == B[i][j+1]
            puts "No"
            exit
        end
    end
end

puts "Yes"