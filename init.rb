require_relative "person"
puts "****************************************"
puts "******* ATRIX - MILITARES **************"
puts "****************************************"
puts "\n"
puts "****************************************"
puts "\n"
begin
puts "****************************************"
puts '1 - Buscar militar'
puts '2 - Alterar dados do militar'
puts '3 - Resetar senha SASIS'
puts '4 - Gerar arquivo para o GLPI'
puts '5 - Sair'
puts "****************************************"
puts "Opção: "
$option = STDIN.gets.chomp.to_i

case $option
when 1
  "chamar método 1"
when 2
  "chamar metodo 2"
when 3
  person = Person.new
  person.change_sasis_password
end


end while $option != 5
