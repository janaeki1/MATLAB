% hmwk11.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630 Homework #11
% Due Date: 11/6/18
%
% Description:
% This program creates a GUI using a selected image from a dialog box. The
% user then selects 2 points (anywhere in the GUI, in any order) and
% selects part of the image.


function varargout = hmwk11(varargin)
% HMWK11 MATLAB code for hmwk11.fig
%      HMWK11, by itself, creates a new HMWK11 or raises the existing
%      singleton*.
%
%      H = HMWK11 returns the handle to a new HMWK11 or the handle to
%      the existing singleton*.
%
%      HMWK11('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HMWK11.M with the given input arguments.
%
%      HMWK11('Property','Value',...) creates a new HMWK11 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before hmwk11_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to hmwk11_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help hmwk11

% Last Modified by GUIDE v2.5 12-Nov-2018 20:07:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hmwk11_OpeningFcn, ...
                   'gui_OutputFcn',  @hmwk11_OutputFcn, ...
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


% --- Executes just before hmwk11 is made visible.
function hmwk11_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to hmwk11 (see VARARGIN)

% Choose default command line output for hmwk11
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes hmwk11 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = hmwk11_OutputFcn(hObject, eventdata, handles) 
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


% Opens dialog box with image files
[filename, pathname] = uigetfile({'*.jpg'; '*.bmg'; '*.jpeg';...
    '*.gif'; '*.bmp'; '*.png'}, 'Open your pic.');
if isequal(filename,0) % if user clicked 'Cancel' or close button
   disp('No image has been selected.');
else
    x = imread(strcat(pathname,filename)); % imports file using file and path values
    y = x;
    imshow(y);
    
    [a, b] = ginput(2); % prompts user to select two points on image

    a(1) = uint32(a(1)); % converts coordinate to integer
    a(2) = uint32(a(2)); % converts coordinate to integer
    b(1) = uint32(b(1)); % converts coordinate to integer
    b(2) = uint32(b(2)); % converts coordinate to integer
    
    % alters coordinates, if needed, so that they remain within boundaries
    if a(1) == 0
        a(1) = 1;
    end
    
    if a(2) == 0
        a(2) = 1;
    end
    
    if b(1) == 0
        b(1) = 1;
    end
    
    if b(2) == 0
        b(2) = 1;
    end
    
    % puts smaller coordinate in first index
    if a(1) > a(2)
        temp = a(1);
        a(1) = a(2);
        a(2) = temp;
    end
    
    if b(1) > b(2)
        temp = b(1);
        b(1) = b(2);
        b(2) = temp;
    end
    
    % creates a cropped image using selected points
    y = x(b(1):b(2), a(1):a(2));
    
    figure(); % creates figure
    imshow(y); % displays cropped image
    title('Cropped Version'); % titles cropped image
    
    
    guidata(hObject, handles);
end


