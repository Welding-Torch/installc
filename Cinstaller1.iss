; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Install C"
#define MyAppVersion "1.0"
#define MyAppPublisher "Siddharth Bhatia"
#define MyAppURL "https://www.installc.org/"
#define MyAppExeName "InstallC.exe"

; SIDDHARTH I'm changing this to D drive just for testing purposes, change it back to C: in final.
#define DefaultInstallationDir "C:\MinGW"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{89C0F75C-42E5-4DC6-8C5E-AE6BD5BABD59}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={#DefaultInstallationDir}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
DisableWelcomePage=no
DisableReadyPage=yes
WizardSizePercent=120
WizardImageFile=c_wizardimage.bmp
WizardSmallImageFile=c_wizardimagesmall.bmp
WizardImageStretch=no
WizardImageAlphaFormat=premultiplied

; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest


OutputBaseFilename=installc
SetupIconFile=C_Programming_Language.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ChangesEnvironment=yes
VersionInfoVersion=0.0.0.1 
// Always double-check VersionInfoVersion when pushing a new release

; This adds an uninstaller.
UninstallDisplayIcon=C_Programming_Language.ico
; This specifys a custom name for the program's entry in the Add/Remove Programs Control Panel applet.
UninstallDisplayName="InstallC Package"
UninstallDisplayName=uninstallc

[Messages]
WelcomeLabel2=This setup will install the following software on your computer:%n%nGCC 13.2.0, GDB 13.2, LLVM/Clang/LLD/LLDB 16.0.6, GNU Binutils 2.41, GNU Make 4.4.1, PExports 0.47, dos2unix 7.5.0, Yasm 1.3.0, NASM 2.16.01, JWasm 2.12pre, ccache version 4.8.2, CMake 3.27.2, ninja 1.11.1.git.kitware.jobserver-1, Doxygen 1.9.7%n%nAt least 1 GB of free disk space is required.
FinishedLabelNoIcons=C has been successfully installed on your system. Learn how to use it at installc.org/learn.
ClickFinish=Click Finish to exit Setup.

ClickNext=Click Install to continue, or Cancel to exit Setup.

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Users\bhati\Downloads\winlibs-x86_64-posix-seh-gcc-13.2.0-llvm-16.0.6-mingw-w64ucrt-11.0.0-r1\mingw64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; \
    ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{app}\bin";

; Adding Flags: uninsdeletevalue will remove the changes made to PATH when uninstalling

[Code]
// This pararaph changes the button label from 'Next' to 'Install' on the Welcome Page. 
procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpWelcome then
  begin
    WizardForm.NextButton.Caption := SetupMessage(msgButtonInstall);
    //WizardForm.WelcomeLabel2.Height := 500;
    //WizardForm.WelcomeLabel2.AutoSize := True;
    //WizardForm.PageDescriptionLabel.Width := WizardForm.PageDescriptionLabel.Width - ScaleY(150);
  end
  else
    //WizardForm.NextButton.Caption := SetupMessage(msgButtonNext);
end;


