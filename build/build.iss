#define MyAppName "Birdex"
#define MyAppVersion "0.1"
#define MyAppPublisher "Algorithm LLC"
#define MyAppURL "http://birdex.org"
#define DesktopIcon "Birdex"

[Setup]
SourceDir=..\
WizardSmallImageFile=build\birdex.bmp
AppId={{5BFB8E10-04A2-45C5-AED6-D3FAE6EE3D02}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
Compression=lzma2
LZMANumBlockThreads=2
SolidCompression=yes
OutputDir=.\build\out
OutputBaseFilename=birdex-setup-{#MyAppVersion}
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Files]
Source: "nwjs-x64\*"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: ignoreversion recursesubdirs
Source: "nwjs-x86\*"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: solidbreak ignoreversion recursesubdirs

Source: "app\*"; DestDir: "{app}"; Flags: solidbreak ignoreversion recursesubdirs






[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppName}.exe"; WorkingDir: "{app}";
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppName}.exe"; WorkingDir: "{app}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppName}.exe"; WorkingDir: "{app}"; Description: "{cm:LaunchProgram,Birdex}"; Flags: postinstall shellexec
