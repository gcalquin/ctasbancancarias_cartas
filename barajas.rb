require_relative "carta"
class Baraja
    attr_accessor :cartas
    def initialize

       pintas = ["C", "D", "E", "T"]

       @cartas =[]
       pintas.each do |pinta|
           13.times do |i|
               carta_temp = Carta.new(i+1, pinta)
               @cartas.push(carta_temp)
           end
       end
    end

    def barajar
        @cartas.shuffle
    end

    def sacar
        @cartas.pop
    end


    def repartir_mano
        mano=[]
        5.times do
            mano.push(sacar)
        end
        mano
    end

end

baraja1 = Baraja.new

pp "Baraja incial ordenada"
pp baraja1


pp "ejecuto el shuffle"
pp baraja1.barajar

pp "Muestro baraja con shufle"
pp baraja1.barajar

pp "5 primeras cartas de baraja 1"
pp baraja1.repartir_mano
