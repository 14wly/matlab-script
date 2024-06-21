clf
[x,y,z]=sphere(30);
h=surf(x,y,z);
axis off

title('Ðý×ªµÄÇòÌå');

for i=1:12
    rotate(h,[0,0,1],25);
    m(i)=getframe;
end

movie(m,10,10);