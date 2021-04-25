function varargout = gui_fuzzy(varargin)
% GUI_FUZZY MATLAB code for gui_fuzzy.fig
%      GUI_FUZZY, by itself, creates a new GUI_FUZZY or raises the existing
%      singleton*.
%
%      H = GUI_FUZZY returns the handle to a new GUI_FUZZY or the handle to
%      the existing singleton*.
%
%      GUI_FUZZY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_FUZZY.M with the given input arguments.
%
%      GUI_FUZZY('Property','Value',...) creates a new GUI_FUZZY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_fuzzy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_fuzzy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_fuzzy

% Last Modified by GUIDE v2.5 25-Apr-2021 02:24:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_fuzzy_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_fuzzy_OutputFcn, ...
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


% --- Executes just before gui_fuzzy is made visible.
function gui_fuzzy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_fuzzy (see VARARGIN)

% Choose default command line output for gui_fuzzy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_fuzzy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_fuzzy_OutputFcn(hObject, eventdata, handles) 
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
a=readfis('fuzzy');
out=evalfis([handles.style handles.fault], a);
set(handles.lolos,'String',out);



function lolos_Callback(hObject, eventdata, handles)
% hObject    handle to lolos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lolos as text
%        str2double(get(hObject,'String')) returns contents of lolos as a double


% --- Executes during object creation, after setting all properties.
function lolos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lolos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function style_Callback(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
style = str2double(get(hObject,'string'));
handles.style=style;
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of style as text
%        str2double(get(hObject,'String')) returns contents of style as a double


% --- Executes during object creation, after setting all properties.
function style_CreateFcn(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fault_Callback(hObject, eventdata, handles)
% hObject    handle to fault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fault = str2double(get(hObject,'string'));
handles.fault=fault;
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of fault as text
%        str2double(get(hObject,'String')) returns contents of fault as a double


% --- Executes during object creation, after setting all properties.
function fault_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function keterangan_Callback(hObject, eventdata, handles)
% hObject    handle to keterangan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of keterangan as text
%        str2double(get(hObject,'String')) returns contents of keterangan as a double


% --- Executes during object creation, after setting all properties.
function keterangan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to keterangan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
