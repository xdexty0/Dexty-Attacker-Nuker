import sys,os
from colorama import Fore

print(Fore.MAGENTA+"""
██████╗ ███████╗██╗  ██╗████████╗██╗   ██╗
██╔══██╗██╔════╝╚██╗██╔╝╚══██╔══╝╚██╗ ██╔╝
██║  ██║█████╗   ╚███╔╝    ██║    ╚████╔╝ 
██║  ██║██╔══╝   ██╔██╗    ██║     ╚██╔╝
██████╔╝███████╗██╔╝ ██╗   ██║      ██║
╚═════╝ ╚══════╝╚═╝  ╚═╝   ╚═╝      ╚═╝  
              Discord:   https://t.me/dexty34
                > Press Enter                                         

""")

def display_menu():
    print(Fore.GREEN + """
    1: Dexty-Tool (Hacking Tools)      | 2: Dexty-Paid-Tools
    3: Info (about-us)
    """)

def execute_command(command):
    if command == '1':
        os.system('cmd /k "python Dexty-Tool/dexty-tool.py"' if os.name == 'nt' else 'python Dexty-Tool/dexty-tool.py')
    elif command == '2':
        print(Fore.RED + 'This option is not available yet! Coming soon...')
        #os.system('cmd /k "python Dexty-Web-Hacktool/web_bugger.py"')
    elif command == '3':
        os.system('cmd /k "python info.py"' if os.name == 'nt' else 'python info.py')

        display_menu()
    else:
        print('Invalid option! Please choose the correct one.')

while True:
    display_menu()
    command = input('> ')

    if command.lower() == 'exit':
        break

    execute_command(command)
