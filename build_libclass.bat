::build_libclass.bat
::------------------------
::    Created: 26-AUG-2015
::Last Update: 26-AUG-2015
::
::WINDOWS
@echo off
:: -------------------------------------
:: Build Release Lib - Multi-Threaded
echo --- Release --------------------------------------------------------
..\..\__incrbuildnum __build_num_release -L
cl *.cpp /O2 /MT /c /EHsc /W3
lib *.obj /OUT:..\lib\libclass.lib
lib /LIST:..\lib\libclass.txt ..\lib\libclass.lib
echo libclass.lib contains:
type ..\lib\libclass.txt
:: -------------------------------------
:: Build DEBUG Lib - Multi-Threaded
echo --- Debug ----------------------------------------------------------
..\..\__incrbuildnum __build_num_debug -L
cl *.cpp /D "_DEBUG" /MTd /O2 /c /EHsc /W3
lib *.obj /OUT:..\lib\libclassD.lib
