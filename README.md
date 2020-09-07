
# INSTALL

```bash
# BUILD + CLANG + GIT
sudo apt install build-essential clang git

# BREW
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# SCRIPT LANGUAGES
brew install nodejs python2 python3 ruby

# YARN
npm install -g yarn

# SDKMAN / JAVA / MAVEN
curl -s "https://get.sdkman.io" | bash
sdk install java
sdk install maven

# ZSH
sudo apt install zsh
sudo usermod -s /usr/bin/zsh $(whoami)

# OH MY ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# PURE
sudo mkdir -p /usr/local/share/zsh/site-functions
sudo chmod 2777 /usr/local/share/zsh/site-functions
npm install -g pure-prompt
sudo chmod 2775 /usr/local/share/zsh/site-functions

# CTAGS / FIRA CODE / XCLIP
sudo apt install ctags fonts-firacode xclip

# BEAUTIFY
npm install -g js-beautify

# NEOVIM
brew install neovim
sudo update-alternatives --install /usr/bin/vim vim $(which nvim) 100

# NEOVIM PROVIDERS
pip2 install --user --upgrade pynvim
pip3 install --user --upgrade pynvim
gem install neovim
npm install -g neovim

# NEOVIM PLUGS
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# GROOVY LANGUAGE SERVER
sudo mkdir -p /opt/groovy-language-server
sudo chown $(whoami): /opt/groovy-language-server
(
  cd /opt/groovy-language-server
  curl -fLo master.zip https://github.com/prominic/groovy-language-server/archive/master.zip
  unzip master.zip
  rm master.zip
  cd groovy-language-server-master
  chmod +x gradlew
  ./gradlew build
  mv build/libs/groovy-language-server-master-all.jar ..
)

# NEOVIM PLUGINS
vim --headless +PlugInstall +UpdateRemotePlugins +qa
(cd ~/.config/coc/extensions; yarn add coc-java coc-json coc-yaml)

# NEOVIM-GTK
sudo apt install libatk1.0-dev libcairo2-dev libgdk-pixbuf2.0-dev libglib2.0-dev libgtk-3-dev libpango1.0-dev
brew install rust
sudo mkdir -p /opt/neovim-gtk
sudo chown $(whoami): /opt/neovim-gtk
git clone https://github.com/daa84/neovim-gtk.git /opt/neovim-gtk/src
(cd /opt/neovim-gtk/src; PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/share/pkgconfig make PREFIX=/opt/neovim-gtk/install install)
sudo update-alternatives --install /usr/bin/gvim gvim /opt/neovim-gtk/install/bin/nvim-gtk 100

# CONFIGS
git clone https://github.com/l3eegbee/bashconfig.git ~/.bashconfig
(cd ~/.bashconfig; ./install)"

```

