# matlab-arc-generator
MATLAB function for generating points for an arc in 3D space

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

