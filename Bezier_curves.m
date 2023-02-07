t = 0:0.01:1;

%Use 4th order Bezier Curve from points B (through L) to C, from H (through A) to I.

%B through L to C

fx1 = [3; 1; 6; 11; 9];
fy1 = [4; 11.5; 10; 11.5; 4];

[C1x, C1y] = fourth_order(fx1, fy1, t);

%H through A to I

fx2 = [ 1; -1; 6; 13;11];
fy2 = [ 5; 13.75; 12; 13.75 ;5];

[C1x, C1y] = fourth_order(fx2, fy2, t);


%D to J 
tx1 = [3; 2; 1; 0];
ty1 = [1; 0.5; 3.5; 4];

[D1x, D1y] = third_order(tx1, ty1, t);

%E to K 

tx2 = [9; 10; 11; 12];
ty2 = [1; 0.5; 3.5; 4];

[D1x, D1y] = third_order(tx2, ty2, t);

%F to J
sx1 = [0; -1; 4];
sy1 = [4; 0; 0];

[P1x, P1y] = second_order(sx1,sy1,t);

%D to H 
sx2 = [3; 1.5; 1];
sy2 = [1; 2; 5];

[P1x, P1y] = second_order(sx2,sy2,t);

%F to B
sx3 = [3; 5; 4];
sy3 = [4; 2; 0];

[P1x, P1y] = second_order(sx3,sy3,t);

%G to C 
sx4 = [ 9; 7; 8];
sy4 = [ 4; 2; 0];

[P1x, P1y] = second_order(sx4,sy4,t);

%E to I 
sx5 = [9; 10.5 ; 11];
sy5 = [1; 2; 5];
[P1x, P1y] = second_order(sx5,sy5,t);

% K to G 
sx6 = [8;13;12];
sy6 = [0;0;4];
[P1x, P1y] = second_order(sx6,sy6,t);


%Ensure the same tangent in points B, C, I, H.
