function plotPandemicF(handles)

%% Import figure 
pandemic=imread('image003.jpg');

%% find image and scale 

[ny, nx, nz]=size(pandemic);

pandemicWidth=15;
pandemicHeight=pandemicWidth*(ny/nx);

%% flip color planes

for k=1:3
    pandemic(:,:,k)=flipud(pandemic(:,:,k));
end

%% create axes 
axis xy
axis equal
axis(handles.board,[0, 15, 0, 10]);
set(handles.board,'xtick',[])
set(handles.board,'ytick',[])
hax=handles.board;


hPimage=image('CData', pandemic);
hPimage.Parent=hax;



%% set coordinates of lower left and upper right corners
xLL=0;
yLL=0;
xUR=xLL+pandemicWidth;
yUR=yLL+pandemicHeight;

hPimage.XData=[xLL, xUR];
hPimage.YData=[yLL, yUR];

