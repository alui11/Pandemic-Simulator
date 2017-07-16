function varargout = pandemicBoard(varargin)
% PANDEMICBOARD MATLAB code for pandemicBoard.fig
%      PANDEMICBOARD, by itself, creates a new PANDEMICBOARD or raises the existing
%      singleton*.
%
%      H = PANDEMICBOARD returns the handle to a new PANDEMICBOARD or the handle to
%      the existing singleton*.
%
%      PANDEMICBOARD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PANDEMICBOARD.M with the given input arguments.
%
%      PANDEMICBOARD('Property','Value',...) creates a new PANDEMICBOARD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pandemicBoard_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pandemicBoard_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pandemicBoard

% Last Modified by GUIDE v2.5 20-Apr-2016 22:58:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pandemicBoard_OpeningFcn, ...
                   'gui_OutputFcn',  @pandemicBoard_OutputFcn, ...
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


% --- Executes just before pandemicBoard is made visible.
function pandemicBoard_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pandemicBoard (see VARARGIN)

% Choose default command line output for pandemicBoard
handles.output = hObject;
plotPandemicF(handles);
plotdeath(handles);
uistack(handles.d1,'bottom')
uistack(handles.d2,'bottom')
uistack(handles.d3,'bottom')
uistack(handles.d4,'bottom')
% Update handles structure
guidata(hObject, handles);


% UIWAIT makes pandemicBoard wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = pandemicBoard_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in Strategies.
function Strategies_Callback(hObject, eventdata, handles)
% hObject    handle to Strategies (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Strategies contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Strategies


% --- Executes during object creation, after setting all properties.
function Strategies_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Strategies (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startButton.
function startButton_Callback(hObject, eventdata, handles)
% hObject    handle to startButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        set(handles.outbreak0, 'Visible', 'on');
        set(handles.outbreak1, 'Visible', 'off');
        set(handles.outbreak2, 'Visible', 'off');
        set(handles.outbreak3, 'Visible', 'off');
        set(handles.outbreak4, 'Visible', 'off');
        set(handles.outbreak5, 'Visible', 'off');
        set(handles.outbreak6, 'Visible', 'off');
        set(handles.outbreak7, 'Visible', 'off');
        set(handles.outbreak8, 'Visible', 'off');
        
        uistack(handles.d1,'bottom')
        uistack(handles.d2,'bottom')
        uistack(handles.d3,'bottom')
        uistack(handles.d4,'bottom')
        
        handles.sanFranciscoDisease.String = '0'
        handles.chicagoDisease.String = '0';
        handles.montrealDisease.String = '0';
        handles.newYorkDisease.String = '0';
        handles.atlantaDisease.String = '0';
        handles.washingtonDisease.String = '0';
        handles.londonDisease.String = '0';
        handles.essenDisease.String = '0';
        handles.stPetersburgDisease.String = '0';
        handles.madridDisease.String = '0';
        handles.parisDisease.String = '0';
        handles.milanDisease.String = '0';
        handles.losAngelesDisease.String = '0';
        handles.mexicoCityDisease.String = '0';
        handles.miamiDisease.String = '0';
        handles.bogotaDisease.String = '0';
        handles.limaDisease.String = '0';
        handles.santiagoDisease.String = '0';
        handles.buenosAiresDisease.String = '0';
        handles.saoPauloDisease.String = '0';
        handles.lagosDisease.String = '0';
        handles.khartoumDisease.String = '0';
        handles.kinshasaDisease.String = '0';
        handles.johannesburgDisease.String = '0';
        handles.algiersDisease.String = '0';
        handles.istanbulDisease.String = '0';
        handles.moscowDisease.String = '0';
        handles.cairoDisease.String = '0';
        handles.baghdadDisease.String = '0';
        handles.tehranDisease.String = '0';
        handles.riyadhDisease.String = '0';
        handles.karachiDisease.String = '0';
        handles.delhiDisease.String = '0';
        handles.mumbaiDisease.String = '0';
        handles.kolkataDisease.String = '0';
        handles.chennaiDisease.String = '0';
        handles.beijingDisease.String = '0';
        handles.seoulDisease.String = '0';
        handles.shanghaiDisease.String = '0';
        handles.tokyoDisease.String = '0';
        handles.hongKongDisease.String = '0';
        handles.taipeiDisease.String = '0';
        handles.osakaDisease.String = '0';
        handles.bangkokDisease.String = '0';
        handles.hoChiMinhDisease.String = '0';
        handles.manilaDisease.String = '0';
        handles.jakartaDisease.String = '0';
        handles.sydneyDisease.String = '0';
        
        set(handles.winnerorLoser, 'Visible', 'off')
        handles.winnerorLoser.String=' '
        handles.scientistCards.String=' '
        handles.researcherCards.String=' '
        handles.operationsECards.String=' '
        handles.medicCards.String=' '
drawnow
switch handles.Strategies.Value
    case 1
        algorithmRandomF(handles);
    case 2
        algorithm2F(handles);
    case 3
        algorithm5F(handles);
    case 4
        algorithm4F(handles);
end


    


function character1cards_Callback(hObject, eventdata, handles)
% hObject    handle to mediccards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mediccards as text
%        str2double(get(hObject,'String')) returns contents of mediccards as a double


% --- Executes during object creation, after setting all properties.
function character1cards_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mediccards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox10.
function checkbox10_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox10


% --- Executes on button press in checkbox11.
function checkbox11_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox11


% --- Executes on button press in checkbox12.
function checkbox12_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox12


% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7


% --- Executes on button press in checkbox8.
function checkbox8_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox8


% --- Executes on button press in checkbox9.
function checkbox9_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox9


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4


% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5


% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6


% --- Executes on button press in Medic.
function Medic_Callback(hObject, eventdata, handles)
% hObject    handle to Medic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Medic


% --- Executes on button press in Researcher.
function Researcher_Callback(hObject, eventdata, handles)
% hObject    handle to Researcher (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Researcher


% --- Executes on button press in Dispatcher.
function Dispatcher_Callback(hObject, eventdata, handles)
% hObject    handle to Dispatcher (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Dispatcher


% --- Executes on button press in Scientist.
function Scientist_Callback(hObject, eventdata, handles)
% hObject    handle to Scientist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Scientist


% --- Executes on button press in OperationsExpert.
function OperationsExpert_Callback(hObject, eventdata, handles)
% hObject    handle to OperationsExpert (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of OperationsExpert


% --- Executes on button press in checkbox15.
function checkbox15_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox15


% --- Executes on button press in checkbox16.
function checkbox16_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox16


% --- Executes on button press in checkbox17.
function checkbox17_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox17



function character2cards_Callback(hObject, eventdata, handles)
% hObject    handle to researchercards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of researchercards as text
%        str2double(get(hObject,'String')) returns contents of researchercards as a double


% --- Executes during object creation, after setting all properties.
function character2cards_CreateFcn(hObject, eventdata, handles)
% hObject    handle to researchercards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function character3cards_Callback(hObject, eventdata, handles)
% hObject    handle to operationecards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of operationecards as text
%        str2double(get(hObject,'String')) returns contents of operationecards as a double


% --- Executes during object creation, after setting all properties.
function character3cards_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operationecards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function character4cards_Callback(hObject, eventdata, handles)
% hObject    handle to scientistcard (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of scientistcard as text
%        str2double(get(hObject,'String')) returns contents of scientistcard as a double


% --- Executes during object creation, after setting all properties.
function character4cards_CreateFcn(hObject, eventdata, handles)
% hObject    handle to scientistcard (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in strategyCompareButton.
function strategyCompareButton_Callback(hObject, eventdata, handles)
% hObject    handle to strategyCompareButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pandemicStrategyCompare(handles);



function laDisease_Callback(hObject, eventdata, handles)
% hObject    handle to laDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of laDisease as text
%        str2double(get(hObject,'String')) returns contents of laDisease as a double


% --- Executes during object creation, after setting all properties.
function laDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to laDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mexicoCityDisease_Callback(hObject, eventdata, handles)
% hObject    handle to mexicoCityDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mexicoCityDisease as text
%        str2double(get(hObject,'String')) returns contents of mexicoCityDisease as a double


% --- Executes during object creation, after setting all properties.
function mexicoCityDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mexicoCityDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function atlantaDisease_Callback(hObject, eventdata, handles)
% hObject    handle to atlantaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atlantaDisease as text
%        str2double(get(hObject,'String')) returns contents of atlantaDisease as a double


% --- Executes during object creation, after setting all properties.
function atlantaDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atlantaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sanFranciscoDisease_Callback(hObject, eventdata, handles)
% hObject    handle to sanFranciscoDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sanFranciscoDisease as text
%        str2double(get(hObject,'String')) returns contents of sanFranciscoDisease as a double


% --- Executes during object creation, after setting all properties.
function sanFranciscoDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sanFranciscoDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function washingtonDisease_Callback(hObject, eventdata, handles)
% hObject    handle to washingtonDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of washingtonDisease as text
%        str2double(get(hObject,'String')) returns contents of washingtonDisease as a double


% --- Executes during object creation, after setting all properties.
function washingtonDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to washingtonDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function montrealDisease_Callback(hObject, eventdata, handles)
% hObject    handle to montrealDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of montrealDisease as text
%        str2double(get(hObject,'String')) returns contents of montrealDisease as a double


% --- Executes during object creation, after setting all properties.
function montrealDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to montrealDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function newYorkCityDisease_Callback(hObject, eventdata, handles)
% hObject    handle to newYorkCityDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of newYorkCityDisease as text
%        str2double(get(hObject,'String')) returns contents of newYorkCityDisease as a double


% --- Executes during object creation, after setting all properties.
function newYorkCityDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to newYorkCityDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function chicagoDisease_Callback(hObject, eventdata, handles)
% hObject    handle to chicagoDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of chicagoDisease as text
%        str2double(get(hObject,'String')) returns contents of chicagoDisease as a double


% --- Executes during object creation, after setting all properties.
function chicagoDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to chicagoDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function miamiDisease_Callback(hObject, eventdata, handles)
% hObject    handle to miamiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of miamiDisease as text
%        str2double(get(hObject,'String')) returns contents of miamiDisease as a double


% --- Executes during object creation, after setting all properties.
function miamiDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to miamiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bogotaDisease_Callback(hObject, eventdata, handles)
% hObject    handle to bogotaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bogotaDisease as text
%        str2double(get(hObject,'String')) returns contents of bogotaDisease as a double


% --- Executes during object creation, after setting all properties.
function bogotaDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bogotaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function limaDisease_Callback(hObject, eventdata, handles)
% hObject    handle to limaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of limaDisease as text
%        str2double(get(hObject,'String')) returns contents of limaDisease as a double


% --- Executes during object creation, after setting all properties.
function limaDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to limaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function santiagoDisease_Callback(hObject, eventdata, handles)
% hObject    handle to santiagoDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of santiagoDisease as text
%        str2double(get(hObject,'String')) returns contents of santiagoDisease as a double


% --- Executes during object creation, after setting all properties.
function santiagoDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to santiagoDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function buenosAiresDisease_Callback(hObject, eventdata, handles)
% hObject    handle to buenosAiresDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of buenosAiresDisease as text
%        str2double(get(hObject,'String')) returns contents of buenosAiresDisease as a double


% --- Executes during object creation, after setting all properties.
function buenosAiresDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to buenosAiresDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function saoPualoDisease_Callback(hObject, eventdata, handles)
% hObject    handle to saoPualoDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of saoPualoDisease as text
%        str2double(get(hObject,'String')) returns contents of saoPualoDisease as a double


% --- Executes during object creation, after setting all properties.
function saoPualoDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to saoPualoDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kinshasaDisease_Callback(hObject, eventdata, handles)
% hObject    handle to kinshasaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kinshasaDisease as text
%        str2double(get(hObject,'String')) returns contents of kinshasaDisease as a double


% --- Executes during object creation, after setting all properties.
function kinshasaDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kinshasaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function johannesburgDisease_Callback(hObject, eventdata, handles)
% hObject    handle to johannesburgDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of johannesburgDisease as text
%        str2double(get(hObject,'String')) returns contents of johannesburgDisease as a double


% --- Executes during object creation, after setting all properties.
function johannesburgDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to johannesburgDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lagosDisease_Callback(hObject, eventdata, handles)
% hObject    handle to lagosDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lagosDisease as text
%        str2double(get(hObject,'String')) returns contents of lagosDisease as a double


% --- Executes during object creation, after setting all properties.
function lagosDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lagosDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function khartoumDisease_Callback(hObject, eventdata, handles)
% hObject    handle to khartoumDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of khartoumDisease as text
%        str2double(get(hObject,'String')) returns contents of khartoumDisease as a double


% --- Executes during object creation, after setting all properties.
function khartoumDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to khartoumDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function madridDisease_Callback(hObject, eventdata, handles)
% hObject    handle to madridDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of madridDisease as text
%        str2double(get(hObject,'String')) returns contents of madridDisease as a double


% --- Executes during object creation, after setting all properties.
function madridDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to madridDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function parisDisease_Callback(hObject, eventdata, handles)
% hObject    handle to parisDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of parisDisease as text
%        str2double(get(hObject,'String')) returns contents of parisDisease as a double


% --- Executes during object creation, after setting all properties.
function parisDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to parisDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function londonDiease_Callback(hObject, eventdata, handles)
% hObject    handle to londonDiease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of londonDiease as text
%        str2double(get(hObject,'String')) returns contents of londonDiease as a double


% --- Executes during object creation, after setting all properties.
function londonDiease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to londonDiease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function essenDisease_Callback(hObject, eventdata, handles)
% hObject    handle to essenDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of essenDisease as text
%        str2double(get(hObject,'String')) returns contents of essenDisease as a double


% --- Executes during object creation, after setting all properties.
function essenDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to essenDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function stPetersburgDisease_Callback(hObject, eventdata, handles)
% hObject    handle to stPetersburgDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stPetersburgDisease as text
%        str2double(get(hObject,'String')) returns contents of stPetersburgDisease as a double


% --- Executes during object creation, after setting all properties.
function stPetersburgDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stPetersburgDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function milanDisease_Callback(hObject, eventdata, handles)
% hObject    handle to milanDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of milanDisease as text
%        str2double(get(hObject,'String')) returns contents of milanDisease as a double


% --- Executes during object creation, after setting all properties.
function milanDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to milanDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function algiersDisease_Callback(hObject, eventdata, handles)
% hObject    handle to algiersDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of algiersDisease as text
%        str2double(get(hObject,'String')) returns contents of algiersDisease as a double


% --- Executes during object creation, after setting all properties.
function algiersDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to algiersDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cairoDisease_Callback(hObject, eventdata, handles)
% hObject    handle to cairoDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cairoDisease as text
%        str2double(get(hObject,'String')) returns contents of cairoDisease as a double


% --- Executes during object creation, after setting all properties.
function cairoDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cairoDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function riyadhDisease_Callback(hObject, eventdata, handles)
% hObject    handle to riyadhDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of riyadhDisease as text
%        str2double(get(hObject,'String')) returns contents of riyadhDisease as a double


% --- Executes during object creation, after setting all properties.
function riyadhDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to riyadhDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function istanbulDisease_Callback(hObject, eventdata, handles)
% hObject    handle to istanbulDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of istanbulDisease as text
%        str2double(get(hObject,'String')) returns contents of istanbulDisease as a double


% --- Executes during object creation, after setting all properties.
function istanbulDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to istanbulDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function baghdadDisease_Callback(hObject, eventdata, handles)
% hObject    handle to baghdadDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of baghdadDisease as text
%        str2double(get(hObject,'String')) returns contents of baghdadDisease as a double


% --- Executes during object creation, after setting all properties.
function baghdadDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to baghdadDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function karachiDisease_Callback(hObject, eventdata, handles)
% hObject    handle to karachiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of karachiDisease as text
%        str2double(get(hObject,'String')) returns contents of karachiDisease as a double


% --- Executes during object creation, after setting all properties.
function karachiDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to karachiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tehranDisease_Callback(hObject, eventdata, handles)
% hObject    handle to tehranDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tehranDisease as text
%        str2double(get(hObject,'String')) returns contents of tehranDisease as a double


% --- Executes during object creation, after setting all properties.
function tehranDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tehranDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function moscowDisease_Callback(hObject, eventdata, handles)
% hObject    handle to moscowDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of moscowDisease as text
%        str2double(get(hObject,'String')) returns contents of moscowDisease as a double


% --- Executes during object creation, after setting all properties.
function moscowDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to moscowDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mumbaiDisease_Callback(hObject, eventdata, handles)
% hObject    handle to mumbaiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mumbaiDisease as text
%        str2double(get(hObject,'String')) returns contents of mumbaiDisease as a double


% --- Executes during object creation, after setting all properties.
function mumbaiDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mumbaiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function delhiDisease_Callback(hObject, eventdata, handles)
% hObject    handle to delhiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of delhiDisease as text
%        str2double(get(hObject,'String')) returns contents of delhiDisease as a double


% --- Executes during object creation, after setting all properties.
function delhiDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to delhiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function chennaiDisease_Callback(hObject, eventdata, handles)
% hObject    handle to chennaiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of chennaiDisease as text
%        str2double(get(hObject,'String')) returns contents of chennaiDisease as a double


% --- Executes during object creation, after setting all properties.
function chennaiDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to chennaiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kolkataDisease_Callback(hObject, eventdata, handles)
% hObject    handle to kolkataDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kolkataDisease as text
%        str2double(get(hObject,'String')) returns contents of kolkataDisease as a double


% --- Executes during object creation, after setting all properties.
function kolkataDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kolkataDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function shanghaiDisease_Callback(hObject, eventdata, handles)
% hObject    handle to shanghaiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of shanghaiDisease as text
%        str2double(get(hObject,'String')) returns contents of shanghaiDisease as a double


% --- Executes during object creation, after setting all properties.
function shanghaiDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shanghaiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function beijingDisease_Callback(hObject, eventdata, handles)
% hObject    handle to beijingDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beijingDisease as text
%        str2double(get(hObject,'String')) returns contents of beijingDisease as a double


% --- Executes during object creation, after setting all properties.
function beijingDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beijingDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function taipeiDisease_Callback(hObject, eventdata, handles)
% hObject    handle to taipeiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of taipeiDisease as text
%        str2double(get(hObject,'String')) returns contents of taipeiDisease as a double


% --- Executes during object creation, after setting all properties.
function taipeiDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to taipeiDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit49_Callback(hObject, eventdata, handles)
% hObject    handle to osakaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of osakaDisease as text
%        str2double(get(hObject,'String')) returns contents of osakaDisease as a double


% --- Executes during object creation, after setting all properties.
function edit49_CreateFcn(hObject, eventdata, handles)
% hObject    handle to osakaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function seoulDisease_Callback(hObject, eventdata, handles)
% hObject    handle to osakaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of osakaDisease as text
%        str2double(get(hObject,'String')) returns contents of osakaDisease as a double


% --- Executes during object creation, after setting all properties.
function seoulDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to osakaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hongKongDisease_Callback(hObject, eventdata, handles)
% hObject    handle to hongKongDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hongKongDisease as text
%        str2double(get(hObject,'String')) returns contents of hongKongDisease as a double


% --- Executes during object creation, after setting all properties.
function hongKongDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hongKongDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sydneyDisease_Callback(hObject, eventdata, handles)
% hObject    handle to sydneyDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sydneyDisease as text
%        str2double(get(hObject,'String')) returns contents of sydneyDisease as a double


% --- Executes during object creation, after setting all properties.
function sydneyDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sydneyDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function osakaDisease_Callback(hObject, eventdata, handles)
% hObject    handle to osakaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of osakaDisease as text
%        str2double(get(hObject,'String')) returns contents of osakaDisease as a double


% --- Executes during object creation, after setting all properties.
function osakaDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to osakaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bangkokDisease_Callback(hObject, eventdata, handles)
% hObject    handle to bangkokDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bangkokDisease as text
%        str2double(get(hObject,'String')) returns contents of bangkokDisease as a double


% --- Executes during object creation, after setting all properties.
function bangkokDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bangkokDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hoChiMinchCityDisease_Callback(hObject, eventdata, handles)
% hObject    handle to hoChiMinchCityDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hoChiMinchCityDisease as text
%        str2double(get(hObject,'String')) returns contents of hoChiMinchCityDisease as a double


% --- Executes during object creation, after setting all properties.
function hoChiMinchCityDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hoChiMinchCityDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function manilaDisease_Callback(hObject, eventdata, handles)
% hObject    handle to manilaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of manilaDisease as text
%        str2double(get(hObject,'String')) returns contents of manilaDisease as a double


% --- Executes during object creation, after setting all properties.
function manilaDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to manilaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jakartaDisease_Callback(hObject, eventdata, handles)
% hObject    handle to jakartaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jakartaDisease as text
%        str2double(get(hObject,'String')) returns contents of jakartaDisease as a double


% --- Executes during object creation, after setting all properties.
function jakartaDisease_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jakartaDisease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function medicCards_Callback(hObject, eventdata, handles)
% hObject    handle to medicCards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of medicCards as text
%        str2double(get(hObject,'String')) returns contents of medicCards as a double


% --- Executes during object creation, after setting all properties.
function medicCards_CreateFcn(hObject, eventdata, handles)
% hObject    handle to medicCards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function researcherCards_Callback(hObject, eventdata, handles)
% hObject    handle to researcherCards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of researcherCards as text
%        str2double(get(hObject,'String')) returns contents of researcherCards as a double


% --- Executes during object creation, after setting all properties.
function researcherCards_CreateFcn(hObject, eventdata, handles)
% hObject    handle to researcherCards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function operationECards_Callback(hObject, eventdata, handles)
% hObject    handle to operationECards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of operationECards as text
%        str2double(get(hObject,'String')) returns contents of operationECards as a double


% --- Executes during object creation, after setting all properties.
function operationECards_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operationECards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function scientistCards_Callback(hObject, eventdata, handles)
% hObject    handle to scientistCard (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of scientistCard as text
%        str2double(get(hObject,'String')) returns contents of scientistCard as a double


% --- Executes during object creation, after setting all properties.
function scientistCard_CreateFcn(hObject, eventdata, handles)
% hObject    handle to scientistCard (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit62_Callback(hObject, eventdata, handles)
% hObject    handle to medicCards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of medicCards as text
%        str2double(get(hObject,'String')) returns contents of medicCards as a double


% --- Executes during object creation, after setting all properties.
function edit62_CreateFcn(hObject, eventdata, handles)
% hObject    handle to medicCards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit63_Callback(hObject, eventdata, handles)
% hObject    handle to researcherCards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of researcherCards as text
%        str2double(get(hObject,'String')) returns contents of researcherCards as a double


% --- Executes during object creation, after setting all properties.
function edit63_CreateFcn(hObject, eventdata, handles)
% hObject    handle to researcherCards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function operationsECards_Callback(hObject, eventdata, handles)
% hObject    handle to operationsECards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of operationsECards as text
%        str2double(get(hObject,'String')) returns contents of operationsECards as a double


% --- Executes during object creation, after setting all properties.
function operationsECards_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operationsECards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit65_Callback(hObject, eventdata, handles)
% hObject    handle to edit65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit65 as text
%        str2double(get(hObject,'String')) returns contents of edit65 as a double


% --- Executes during object creation, after setting all properties.
function edit65_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit66_Callback(hObject, eventdata, handles)
% hObject    handle to scientistCards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of scientistCards as text
%        str2double(get(hObject,'String')) returns contents of scientistCards as a double


% --- Executes during object creation, after setting all properties.
function scientistCards_CreateFcn(hObject, eventdata, handles)
% hObject    handle to scientistCards (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outbreak0_Callback(hObject, eventdata, handles)
% hObject    handle to outbreak0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outbreak0 as text
%        str2double(get(hObject,'String')) returns contents of outbreak0 as a double


% --- Executes during object creation, after setting all properties.
function outbreak0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outbreak0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outbreak1_Callback(hObject, eventdata, handles)
% hObject    handle to outbreak1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outbreak1 as text
%        str2double(get(hObject,'String')) returns contents of outbreak1 as a double


% --- Executes during object creation, after setting all properties.
function outbreak1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outbreak1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outbreak2_Callback(hObject, eventdata, handles)
% hObject    handle to outbreak2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outbreak2 as text
%        str2double(get(hObject,'String')) returns contents of outbreak2 as a double


% --- Executes during object creation, after setting all properties.
function outbreak2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outbreak2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outbreak3_Callback(hObject, eventdata, handles)
% hObject    handle to outbreak3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outbreak3 as text
%        str2double(get(hObject,'String')) returns contents of outbreak3 as a double


% --- Executes during object creation, after setting all properties.
function outbreak3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outbreak3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outbreak4_Callback(hObject, eventdata, handles)
% hObject    handle to outbreak4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outbreak4 as text
%        str2double(get(hObject,'String')) returns contents of outbreak4 as a double


% --- Executes during object creation, after setting all properties.
function outbreak4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outbreak4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outbreak5_Callback(hObject, eventdata, handles)
% hObject    handle to outbreak5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outbreak5 as text
%        str2double(get(hObject,'String')) returns contents of outbreak5 as a double


% --- Executes during object creation, after setting all properties.
function outbreak5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outbreak5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outbreak6_Callback(hObject, eventdata, handles)
% hObject    handle to outbreak6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outbreak6 as text
%        str2double(get(hObject,'String')) returns contents of outbreak6 as a double


% --- Executes during object creation, after setting all properties.
function outbreak6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outbreak6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outbreak7_Callback(hObject, eventdata, handles)
% hObject    handle to outbreak7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outbreak7 as text
%        str2double(get(hObject,'String')) returns contents of outbreak7 as a double


% --- Executes during object creation, after setting all properties.
function outbreak7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outbreak7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outbreak8_Callback(hObject, eventdata, handles)
% hObject    handle to outbreak8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outbreak8 as text
%        str2double(get(hObject,'String')) returns contents of outbreak8 as a double


% --- Executes during object creation, after setting all properties.
function outbreak8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outbreak8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit77_Callback(hObject, eventdata, handles)
% hObject    handle to edit77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit77 as text
%        str2double(get(hObject,'String')) returns contents of edit77 as a double


% --- Executes during object creation, after setting all properties.
function edit77_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function winnerorLoser_Callback(hObject, eventdata, handles)
% hObject    handle to winnerorLoser (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of winnerorLoser as text
%        str2double(get(hObject,'String')) returns contents of winnerorLoser as a double


% --- Executes during object creation, after setting all properties.
function winnerorLoser_CreateFcn(hObject, eventdata, handles)
% hObject    handle to winnerorLoser (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
