function varargout = tictactoe(varargin)
% TICTACTOE MATLAB code for tictactoe.fig
%      TICTACTOE, by itself, creates a new TICTACTOE or raises the existing
%      singleton*.
%
%      H = TICTACTOE returns the handle to a new TICTACTOE or the handle to
%      the existing singleton*.
%
%      TICTACTOE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TICTACTOE.M with the given input arguments.
%
%      TICTACTOE('Property','Value',...) creates a new TICTACTOE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tictactoe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tictactoe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tictactoe

% Last Modified by GUIDE v2.5 06-Dec-2018 20:55:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tictactoe_OpeningFcn, ...
                   'gui_OutputFcn',  @tictactoe_OutputFcn, ...
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


% --- Executes just before tictactoe is made visible.
function tictactoe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tictactoe (see VARARGIN)

% Choose default command line output for tictactoe
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tictactoe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tictactoe_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global pl_move;
global mat;
global count;

if pl_move == 1
    set(handles.pushbutton1, 'String', 'X');
    mat(1) = 1;
    pl_move = 2;
    set(handles.edit1, 'String', sprintf("O\'s Turn"));
else
    set(handles.pushbutton1, 'String', 'O');
    mat(1) = 2;
    pl_move = 1;
    set(handles.edit1, 'String', sprintf("X\'s Turn"));
end

set(handles.pushbutton1, 'Enable', 'Off');
count = count + 1;

result = winnerCalculate(mat);
if result == 1
    set(handles.edit1, 'String', sprintf("X's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result == 2
    set(handles.edit1, 'String', sprintf("O's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result ~= 1 && result ~= 2 && count == 9
    set(handles.edit1, 'String', sprintf("It's a Draw!"));
end

guidata(hObject, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global pl_move;
global mat;
global count;

if pl_move == 1
    set(handles.pushbutton2, 'String', 'X');
    mat(2) = 1;
    pl_move = 2;
    set(handles.edit1, 'String', sprintf("O\'s Turn"));
else
    set(handles.pushbutton2, 'String', 'O');
    mat(2) = 2;
    pl_move = 1;
    set(handles.edit1, 'String', sprintf("X\'s Turn"));
end

set(handles.pushbutton2, 'Enable', 'Off');
count = count + 1;

result = winnerCalculate(mat);
if result == 1
    set(handles.edit1, 'String', sprintf("X's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result == 2
    set(handles.edit1, 'String', sprintf("O's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result ~= 1 && result ~= 2 && count == 9
    set(handles.edit1, 'String', sprintf("It's a Draw!"));
end

guidata(hObject, handles);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global pl_move;
global mat;
global count;

if pl_move == 1
    set(handles.pushbutton3, 'String', 'X');
    mat(3) = 1;
    pl_move = 2;
    set(handles.edit1, 'String', sprintf("O\'s Turn"));
else
    set(handles.pushbutton3, 'String', 'O');
    mat(3) = 2;
    pl_move = 1;
    set(handles.edit1, 'String', sprintf("X\'s Turn"));
end

set(handles.pushbutton3, 'Enable', 'Off');
count = count + 1;

result = winnerCalculate(mat);
if result == 1
    set(handles.edit1, 'String', sprintf("X's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result == 2
    set(handles.edit1, 'String', sprintf("O's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result ~= 1 && result ~= 2 && count == 9
    set(handles.edit1, 'String', sprintf("It's a Draw!"));
end

guidata(hObject, handles);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global pl_move;
global mat;
global count;

if pl_move == 1
    set(handles.pushbutton4, 'String', 'X');
    mat(4) = 1;
    pl_move = 2;
    set(handles.edit1, 'String', sprintf("O\'s Turn"));
else
    set(handles.pushbutton4, 'String', 'O');
    mat(4) = 2;
    pl_move = 1;
    set(handles.edit1, 'String', sprintf("X\'s Turn"));
end

set(handles.pushbutton4, 'Enable', 'Off');
count = count + 1;

result = winnerCalculate(mat);
if result == 1
    set(handles.edit1, 'String', sprintf("X's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result == 2
    set(handles.edit1, 'String', sprintf("O's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result ~= 1 && result ~= 2 && count == 9
    set(handles.edit1, 'String', sprintf("It's a Draw!"));
end

guidata(hObject, handles);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global pl_move;
global mat;
global count;

if pl_move == 1
    set(handles.pushbutton5, 'String', 'X');
    mat(5) = 1;
    pl_move = 2;
    set(handles.edit1, 'String', sprintf("O\'s Turn"));
else
    set(handles.pushbutton5, 'String', 'O');
    mat(5) = 2;
    pl_move = 1;
    set(handles.edit1, 'String', sprintf("X\'s Turn"));
end

set(handles.pushbutton5, 'Enable', 'Off');
count = count + 1;

result = winnerCalculate(mat);
if result == 1
    set(handles.edit1, 'String', sprintf("X's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result == 2
    set(handles.edit1, 'String', sprintf("O's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result ~= 1 && result ~= 2 && count == 9
    set(handles.edit1, 'String', sprintf("It's a Draw!"));
end

guidata(hObject, handles);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global pl_move;
global mat;
global count;

if pl_move == 1
    set(handles.pushbutton6, 'String', 'X');
    mat(6) = 1;
    pl_move = 2;
    set(handles.edit1, 'String', sprintf("O\'s Turn"));
else
    set(handles.pushbutton6, 'String', 'O');
    mat(6) = 2;
    pl_move = 1;
    set(handles.edit1, 'String', sprintf("X\'s Turn"));
end

set(handles.pushbutton6, 'Enable', 'Off');
count = count + 1;

result = winnerCalculate(mat);
if result == 1
    set(handles.edit1, 'String', sprintf("X's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result == 2
    set(handles.edit1, 'String', sprintf("O's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result ~= 1 && result ~= 2 && count == 9
    set(handles.edit1, 'String', sprintf("It's a Draw!"));
end

guidata(hObject, handles);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global pl_move;
global mat;
global count;

if pl_move == 1
    set(handles.pushbutton7, 'String', 'X');
    mat(7) = 1;
    pl_move = 2;
    set(handles.edit1, 'String', sprintf("O\'s Turn"));
else
    set(handles.pushbutton7, 'String', 'O');
    mat(7) = 2;
    pl_move = 1;
    set(handles.edit1, 'String', sprintf("X\'s Turn"));
end

set(handles.pushbutton7, 'Enable', 'Off');
count = count + 1;

result = winnerCalculate(mat);
if result == 1
    set(handles.edit1, 'String', sprintf("X's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result == 2
    set(handles.edit1, 'String', sprintf("O's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result ~= 1 && result ~= 2 && count == 9
    set(handles.edit1, 'String', sprintf("It's a Draw!"));
end

guidata(hObject, handles);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global pl_move;
global mat;
global count;

if pl_move == 1
    set(handles.pushbutton8, 'String', 'X');
    mat(8) = 1;
    pl_move = 2;
    set(handles.edit1, 'String', sprintf("O\'s Turn"));
else
    set(handles.pushbutton8, 'String', 'O');
    mat(8) = 2;
    pl_move = 1;
    set(handles.edit1, 'String', sprintf("X\'s Turn"));
end

set(handles.pushbutton8, 'Enable', 'Off');
count = count + 1;

result = winnerCalculate(mat);
if result == 1
    set(handles.edit1, 'String', sprintf("X's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result == 2
    set(handles.edit1, 'String', sprintf("O's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result ~= 1 && result ~= 2 && count == 9
    set(handles.edit1, 'String', sprintf("It's a Draw!"));
end

guidata(hObject, handles);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global pl_move;
global mat;
global count;

if pl_move == 1
    set(handles.pushbutton9, 'String', 'X');
    mat(9) = 1;
    pl_move = 2;
    set(handles.edit1, 'String', sprintf("O\'s Turn"));
else
    set(handles.pushbutton9, 'String', 'O');
    mat(9) = 2;
    pl_move = 1;
    set(handles.edit1, 'String', sprintf("X\'s Turn"));
end

set(handles.pushbutton9, 'Enable', 'Off');
count = count + 1;

result = winnerCalculate(mat);
if result == 1
    set(handles.edit1, 'String', sprintf("X's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result == 2
    set(handles.edit1, 'String', sprintf("O's Win"));
    set(handles.pushbutton1, 'Enable', 'Off');
    set(handles.pushbutton2, 'Enable', 'Off');
    set(handles.pushbutton3, 'Enable', 'Off');
    set(handles.pushbutton4, 'Enable', 'Off');
    set(handles.pushbutton5, 'Enable', 'Off');
    set(handles.pushbutton6, 'Enable', 'Off');
    set(handles.pushbutton7, 'Enable', 'Off');
    set(handles.pushbutton8, 'Enable', 'Off');
    set(handles.pushbutton9, 'Enable', 'Off');
elseif result ~= 1 && result ~= 2 && count == 9
    set(handles.edit1, 'String', sprintf("It's a Draw!"));
end

guidata(hObject, handles);

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global pl_move;
global mat;
global count;

pl_move = 1;
mat = zeros(3,3);
count = 0;

set(handles.edit1, 'String', sprintf("Tic-Tac-Toe"));
set(handles.pushbutton1, 'String', sprintf(""));
set(handles.pushbutton2, 'String', sprintf(""));
set(handles.pushbutton3, 'String', sprintf(""));
set(handles.pushbutton4, 'String', sprintf(""));
set(handles.pushbutton5, 'String', sprintf(""));
set(handles.pushbutton6, 'String', sprintf(""));
set(handles.pushbutton7, 'String', sprintf(""));
set(handles.pushbutton8, 'String', sprintf(""));
set(handles.pushbutton9, 'String', sprintf(""));
set(handles.pushbutton1, 'Enable', 'On');
set(handles.pushbutton2, 'Enable', 'On');
set(handles.pushbutton3, 'Enable', 'On');
set(handles.pushbutton4, 'Enable', 'On');
set(handles.pushbutton5, 'Enable', 'On');
set(handles.pushbutton6, 'Enable', 'On');
set(handles.pushbutton7, 'Enable', 'On');
set(handles.pushbutton8, 'Enable', 'On');
set(handles.pushbutton9, 'Enable', 'On');


guidata(hObject, handles);

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% Calculates the winner
function result = winnerCalculate(mat)
    lines = [
        1, 2, 3;
        4, 5, 6;
        7, 8, 9;
        1, 4, 7;
        2, 5, 8;
        3, 6, 9;
        1, 5, 9;
        3, 5, 7
    ];

  result = 0;
  for i = 1:length(lines)
    a = lines(i,1);
    b = lines(i,2);
    c = lines(i,3);
    if (mat(a) && mat(a) == mat(b) && mat(a) == mat(c))
        result = mat(a);
    end
  end
  