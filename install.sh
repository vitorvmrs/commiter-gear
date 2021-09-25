mkdir ~/.commiter
cp src/version.sh ~/.commiter/version.sh
cp src/gear-second.sh ~/.commiter/gear-second.sh
cp src/gear-third.sh ~/.commiter/gear-third.sh

if [ $SHELL == "/usr/bin/zsh" ] 
then
    cp ~/.zshrc ~/.commiter/.zshrc-bkp
    echo 'alias gs="bash ~/.commiter/gear-second.sh"' >> ~/.zshrc
    echo 'alias gt="bash ~/.commiter/gear-third.sh"' >> ~/.zshrc
    echo 'alias gv="bash ~/.commiter/version.sh"' >> ~/.zshrc
elif [ $SHELL == "bash" ] 
then
    cp ~/.bashrc ~/.commiter/.bashrc-bkp 
    echo 'alias gs="bash ~/.commiter/gear-second.sh"' >> ~/.bashrc
    echo 'alias gt="bash ~/.commiter/gear-third.sh"' >> ~/.bashrc
    echo 'alias gv="bash ~/.commiter/version.sh"' >> ~/.bashrc
else 
    echo "Shell not suported"
    exit 1
fi

echo "Install complete 😁"
echo "To test exec gv command in you terminal"

exec $SHELL