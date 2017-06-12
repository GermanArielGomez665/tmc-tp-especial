

clear
clc
%inicializar y restaurar

% Inicializamos un error epsilon
epsilon = 0.1;

% Calculamos la probabilidad 
[probabilidad, todas_las_probabilidades] = probabilidad_estimada_dos_tiros_fallidos(epsilon);

% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de dos rechazos es: %f \n', probabilidad);

% Graficamos cómo fue evolucionando la probabilidad iteración a iteración
figure, plot(todas_las_probabilidades);
hold on
plot(ones(size(todas_las_probabilidades)));
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

p_inicial = std(todas_las_probabilidades(1:20));
p_final = std(todas_las_probabilidades(end-20:end));


epsilon = 0.01;

% Calculamos la probabilidad 
[probabilidad, todas_las_probabilidades] = probabilidad_estimada_dos_tiros_fallidos(epsilon);

% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de dos rechazos es: %f \n', probabilidad);

% Graficamos cómo fue evolucionando la probabilidad iteración a iteración
figure, plot(todas_las_probabilidades);
hold on
plot(ones(size(todas_las_probabilidades)));
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');


p_inicial = std(todas_las_probabilidades(1:20));
p_final = std(todas_las_probabilidades(end-20:end));


epsilon = 0.001;


% Calculamos la probabilidad 
[probabilidad, todas_las_probabilidades] = probabilidad_estimada_dos_tiros_fallidos(epsilon);

% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de dos rechazos es: %f \n', probabilidad);

% Graficamos cómo fue evolucionando la probabilidad iteración a iteración
figure, plot(todas_las_probabilidades);
hold on
plot(ones(size(todas_las_probabilidades)));
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

p_inicial = std(todas_las_probabilidades(1:20));
p_final = std(todas_las_probabilidades(end-20:end));
