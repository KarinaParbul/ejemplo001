class PalabrasRepetidas
    attr_accessor :texto

    def initialize(texto)
      @texto = texto
    end

  #metodo de actualizacion
    def actualizar(nuevo_texto)
        @texto=nuevo_texto
    end
  #metodo
    def contador_repetidas
      palabras = @texto.scan(/\w+/)
  
      contador = Hash.new(0)
  
      palabras.each do |palabra|
        contador[palabra.downcase] += 1  
      end
  
      contador
    end
  end
  

  texto = "Carro, casa, carro, bicicleta"
  contador = PalabrasRepetidas.new(texto)
  r = contador.contador_repetidas
  
  # Imprimir el resultado
puts "Primer texto:"
  r.each do |palabra, cuenta|
    puts "La palabra: '#{palabra}', esta repetida: #{cuenta} veces."
  end

  #Actualizar texto
contador.actualizar_texto("Carro, avion, carro, moto")
r2=contador.contador_repetidas

puts "\nTexto Actualizado:"
r2.each do |palabra, cuenta|
     puts "La palabra: '#{palabra}', esta repetida: #{cuenta} veces."
end
