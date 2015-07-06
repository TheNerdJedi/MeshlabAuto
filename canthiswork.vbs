Dim stRep,scriptRep,meshLabRep,ext

stRep = "D:\" 'Name of the directory where the objs are
scriptRep = "D:\testBatch\test.mlx" 'Name of the directory where the mlx file is
ext = "obj"



Dim oFSO,oFl
Set oFSO = CreateObject("Scripting.FileSystemObject")

Set WshShell = WScript.CreateObject("WScript.Shell")

If oFSO.FolderExists(stRep) Then
 For each oFl in  oFSO.GetFolder(stRep).Files
   FOR EACH strExt in SPLIT(UCASE(ext),",")
      IF RIGHT(UCASE(oFl),LEN(strExt)+1) = "." & strExt THEN
         'IF 64 BIT OS
         cmd = """%ProgramFiles(x86)%\VCG\MeshLab\meshlabserver""" & "-i " & stRep & "\" & oFl.Name & " -o " & stRep & "\OUT_" & oFl.Name & " -s " & scriptRep
         WshShell.Run cmd ,1,True
      END IF
   Next
 Next
End If
