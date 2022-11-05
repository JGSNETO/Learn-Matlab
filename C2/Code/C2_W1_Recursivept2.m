function sierpinski(depth)
    s=1; c = [0;0]; %s = length of side, c = center
    clf; axis([c(1)-s/2,c(1)+s/2, c(2)-s/2, c(2)+s/2], 'equal');
    title(sprintf('Sierpinski triangle with depth = %d', depth))
    hold on;
    plot(1/2*[-1,0,1,-1],sqrt(3)/4*[-1,1,-1,-1],'r--');
    sier(depth, s, c);
    hold off;
end
function sier(d,s,c)
    if d==0
        pause(2/3)
        plot(c(1)-[s,0,-s,s]/2, c(2)-[s,-s,s,s]*sqrt(3)/4,'k');
    else %recursive case
        s = s/2;
        h = s*sqrt(3)/2;
        sier(d-1,s,c-[s;h]/2);%bottom left
        sier(d-1,s,c+[0;h]/2);%Top middle
        sier(d-1,s,c+[s;-h]/2);%Bottom right 
    end
end


           