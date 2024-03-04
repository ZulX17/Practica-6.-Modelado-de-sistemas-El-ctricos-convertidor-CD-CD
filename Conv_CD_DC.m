function dx=Conv_CD_DC(t,x)
%---Definicion de los parametros---%
R= 10;          %Ohms
L= 2e-3;        %Henrios
C= 10e-6;       %Faradios
Uin=32;         %Volts
d=0.381;        %Ciclo de trabajo
%---Vector de 4x1---%
dx=zeros(2,1)
%---Definicion de la dinamica del sitema---%
dx(1)=-((1/L)*x(2))+((Uin/L)*d); 
dx(2)=((1/C)*x(1))-((1/(R*C))*x(2));
%------%    