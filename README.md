# matlab-arc-generator
MATLAB function for generating points for an arc in (optionally) 3D space specified by the following parameters:

  r = radius of desired arc

  as = 1x2 vector containing start and ending angles (radians) for the arc

  c = 1x3 vector containing the center for the arc in [x,y,z] format (can also be 1x2 [x,y])

  axis_3D (optional for arcs in 3D space) = desired vector perpendicular to the surface of the circle in 3D space that determines the 3D orientation of the arc
