#!/bin/bash

code --list-extensions > vs_code_extensions_list.txt && git add . && git commit -m'BACKUP DONE!' && git push
