require_relative 'orm'
class Person
  # Author: Antonio Ricardo

    def change_sasis_password
      puts 'clear'
      puts "Informe o saram do militar que irá resetar a senha do SASIS: "
      saram = STDIN.gets.chomp.to_s
      con = Orm.new
      con.open_connection
      person_update = con.sasis_password saram
      if person_update
        puts "Senha resetada com sucesso!"
        puts "\n"
        puts "{Nova senha: 12345678}"
      else
        puts "Houve um erro ao realizar a alteração!"
      end
    end
end
