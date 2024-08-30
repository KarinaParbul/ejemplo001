class String
    def reverse_string
        reverse
    end

    def to_uppercase
        upcase 
    end

    def to_lowercase
        downcase
    end
end

str="Karina"
puts "Reversa: #{str.reverse_string}"
puts "Mayusculas: #{str.to_uppercase}"
puts "Minusculas: #{str.to_lowercase}"
