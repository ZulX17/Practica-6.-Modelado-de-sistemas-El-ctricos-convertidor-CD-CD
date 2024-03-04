%Funcion ode45 que resuelve numericamente el sistema Pendulo Doble%
[t,x]=ode45(@Conv_CD_DC,[0 0.01],[0 0]);
%Aqui se crea la figura donde se va a graficar el x con respecto a t%
%x y t son paramentros que retorna la funcion ode45
figure(1)
plot(t,x(:,1),'m');
grid on
title("Corriente Inductancia");
xlabel("Tiempo");   
ylabel("Amperaje");
figure(2)
plot(t,x(:,2),'m');
grid on
title("Voltaje Capacitor");
xlabel("Tiempo");
ylabel("Voltaje")

figure (3)
plot(t,x(:,1), 'y','LineWidth',2);
hold on
grid on
title("Ambas");
xlabel("Tiempo");
ylabel("Voltaje-Corriente");
plot(t,x(:,2), 'b');
grid on
