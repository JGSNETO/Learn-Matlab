%Function handle:

%Trig is a variable whose type is function handle
trig=@sin
x=trig(pi/2)
xpt = {@sin @cos @plot}
%Con with argument input 0
xpt{2}(0)

%fplot: Deals better with discontinuities   
fplot(@sin, [0 2*pi])

%Nested function

function [y1, y2] = first_nested_example(x)
    c = 10;
    sub(c,x);
    y1 = inner(X);

    %nested function 
    function out = inner(in)
        out = c*in;
    end

    c = 11;
    sub(c,x);
    y2 = inner(x);
end

function sub(in1, in2)
    fprintf('Multiplying %d times %d\n', in1, in2)
end

%Nested function shared variables with the main function. But the shared
%var must be defined in the parent function 

function assignment_rule
    r=7;
    circle_area=[];
    calculate_area
    fprintf('Area of circle with radius %.1f = %.if\n', r,circle_area)

    function calculate_area
        circle_area=pi*r^2;
    end
end