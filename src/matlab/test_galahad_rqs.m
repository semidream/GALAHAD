% test galahad_rqs
% Nick Gould for GALAHAD productions 19/February/2009

clear A H M control

m = 0 ;
n = 10 ;
control.out = 6 ;
control.IR_control.acceptable_residual_relative = 0.9 ;
control.IR_control.acceptable_residual_absolute = 0.9 ;

f = 1.0 ;
p = 3.0 ;
sigma = 1.0 ;
c(1:n)= 1.0 ;
H(1:n,1:n) = 0.0 ;
for i = 1:n
 H(i,i) = i-(n/2) ;
end
M(1:n,1:n) = 0.0 ;
for i = 1:n
  M(i,i) = 1.0 ;
end
for i = 1:m
 for j = 1:n
  A(i,j) = i+j ;
 end
end
if m > 0
% [ x, inform ] = galahad_rqs( H, c, f, p, sigma )
%[ x ] = galahad_rqs( H, c, f, p, sigma, control, M, A )
%   [ x, inform ] = galahad_rqs( H, c, f, p, sigma, control, M )
  [ x, inform ] = galahad_rqs( H, c, f, p, sigma, control, M, A )
else
  [ x, inform ] = galahad_rqs( H, c, f, p, sigma, control, M )
end

m = 2 ;

for i = 1:m
 for j = 1:n
  A(i,j) = i+j ;
 end
end
if m > 0
% [ x, inform ] = galahad_rqs( H, c, f, p, sigma )
%[ x ] = galahad_rqs( H, c, f, p, sigma, control, M, A )
%   [ x, inform ] = galahad_rqs( H, c, f, p, sigma, control, M )
  [ x, inform ] = galahad_rqs( H, c, f, p, sigma, control, M, A )
else
  [ x, inform ] = galahad_rqs( H, c, f, p, sigma, control, M )
end

