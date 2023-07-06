# NVIM Config
My personal NVIM config. I have no idea what I'm doing but it's still fun.

## PowerShell Env
I run neovim on Windows, and prefer using PS7. To do so, download the [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701) from the Windows app store.

1. Create a new Profile under settings.
2. Change the starting directory to your preferred location.
3. Change the command line to `pwsh -Command "$env:NVIM_CONFIG='~\AppData\Local\nvim'; nvim <starting_dir>"` 

