function [probabilidad, todas_las_probabilidades] = probabilidad_estimada_dos_tiros_fallidos(epsilon)

  % Inicializo las variables que necesito
    probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  total_intentos = 0;
  todas_las_probabilidades = [];
  DNI = 30229487;
  otro_permiso=0;
 
  tic
  
  % Mientras el algoritmo no converge
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_intentos)
  
    % La probabilidad anterior es la probabilidad actual
    probabilidad_anterior = probabilidad_actual;
  
    % pruebo
    permiso = my_mex_service(30229487);
   % otro_permiso = my_mex_service(30229487);
    
    % Actualizo la cantidad de tiradas
    total_intentos = total_intentos + 1;
    
    % Chequeo tiro
    
    if((permiso==0)&&(otro_permiso==0))
    
          casos_favorables = casos_favorables + 1;
    end
    
    otro_permiso=permiso;
  %  if strcmp(permiso, 'no_concedido') && strcmp(otro_permiso, 'no_concedido')
  %  fprintf('algo'); 
  %   casos_favorables = casos_favorables + 1;
  %  end
    
    % Calculo la probabilidad actual
    probabilidad_actual = casos_favorables / total_intentos;
    
    % Esto es solamente para poder hacer el grafico ----------------------------
    todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
    % --------------------------------------------------------------------------
        
  end
  
  toc
  
  % Devuelvo la probabilidad actual
  probabilidad = probabilidad_actual;

end
