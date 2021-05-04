//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Wr.h"
#include <Windows.h>
#include <time.h>
#include <mmsystem.h>
#include <string.h>
//---------------------------------------------------------------------------
//#pragma comment(lib, "winmm.lib")
#pragma package(smart_init)
#pragma resource "*.dfm"

time_t timemark;
struct tm *thetime;
int thehour;
int themin;
HANDLE hToken;
TOKEN_PRIVILEGES tkp;
HANDLE closeprocess = NULL;
LPCTSTR closewindow;
DWORD prozessid;
HWND fwindow;

TForm1 *Form1;

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
timemark = time(0);
thetime = localtime(&timemark);
thehour = thetime->tm_hour;
themin = thetime->tm_min;
stundencomb->Text=thehour;
minutencomb->Text=themin;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::diezeit(TObject *Sender)
{
timemark = time(0);
thetime = localtime(&timemark);
thehour = thetime->tm_hour;
themin = thetime->tm_min;
stundenlab->Caption=thehour;
minutenlab->Caption=themin;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::starta(TObject *Sender)
{
status->Caption="Gestartet";
status->Font->Color=clGreen;
Wecktimer->Enabled=true;
start->Enabled=false;
stop->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::stopa(TObject *Sender)
{
status->Caption="Gestoppt";
status->Font->Color=clRed;
Wecktimer->Enabled=false;
PlaySound(NULL,NULL,NULL);
stop->Enabled=false;
start->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::iftime(TObject *Sender)
{
if (thehour == stundencomb->Text && themin == minutencomb->Text )
{
 if (soundr->Checked)
 {
  //MessageBox(NULL,"Sound wird abgespielt","es geht!",MB_OK);
 PlaySound("WeckerAlarm.wav",NULL,SND_FILENAME|SND_ASYNC|SND_LOOP);
 status->Caption="Zeit zum aufwachen!";
 Wecktimer->Enabled=false;
 }
 if (shutdownr->Checked)
 {
  shutdownr->Checked=false;

  OpenProcessToken(GetCurrentProcess(),TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hToken);
  LookupPrivilegeValue(NULL, SE_SHUTDOWN_NAME, &tkp.Privileges[0].Luid);
  tkp.PrivilegeCount = 1;
  tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
  AdjustTokenPrivileges(hToken, FALSE, &tkp, 0, (PTOKEN_PRIVILEGES) NULL, 0);

  ExitWindowsEx(EWX_FORCE | EWX_POWEROFF,NULL);
  //exit(1);
  //MessageBox(NULL,"PC wird heruntergefahren","es geht!",MB_OK);
 }
 if(killprog->Checked)
 {
  fwindow = FindWindowW(NULL,chooseprog->Text.c_str());
  if(fwindow!=NULL)
   {
   //MessageBox(NULL, "tets","test", MB_OK);
   //SetForegroundWindow(fwindow);
  GetWindowThreadProcessId(fwindow, &prozessid);
  closeprocess = OpenProcess(PROCESS_ALL_ACCESS, FALSE, prozessid);
  TerminateProcess(closeprocess,NULL);
   }
  }
 }
}
//---------------------------------------------------------------------------





