%Plotting

%t = 0:pi/50:10*pi;
%plot3(sin(t), cos(t), t);

x_coordinates = [1,3,10];
y_coordinates = [2, -4, 2];
plot(x_coordinates, y_coordinates)
length(x_coordinates)
plot(x_coordinates, y_coordinates, '*') % * Points instead a line
grid on % Grid
xlabel('Selection')
ylabel('Change')
title('Changes in Selections during the past year')
axis([0,12,-10,20]) %Takes a four-element vector.
%The first element is the left end of the horizontal
%axis. The right end will be 12. The botton end of the vertical axis    
%is next, that's going to be minus 10. Upper axis limit 20.
bar(x_coordinates, y_coordinates) %Bar graph    
figure 
pie([4,2,7,4,7])
%close all %Close all fictures
%Load picture
%pic = imread('filename');
%image(pic)

