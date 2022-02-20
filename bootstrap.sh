for i in ~/.vim ~/.vimrc ~/.gvimrc ~/.ideavimrc ~/vimfiles; do [ -e $i ] && mv $i $i.old; done
git clone git@github.com:atourino/vimfiles.git ~/vimfiles
cd ~/vimfiles
rake
