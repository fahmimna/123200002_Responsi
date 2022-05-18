function varargout = Responsi(varargin)
% RESPONSI MATLAB code for Responsi.fig
%      RESPONSI, by itself, creates a new RESPONSI or raises the existing
%      singleton*.
%
%      H = RESPONSI returns the handle to a new RESPONSI or the handle to
%      the existing singleton*.
%
%      RESPONSI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESPONSI.M with the given input arguments.
%
%      RESPONSI('Property','Value',...) creates a new RESPONSI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Responsi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Responsi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Responsi

% Last Modified by GUIDE v2.5 18-May-2022 14:55:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Responsi_OpeningFcn, ...
                   'gui_OutputFcn',  @Responsi_OutputFcn, ...
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


% --- Executes just before Responsi is made visible.
function Responsi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Responsi (see VARARGIN)

% Choose default command line output for Responsi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Responsi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Responsi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in tombol1_002.
function tombol1_002_Callback(hObject, eventdata, handles)
% hObject    handle to tombol1_002 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('Dataset-Hostel-Jepang.csv');
opts.SelectedVariableNames = (3:9);
data = readmatrix('Dataset-Hostel-Jepang.csv', opts);
set(handles.uitable1,'data',data);


% --- Executes when selected cell(s) is changed in uitable1.
function uitable1_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in price_002.
function price_002_Callback(hObject, eventdata, handles)
% hObject    handle to price_002 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in distance_002.
function distance_002_Callback(hObject, eventdata, handles)
% hObject    handle to distance_002 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in clean_002.
function clean_002_Callback(hObject, eventdata, handles)
% hObject    handle to clean_002 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in value_002.
function value_002_Callback(hObject, eventdata, handles)
% hObject    handle to value_002 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in hasil_002.
function hasil_002_Callback(hObject, eventdata, handles)
% hObject    handle to hasil_002 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
price_002 = str2double(get(handles.price_002,'String'));
