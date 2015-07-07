# MeshlabAuto
Automation of Meshlab


MLX file is a Meshlab Filter Script. MeshLab is an open source, portable, and extensible system for the processing and editing 
of unstructured 3D triangular meshes.


I've just created a batch file with necessary loops and calls the .mlx file that will run the meshlabserver 
command. However one should know that the resulting files will be saved in the same directory where 
meshlabserver.exe is.

Step 1:
Put the obj files you want to process into a folder with nothing else inside

Step 2 (create a mlx file containing the operations you want to apply)
- open meshlab
- import a mesh
- apply your filter(s)
- now under 'Filters' menu you have 'Show current filter script'
- click on "SaveScript" at the bottom and save your mlx file (not in the obj folder !)
- you can close meshlab (no need to save the scene)\

Step 3 (editing a simple vbs file and launch batch process)
- Download the vbs script
- Edit the vbs file with notepad and replace with your folders where it's needed ( lines 5 / 6 )
- Save and double click on the vbs file.....et voila...!

Each .OBJ should have been processed with the filters you choose in step 2 and the output obj files are prefixed with "OUT_" and saved in the same folder

PS: this is a 64 bit version, if you're using a 32 bit windows, just replace %ProgramFiles(x86)% (line 19) with %ProgramFiles%


