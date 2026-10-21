# devops-workstation

A small script that sets up my Linux workstation from scratch with one command.

I wanted a clean, repeatable way to build my DevOps environment on Fedora (WSL),
without doing the same manual steps every time.

## What it does

- Updates the system (`dnf upgrade`)
- Installs my everyday tools: zsh, vim, git, tree, htop, gawk, gh
- Sets zsh as the default shell

## Usage

```bash
git clone https://github.com/Tsiaggas/devops-workstation.git
cd devops-workstation
chmod +x bootstrap.sh
./bootstrap.sh
```

Safe to run more than once. Tools that are already installed are skipped.

## Next

- [ ] Dotfiles (`.zshrc`, `.vimrc`)
- [ ] `healthcheck.sh`: disk, memory and load checks