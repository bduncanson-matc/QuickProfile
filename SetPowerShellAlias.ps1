if (!(Test-Path $profile)) { 
    New-Item -ItemType File -Path $profile -Force #if profile doesnt not exist make it
}

if (!(Get-Command ep -ErrorAction SilentlyContinue)) {
    function Edit-Profile {
        notepad $profile #if ep is used make it
    }
    Set-Alias ep Edit-Profile
}
