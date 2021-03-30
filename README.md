# dotfiles

My dotfiles target macOS systems.

### Setup

1. Install Xcode

```
# this will install clang, git, make, python3, swift, svn
$ xcode-select --install
```

2. Setup SSH, Git (Japanese)

- https://qiita.com/ucan-lab/items/21d62f1beaa8007c4ca9
- https://qiita.com/ucan-lab/items/aadbedcacbc2ac86a2b3
- https://qiita.com/ucan-lab/items/e02f2d3a35f266631f24

3. Clone this repo

```
$ git clone https://github.com/omoriyasuo/dotfiles.git ~/dotfiles
```

4. Install homebrew

```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

5. Install packages via brew

Installed packages are in `/usr/local/celler` and linked to `/usr/local/bin`.

```
$ brew bundle ---global
```

6. Create symbolic link

```
$ chmod +x link.sh && ./link.sh
```

7. setup macos system preferences

```
$ chmod +x .macos && ./.macos
```

### nvm

```
$ mkdir ~/.nvm
$ nvm install 12.21.0 (for particular repository)
```

### yarn

```
$ ln -s ~/.nvm/versions/node/v12.21.0 /usr/local/opt/node/
$ brew install yarn --ignore-dependencies
```

### VSCode

Install extensions.

```
$ chmod +x vscode/extensions.sh & exec ./vscode/extensions.sh
```

### Alfred4

Go to preferences > Features.
then check Folders and Images.

### Screensaver

Go to System Preferences > Desktop & Screen Saver > choose `Fliqlo`
