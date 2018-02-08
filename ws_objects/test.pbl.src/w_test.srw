$PBExportHeader$w_test.srw
forward
global type w_test from window
end type
type mle_1 from multilineedit within w_test
end type
type cb_1 from commandbutton within w_test
end type
type dw_1 from datawindow within w_test
end type
end forward

global type w_test from window
integer width = 7397
integer height = 3312
boolean titlebar = true
string title = "タイトル未設定"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
string pointer = "HyperLink!"
boolean center = true
mle_1 mle_1
cb_1 cb_1
dw_1 dw_1
end type
global w_test w_test

on w_test.create
this.mle_1=create mle_1
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.mle_1,&
this.cb_1,&
this.dw_1}
end on

on w_test.destroy
destroy(this.mle_1)
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;long ll_i

for ll_i = 1 to 100
	dw_1.insertrow(0)
next
end event

type mle_1 from multilineedit within w_test
integer x = 64
integer y = 1980
integer width = 1568
integer height = 1144
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS UI Gothic"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_test
integer x = 1472
integer y = 52
integer width = 384
integer height = 76
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = shiftjis!
fontpitch fontpitch = variable!
fontfamily fontfamily = modern!
string facename = "MS UI Gothic"
string text = "プレビュー"
end type

event clicked;//
dw_1.Object.DataWindow.Print.Preview = TRUE

end event

type dw_1 from datawindow within w_test
event mess pbm_other
integer x = 5
integer y = 128
integer width = 6761
integer height = 1820
integer taborder = 10
string title = "未設定"
string dataobject = "d_1"
boolean hscrollbar = true
boolean vscrollbar = true
string icon = "Query5!"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event mess;CHOOSE CASE Message.Number
	CASE 522
		if abs(IntHigh(wParam) )>= 120 then
			//mouse scrolling works as expected
			//messagebox("Mousescrolling","Mouse scrolling works - "+string(IntHigh(wParam)))
		else
			//mouse scrolling does not work at all
			//messagebox("Mousescrolling","Mouse scrolling does not work - "+string(IntHigh(wParam)))
		end if
		mle_1.text += string(abs(IntHigh(wParam) ))  + '+' +string(abs(IntHigh(lParam) )) 
		
end choose

//mle_1.text += string(abs(IntHigh(wParam) ))
end event

