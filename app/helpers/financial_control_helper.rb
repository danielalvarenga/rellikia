module FinancialControlHelper

  def months(number = false)
    months = {1 => "Janeiro", 2 => "Fevereiro", 3 => "Março", 4 => "Abril", 5 => "Maio", 6 => "Junho",
             7 => "Julho", 8 => "Agosto", 9 => "Setembro", 10 => "Outubro", 11 => "Novembro", 12 => "Dezembro"}
    if number
      months[number]
    else
      months
    end
  end

end
