
N = 5000;
r = rand(N,3);
soft = 1e-2;
tic 
N = size(r, 1);
soft2 = soft^2;
x = (1:N);
[xg,yg] = meshgrid(x,x);
% indices = np.broadcast_to(range(N),(N,N)).T;
dr = sqrt(sum((r(xg(:),:) - r(yg(:),:)).^2, 2) + soft2);
pot = sum(tril(1./dr,-1));
toc