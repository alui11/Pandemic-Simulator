function varargout = pandemicStrategyCompare(varargin)
% PANDEMICSTRATEGYCOMPARE MATLAB code for pandemicStrategyCompare.fig
%      PANDEMICSTRATEGYCOMPARE, by itself, creates a new PANDEMICSTRATEGYCOMPARE or raises the existing
%      singleton*.
%
%      H = PANDEMICSTRATEGYCOMPARE returns the handle to a new PANDEMICSTRATEGYCOMPARE or the handle to
%      the existing singleton*.
%
%      PANDEMICSTRATEGYCOMPARE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PANDEMICSTRATEGYCOMPARE.M with the given input arguments.
%
%      PANDEMICSTRATEGYCOMPARE('Property','Value',...) creates a new PANDEMICSTRATEGYCOMPARE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pandemicStrategyCompare_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pandemicStrategyCompare_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pandemicStrategyCompare

% Last Modified by GUIDE v2.5 16-Mar-2016 17:09:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pandemicStrategyCompare_OpeningFcn, ...
                   'gui_OutputFcn',  @pandemicStrategyCompare_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before pandemicStrategyCompare is made visible.
function pandemicStrategyCompare_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pandemicStrategyCompare (see VARARGIN)

% Choose default command line output for pandemicStrategyCompare
handles.output = hObject;
axis([0 2 0 1])
cnames={'Average Cards Left  ', 'Average Outbreaks  ','Average Diseases Cured  ',...
    'Average Research Stations Built ', 'Win Rate '};
rnames={'Random', 'Treating over Curing', 'Curing over Treating', 'Compromise'};
handles.dataTable.ColumnName=cnames
handles.dataTable.RowName=rnames
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes pandemicStrategyCompare wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = pandemicStrategyCompare_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Nruns_Callback(hObject, eventdata, handles)
% hObject    handle to Nruns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Nruns as text
%        str2double(get(hObject,'String')) returns contents of Nruns as a double


% --- Executes during object creation, after setting all properties.
function Nruns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Nruns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Start2.
function Start2_Callback(hObject, eventdata, handles)
% hObject    handle to Start2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
algorithmTesterF(handles);
% --- Executes on button press in StrategyCompare1.
function StrategyCompare1_Callback(hObject, eventdata, handles)
% hObject    handle to StrategyCompare1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of StrategyCompare1


% --- Executes on button press in StrategyCompare2.
function StrategyCompare2_Callback(hObject, eventdata, handles)
% hObject    handle to StrategyCompare2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of StrategyCompare2


% --- Executes on button press in StrategyCompare3.
function StrategyCompare3_Callback(hObject, eventdata, handles)
% hObject    handle to StrategyCompare3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of StrategyCompare3


% --- Executes on button press in StrategyCompare4.
function StrategyCompare4_Callback(hObject, eventdata, handles)
% hObject    handle to StrategyCompare4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of StrategyCompare4
