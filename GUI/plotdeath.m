function plotdeath(handles)

%% Import figure 

death=imread('x-red.jpg');
%% find image and scale 
[ry, rx, rz]=size(death);
deathWidth=15;
deathHeight=deathWidth*(ry/rx);


%% flip color planes

for k=1:3
    death(:,:,k)=flipud(death(:,:,k));
end

%% create axes 

axis(handles.d1,[0, 15, 0, 10]);
set(handles.d1,'xtick',[])
set(handles.d1,'ytick',[])

axis(handles.d2,[0, 15, 0, 10]);
set(handles.d2,'xtick',[])
set(handles.d2,'ytick',[])

axis(handles.d3,[0, 15, 0, 10]);
set(handles.d3,'xtick',[])
set(handles.d3,'ytick',[])

axis(handles.d4,[0, 15, 0, 10]);
set(handles.d4,'xtick',[])
set(handles.d4,'ytick',[])

axis(handles.d5,[0, 15, 0, 10]);
set(handles.d5,'xtick',[])
set(handles.d5,'ytick',[])


hax2=handles.d1;
hax3=handles.d2;
hax4=handles.d3;
hax5=handles.d4;
hax6=handles.d5;

%% create figure and place on axis


h1Pimage=image('CData', death);
h2Pimage=image('CData', death);
h3Pimage=image('CData', death);
h4Pimage=image('CData', death);
h5Pimage=image('CData', death);

h1Pimage.Parent=hax2;
h2Pimage.Parent=hax3;
h3Pimage.Parent=hax4;
h4Pimage.Parent=hax5;
h5Pimage.Parent=hax6;


rLL=0;
dLL=0;
rUR=rLL+deathWidth;
dUR=dLL+deathHeight;

h1Pimage.XData=[rLL, rUR];
h1Pimage.YData=[dLL, dUR];

h2Pimage.XData=[rLL, rUR];
h2Pimage.YData=[dLL, dUR];

h3Pimage.XData=[rLL, rUR];
h3Pimage.YData=[dLL, dUR];

h4Pimage.XData=[rLL, rUR];
h4Pimage.YData=[dLL, dUR];

h5Pimage.XData=[rLL, rUR];
h5Pimage.YData=[dLL, dUR];


