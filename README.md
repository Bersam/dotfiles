# Overview
This is most **dotfiles** that i use on my servers!


# Installation

## Git Modules
```bash
> git submodule init
> git submodule update
```

## Package Installation

### Ubuntu
```bash
> sudo apt install aria2 bash fish zsh git hg tmux vim
```


## Create Links

### aria2/

```bash
> ln -s /home/$USER/dotfiles/aria2 /home/$USER/.aria2
```

### bash/
```bash
> ln -s /home/$USER/dotfiles/bash /home/$USER/.bash
```

### bin/
```bash
> ln -s /home/$USER/dotfiles/bin /home/$USER/.local/bin
```

### fish/
```bash
> ln -s /home/$USER/dotfiles/fish /home/$USER/.config/fish
```

### git/
```bash
> ln -s /home/$USER/dotfiles/git /home/$USER/.config/git
```

### hg/
```bash
> ln -s /home/$USER/dotfiles/hg /home/$USER/.hg
```

### tmux/
```bash
> ln -s /home/$USER/dotfiles/tmux/tmux.conf /home/$USER/.tmux/.tmux.conf
> Or (in case you're using byobu)
> ln -s /home/$USER/dotfiles/tmux/tmux.conf /home/$USER/.byobu/.tmux.conf
```

### vim/
```bash
> ln -s /home/$USER/dotfiles/vim /home/$USER/.vim
```

### zsh/oh-my-zsh/
```bash
> ln -s /home/$USER/dotfiles/zsh/oh-my-zsh /home/$USER/.oh-my-zsh
> ln -s /home/$USER/dotfiles/zsh/zshrc /home/$USER/.zshrc
```

# Collaborators
* Bersam Karbasion
* Ali Vakilzadeh,
* Samim Pezeshki,
* Omid Momenzadeh

