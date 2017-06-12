
function permiso = puedo_tirar()

  % Obtengo un numero aleatorio
  A = my_mex_service(30229487);
  
  
  % Si el número aleatorio es menor a 0.5, considero que salio cara
  if A < 0.5
    permiso = 'concedido';
  else
    permiso = 'no_concedido';
  end    

end