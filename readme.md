## Wed Feb 12 2022

---

As a Front-End Web Developer, I rely heavily on VS Code.

Recently I decided to make a backup of my `settings.json`, `/snippets/` folder and a generated list of my installed extensions `vs_code_extensions_list.txt`.

I know that there is a "sync" feature but it has failed be before and I had to reinstall everything. I don't want that to happen again.

By default, they are stored here:

> Windows: `%APPDATA%\Code\User\settings.json`
>
> MacOS: `$HOME/Library/Application Support/Code/User/settings.json`
>
> Linux: `$HOME/.config/Code/User/settings.json`

---

Run this command to list all installed extensions:

    code --list-extensions

---

Run the same command and save the output to a `.txt` file:

    code --list-extensions > vs_code_extensions_list.txt`

---

If you ever have to re-install your extensions from that list, run:

_(UNTESTED)_

    cat vs_code_extensions_list.txt | xargs -n 1 code --install-extension

This will go through each line and install the extension.

---

Run this to uninstall **ALL** extensions from the list:

_(UNTESTED)_

    code --list-extensions | xargs -n 1 code --uninstall-extension

---

## To Do:

-   [x] Create a simple `bash` script that :
-   -   [x] runs a backup of installed extensions
-   -   [x] runs `git add . && git commit -m'Backup completed!'`
-   -   [x] `git push`

Because I am _NOT_ lazy, I just like automated things.
