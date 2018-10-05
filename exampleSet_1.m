
%Example 1: plot a circle with radius = 5 centered at origin

pts = getarc(5,[0,2*pi],[0,0]);
plot(pts(1,:),pts(2,:),'LineWidth',2);

%%
%Example 2: plot a semi-circle with radius = 5 centered at origin

pts = getarc(5,[pi,2*pi],[0,0]);
plot(pts(1,:),pts(2,:),'LineWidth',2);

%%
%Example 3: plot a flipped semi-circle with radius = 1 centered at (4,3)

pts = getarc(1,[2*pi,3*pi],[4,3]);
plot(pts(1,:),pts(2,:),'LineWidth',2);

%%
%Example 4: plot an arc with radius = 1 centered at (0,0)

center = [0,0];

pts = getarc(1,[0,pi/4],center);
plot([center(1),pts(1,:),center(1)],[center(2),pts(2,:),center(2)],'LineWidth',2);

%%
%Example 5: plot an arc with radius = 1 centered at (0,0) and perpendicular
%to [0,1,0]

center = [0,0,0];

pts = getarc(1,[0,pi/2],center, [0,1,0]);
plot3(pts(1,:),pts(2,:),pts(3,:),'LineWidth',2);


%%
%Example 6: plot an arc with radius = 1 centered at (0,0) and perpendicular
%to [1,5,6]

center = [0,0,0];

pts = getarc(1,[pi/4,2*pi],center, [1,5,6]);
plot3([center(1),pts(1,:),center(1)],[center(2),pts(2,:),center(2)],[center(3),pts(3,:),center(3)],'LineWidth',2);
