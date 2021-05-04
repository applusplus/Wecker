//---------------------------------------------------------------------------

#ifndef WrH
#define WrH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <StdCtrls.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-verwaltete Komponenten
	TLabel *pctime;
	TLabel *stundenlab;
	TLabel *doppelpunkt;
	TLabel *minutenlab;
	TComboBox *stundencomb;
	TComboBox *minutencomb;
	TLabel *Label1;
	TTimer *Zeittimer;
	TButton *start;
	TButton *stop;
	TLabel *Label2;
	TLabel *status;
	TTimer *Wecktimer;
	TLabel *copyrigt;
	TRadioButton *shutdownr;
	TRadioButton *soundr;
	TLabel *Label3;
	TRadioButton *killprog;
	TEdit *chooseprog;
	void __fastcall diezeit(TObject *Sender);
	void __fastcall starta(TObject *Sender);
	void __fastcall stopa(TObject *Sender);
	void __fastcall iftime(TObject *Sender);
private:	// Benutzer-Deklarationen
public:		// Benutzer-Deklarationen
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
