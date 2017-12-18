#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <EditConstants.au3>
#include <ComboConstants.au3>

; Create GUI Function
Func _MainGUI()
	Local $oMainGUI = ObjCreate("Scripting.Dictionary")
    ; Create a GUI
    $oMainGUI("mainWindow") = GUICreate("PCAT Commander", 210, 200)
	GUISetIcon("PCAT_commander.ico")
	; Create a label for Combobox
	$oMainGUI("platfLabel") = GUICtrlCreateLabel("Platform:", 10, 10)
    ; Create a combobox control.
    $oMainGUI("platfCombo") = GUICtrlCreateCombo("", 70, 10, 120, 30, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
	; Create a label for IP
	$oMainGUI("ipLabel") = GUICtrlCreateLabel("IP address:", 10, 40)
	; Create a inputBox for IP address
	$oMainGUI("ipBox") = GUICtrlCreateInput("IP address", 70, 40, 120, 20, BitOR($GUI_SS_DEFAULT_INPUT,$ES_READONLY))
	; Create a label for TimeZone
	$oMainGUI("tzLabel") = GUICtrlCreateLabel("Timezone:", 10, 60)
	; Create a label for Timezone value
	$oMainGUI("tzBox") = GUICtrlCreateInput("Timezone", 70, 60, 120, 20, BitOR($GUI_SS_DEFAULT_INPUT,$ES_READONLY))
	; Create a label for Login
	$oMainGUI("loginLabel") = GUICtrlCreateLabel("Login:", 10, 90)
	; Create an inputBox for Login
	$oMainGUI("loginBox") = GUICtrlCreateInput("", 70, 90, 120, 20)
	; Create a label for Password
	$oMainGUI("passwordLabel") = GUICtrlCreateLabel("Password:", 10, 110)
	; Create an inputBox for Password
	$oMainGUI("passwordBox") = GUICtrlCreateInput("", 70, 110, 120, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_PASSWORD))
	; Create Auto Select Latest Version checkBox
	$oMainGUI("versionCheckBox") = GUICtrlCreateCheckbox("Auto select the latest version", 10, 140, $ES_READONLY)
	; Create a Run button
	$oMainGUI("runButton") = GUICtrlCreateButton("Run PCAT", 110, 170, 85, 25)
	return $oMainGUI
EndFunc

Func _MsgBoxPCATRunning($hPCAT)
	MsgBox(4144,"PCAT commander info", "PCAT '"  & WinGetTitle($hPCAT) & "' is already running!")
EndFunc