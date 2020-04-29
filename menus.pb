Procedure OnMenuEvent()
  menuItem = EventMenu()
  Select menuItem
    Case  0
      MessageRequester("Test", "Menu Item " + menuItem)  
    Case 1
      End
   EndSelect
EndProcedure

; Load Library for jpg image
UseJPEGImageDecoder()

; Create Window
OpenWindow(0, 0, 0, 1280, 720, "Simple Image Processor", #PB_Window_ScreenCentered | #PB_Window_MinimizeGadget)

CreateMenu(0, WindowID(0))
MenuTitle("File")
MenuItem(0, "Open...")
MenuBar()
MenuItem(1, "Quit...")

; Load Image
ImageGadget(0, 0, 0, 1280, 720, 0, #PB_Image_Border) 

BindEvent(#PB_Event_Menu, @OnMenuEvent())

; Keep window open until the user closes
Repeat
  windowEvent = WaitWindowEvent()
Until windowEvent = #PB_Event_CloseWindow


; IDE Options = PureBasic 5.72 (Windows - x64)
; CursorPosition = 16
; Folding = -
; EnableXP
; CompileSourceDirectory