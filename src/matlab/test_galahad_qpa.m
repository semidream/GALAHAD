% test galahad_qpa
% Nick Gould for GALAHAD productions 17/February/2010

clear A H

%m = 800 ;
m = 5 ;
n = 4 ;
f = 1.0 ;
g(1:n)= 1.0 ;
H(1:n,1:n) = 0.0 ;
for i = 1:n
 H(i,i) = i ;
end
for i = 1:m
 for j = 1:n
  A(i,j) = i+j ;
 end
end
for i = 1:m
 c_l(i) = i ;
 c_u(i) =  5 * i ;
end
for i = 1:n
 x_l(i) = 0 ;
 x_u(i) =  100.0 ;
end
[ x, inform, aux ] = galahad_qpa( H, g, f, A, c_l, c_u, x_l, x_u )

rho_g = 0.1 ;
rho_b = 0.1 ;

[ x, inform, aux ] = galahad_qpa( H, g, f, A, c_l, c_u, x_l, x_u, ...
                                  rho_g, rho_b )
