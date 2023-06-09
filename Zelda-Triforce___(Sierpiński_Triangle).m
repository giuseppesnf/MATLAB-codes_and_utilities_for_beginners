N=1E6;%n° of iterations
a=zeros(N,2);%vector of the coordinates of the points
a(1,:)=[0,0];%vertices
a(2,:)=[1,0];
a(3,:)=[0.5,1];
s=rand(1,2);%first random point
sz=1;

%uncomment for sequential building
% scatter(a(1:3,1),a(1:3,2),sz, 'filled')
% drawnow
% hold on

for i=4:N
    point=randsample(3,1);
    as=a(point,:);
    x=(as(1,1)+s(1,1))/2;%middle point coordinates
    y=(as(1,2)+s(1,2))/2;
    s=[x y];
    a(i,:)=s;
    
%   uncomment for sequential building    
%   scatter(s(1,1),s(1,2),sz, 'filled')
%   drawnow
%   hold on

end


%(optional) ----> scatter for sequential building

scatter(a(:,1),a(:,2),sz, 'filled')
