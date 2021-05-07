class Usuario
    def initialize(nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas
    end

    def saldo_total
        @cuentas.map {|cuenta| cuenta.saldo}
    end

end

class CuentaBancaria
    attr_accessor :saldo
    def initialize(banco, numero_de_cuenta, saldo = 0)
       @banco = banco
       @numero_de_cuenta = numero_de_cuenta
       @saldo = saldo
    end

    def transferir(monto, otra_cuenta)
        @saldo -= monto
        otra_cuenta.saldo += monto
    end
end


c1 = CuentaBancaria.new("Banco de Chile", "111", 5000)
c2 = CuentaBancaria.new("Banco Santander", "222", 5000)

puts "Saldo Inicial"
pp c1
pp c2

puts "-------------"
puts "Saldo con trasnferencia"
c1.transferir(2000, c2)

pp c1
pp c2


puts "-------------"

cliente = Usuario.new("Pepito", [c1,c2])

puts cliente.saldo_total