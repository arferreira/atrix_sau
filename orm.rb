require 'sequel'
class Orm
  # Author: Antonio Ricardo
  $person = "tb_pessoas"
  def open_connection
  @con = Sequel.connect('postgres://antonioricardo:rub32912289@127.0.0.1:5433/sims_bacg')
  end

  def sasis_password(saram)
    update_sasis_pass = @con["UPDATE #{$person} SET sasis_senha = '12345678' WHERE pescodigo = '#{saram}'"]
    result = update_sasis_pass  ? true : false
    return result
  end


end
