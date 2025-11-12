dotfiles=(
  '.npmrc'
  '.zshrc'
  '.zimrc'
)

for file in "${dotfiles[@]}"; do
  target_dir="$(dirname $HOME/$file)"
  mkdir -p $target_dir
  ln -sf $PWD/$file $target_dir
done

echo "setting zsh as the default shell"
chsh -s /bin/zsh
