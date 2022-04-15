function f = cubecone()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


VarStr = input( ' куб или конус ', 's' );
 if strcmp(VarStr,'куб')
  r= input('r='  );    
  X = [0 0 0 0 0 1; 1 0 1 1 1 1; 1 0 1 1 1 1; 0 0 0 0 0 1];
  Y = [0 0 0 0 1 0; 0 1 0 0 1 1; 0 1 1 1 1 1; 0 0 1 1 1 0];
  Z = [0 0 1 0 0 0; 0 0 1 0 0 0; 1 1 1 0 1 1; 1 1 1 0 1 1];

  C='blue';                  % unicolor
  X = r*(X-0.5);
  Y = r*(Y-0.5);
  Z = r*(Z-0.5); 
  figure;
  fill3(X,Y,Z,C,'FaceAlpha',0.8);    % draw cube
  axis equal


else if  strcmp(VarStr,'конус')
        
  r= input('r='  );  
  h= input('h='  );  

  m = h/r;
  [R,A] = meshgrid(linspace(0,r,11),linspace(0,2*pi,41));
  X = R .* cos(A);
  Y = R .* sin(A);
  Z = m*R;
 % Cone around the z-axis, point at the origin
  figure;
  mesh(X,Y,Z)

  hold on
  axis equal
  



  end
end
end