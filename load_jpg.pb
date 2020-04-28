; Load Library for jpg image
UseJPEGImageDecoder()

; Create Window
OpenWindow(0, 0, 0, 1280, 720, "Simple Image Processor")

; Load Image
LoadImage(0, "C:\Users\eduardo\Pictures\ve02.jpg")
ImageGadget(0, 0, 0, 1280, 720, ImageID(0), #PB_Image_Border) 

; Keep window open until the user closes
Repeat
  windowEvent = WaitWindowEvent()
Until windowEvent = #PB_Event_CloseWindow



; IDE Options = PureBasic 5.72 (Windows - x64)
; CursorPosition = 13
; EnableXP