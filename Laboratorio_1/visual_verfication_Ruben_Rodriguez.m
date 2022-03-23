function [] = visual_verfication_Ruben_Rodriguez(funcion, inicio, final,punto)

fplot(funcion,[inicio final], 'b');
hold on
fplot(@(x) x,[inicio final],'b')
plot(punto,punto,'k*')
hold off
grid on

end