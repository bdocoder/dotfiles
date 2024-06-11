dotfiles=(
  '.gitconfig'
  '.npmrc'
  '.zshrc'
  '.zimrc'
)

for file in "${dotfiles[@]}"; do
  target_dir="$(dirname $HOME/$file)"
  mkdir -p $target_dir
  ln -sf $PWD/$file $target_dir
done
