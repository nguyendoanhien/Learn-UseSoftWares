Attribute VB_Name = "Module1"
Public Sub changeObjectSizeInch()
  On Error GoTo Err_Handler
 
  Dim lWidth As Long, lHeight As Long
  
            
'Loop Through Each Slide in ActivePresentation
  For Each sld In ActiveWindow.Selection.SlideRange
     For Each shp In sld.Shapes
            
  If ActiveWindow.Selection.Type = ppSelectionNone Then
    MsgBox "Please select embedded OLE object", vbExclamation, "Make Selection"
  Else
    
    lHeight = shp.Height
    lWidth = shp.Width
      
    shp.Height = 7.5 * 72 * lHeight / lWidth
    shp.Width = 10 * 72
    'Set the dimensions of the selected shape in my ACTIVE WINDOW
 With sld.Shapes.Range
 .Align msoAlignCenters, True
 .Align msoAlignMiddles, True
 End With
  End If

        Next shp

  Next sld
  
  
Exit_Label:
  On Error Resume Next
  Set shp = Nothing
  Exit Sub
Err_Handler:
  MsgBox Err.Description, vbCritical
  Resume Exit_Label
End Sub
