class Corrector
    def correct_name(name)
      if name[0].upcase and name.length > 10
        name.chr.upcase + name[1..9]
      else
        name.chr.upcase + name[1..name.length]
      end
    end
end

corrector = Corrector.new("abraracourcix")
corrector1 = Corrector.new("willy")
puts corrector.name
puts corrector.correct_name
puts corrector1.name
puts corrector1.correct_name
