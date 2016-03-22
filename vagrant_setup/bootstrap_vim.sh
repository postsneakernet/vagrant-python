# non-privileged
mkdir ~/.vim ~/.vim/autoload ~/.vim/bundle ~/.vim/colors ~/.vim/ftplugin

curl -so ~/.vimrc https://raw.githubusercontent.com/postsneakernet/dotfiles/master/vimrc
curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

wget -qO ~/.vim/colors/wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
wget -qO ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492

cd ~/.vim/bundle
git clone -q https://github.com/Lokaltog/vim-powerline.git
git clone -q https://github.com/kien/ctrlp.vim.git
git clone -q --recursive https://github.com/davidhalter/jedi-vim.git
