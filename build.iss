#define MyAppName "Birdex"
#define MyAppVersion "0.1"
#define MyAppPublisher "Algorithm LLC"
#define MyAppURL "http://birdex.org"
#define DesktopIcon "Birdex"

[Setup]
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
OutputDir=./build/
OutputBaseFilename=birdex-setup-{#MyAppVersion}

[Languages]
Name: "default"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Files]
Source: "nwjs/*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
Source: "app/*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppName}.exe"; WorkingDir: "{app}"; IconFilename: "{app}/birdex.ico"
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppName}.exe"; WorkingDir: "{app}"; IconFilename: "{app}/birdex.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppName}.exe"; WorkingDir: "{app}"; Description: "{cm:LaunchProgram,Birdex}"; Flags: postinstall shellexec
