#Calculo con usuarios definidos Normales y Premium sin Clientes Gratuitos

_Precio = ARGV[0].to_i
_Cant_Users = ARGV[1].to_i
_Cant_Users_Prime = ARGV[2].to_i
_Gastos = ARGV[3].to_i


if _Precio == 0 || _Cant_Users == 0 || _Cant_Users_Prime == 0 || _Gastos == 0
puts "Debes ingresar las 4 variables. Las variables son Precio, Usuarios_Normales, Usuarios_Prime y Gastos."
  exit
end


_Utilidad = (_Precio * _Cant_Users) + (_Precio * _Cant_Users_Prime * 2) - _Gastos

if _Utilidad > 0
  _Utilidad = _Utilidad - (_Utilidad * 0.35)
  puts "El calculo de utilidad con impto es #{_Utilidad}"
else
  puts "El proyecto es inviable, el calculo de utilidad es negativa. La utilidad es #{_Utilidad}"
end
