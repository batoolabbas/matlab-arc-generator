function arc_points = getarc(r,as,c,axis_3D)
%getarc: returns 2D points for an arc in (optionally) 3D space with specific orientation

% Input Parameters: 
% r - radius of desired arc
% as - 1x2 vector containing start and ending angles (radians) for the arc
% c - 1x3 vector containing the center for the arc in [x,y,z] format (can also be 1x2 [x,y])
% axis_3D is the desired vector perpendicular to the surface of the circle
% in 3D space that determines the 3D orientation of the arc

%Output:
% arc_points - 3x101 array of arc points in 3D space in the format [x;y;z]

% Author: Batool Abbas
% Email: batool.abbas@nyu.edu
% Last revision: Oct, 2018


if(nargin==3)
    axis_3D = [0,0,-1];
else
    if(nargin==2)
        c=[0,0,0];
    end
end

if(length(c)==2) %0 for z component 
    c = [c,0];
end
    

nsegments = 100;

%get points defining desired 2D arc centered in xy-plane
theta = linspace(as(1),as(2),nsegments);
input_points = [r * cos(theta);
        r * sin(theta);
        zeros(size(theta))];

%make sure desired plane isn't already parallel to x-y plane
if(norm(cross([0,0,-1],axis_3D))~=0)

    %get required rotation to make arc parallel to desired plane
    R = vrrotvec2mat(vrrotvec([0,0,-1],axis_3D));
    
else
    
    R = eye(3);
    
end

%apply rotation to points
arc_points = R*input_points;

%translate points to desired center
arc_points = arc_points + c';

end
