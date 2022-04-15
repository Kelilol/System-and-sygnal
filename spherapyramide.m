function f = spherapyramide()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


VarStr = input( ' сфера или пирамида ', 's' );
if strcmp(VarStr,'сфера')
 
    R= input('R='  );
    N = 20;
    thetavec = linspace(0,pi,N);
    phivec = linspace(0,2*pi,2*N);
    [th, ph] = meshgrid(thetavec,phivec);

    x = R.*sin(th).*cos(ph);
    y = R.*sin(th).*sin(ph);
    z = R.*cos(th);

    figure;
    surf(x,y,z);
    axis vis3d  
else if  strcmp(VarStr,'пирамида')
      h= input('h='  );
      L= input('l='  );
      X = [0 0 0 L 0;
           L L 0 L L; 
           L L/2 L/2 L/2 L/2; 
           0 0 0 L 0];
      Y = [0 0 0 0 L; 
           0 0 L L L; 
           L L/2 L/2 L/2 L/2; 
           L 0 0 0 L];
      Z = [0 0 0 0 0; 
           0 0 0 0 0; 
           0 h h h h; 
           0 0 0 0 0];
      X
      Y
      Z
      C='blue';                  % unicolor
      fill3(X,Y,Z,C,'FaceAlpha',0.7);    % draw cube
      axis equal  
    end
end


end

