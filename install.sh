dotfiles=(
  '.npmrc'
  '.zshrc'
  '.zimrc'
  '.config/starship.toml'
)

for file in "${dotfiles[@]}"; do
  target_dir="$(dirname $HOME/$file)"
  mkdir -p $target_dir
  ln -sf $PWD/$file $target_dir
done
