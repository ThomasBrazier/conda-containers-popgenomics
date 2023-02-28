# Unix Shell


## How the shell works and how to get help

commands, arguments

help

manual


Essayez le bouton TAB pour remplir automatiquement ce que vous tapez. Par exemple, si vous avez besoin de taper Documents, commencez à taper une commande (disons cd Docu, puis appuyez sur la touche TAB) et le terminal remplira le reste, ce qui vous donnera cd Documents.

Ctrl+C et Ctrl+Z sont utilisés pour arrêter toute commande qui fonctionne actuellement. Ctrl+C arrêtera et terminera la commande, tandis que Ctrl+Z mettra simplement la commande en pause.

variables
echo $var


Copy-paste
shift+Ctrl+c
shift+Ctrl+v

autocompletion

commands historic
Ctrl + r

filesystem
Your home

Volumes
/home, /scratch and /groups


### Warning: what you must not do, unless you understand well what you do

No save

No trash

Snapshots only in /home and /groups

## Navigate

Path. Absolute vs relative

cd
cd ~
cd ..

    cd .. (avec deux points) pour se déplacer d’un répertoire vers le haut
    cd pour aller directement au dossier principal (home)
    cd- (avec un tiret) pour passer à votre répertoire précédent

pwd

ls
ls -lah

Autocompletion

Wildcards

## View files

cat, zcat

less

head

tail



## Move and modify files

cp

mv

rm
rm -r
Prudence. On ne peux pas annuler, ne demande pas de confirmation

mkdir

gunzip, gzip


rsync


## Selection

grep

### Basic Regular Expressions


## Scripts

make a script

run a script




## More advanced operations


### Pipe


### For and while loops

read a file line by line


## Connections


ssh

wget

scp

### tmux



## Machines, servers, virtual environment: know where you are.

Local machine

Distant machine
Server (the cluster front end)
Nodes
conda env



## Permissions

Call sys admin 

chmod

chown



## Ressources

https://doc.ubuntu-fr.org/tutoriel/console_commandes_de_base
https://help.ubuntu.com/community/UsingTheTerminal?action=show&redirect=BasicCommands
https://cheatography.com/davechild/cheat-sheets/linux-command-line/
https://devhints.io/bash
https://www.guru99.com/linux-commands-cheat-sheet.html
