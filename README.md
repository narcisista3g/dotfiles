
<h1 align="center">
  Dotfiles
</h1>

<h4 align="center">Um padrão do sistemas unix hoje em dia é guardar as mais diversas configurações em arquivos iniciados com ponto: .gitignore, .bash, .bashrc, .profile, .m2, .zsh e por ai vai.</h4>

## Como Usar

Os dotfiles são arquivos de configuração especialmente para o sistema operacional linux, este é para o arco linux com bspwm.

```bash
# Clone o repositorio do github
$ git clone https://github.com/narcisista3g/dotfiles ~/.dotfiles

# Vá ao diretorio
$ cd ~/.dotfiles/

# Faça um backup dos arquivos
$ make backup

# Remova os arquivos existêntes
$ make remove

# Instale os arquivos
$ make install

# Restaure os seus arquivos se precisar
$ make restaure
```
