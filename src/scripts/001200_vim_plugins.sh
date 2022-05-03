#!/bin/bash

mkdir -p "$HOME/.vim/bundle"
cd "$HOME/.vim/bundle"

declare -A plugins
plugins=( \
  ["colorschemes"]="https://github.com/flazz/vim-colorschemes.git" \
  ["easy-motion"]="https://github.com/Lokaltog/vim-easymotion.git" \
  ["git-gutter"]="git://github.com/airblade/vim-gitgutter.git" \
  ["git-pathogen"]="https://github.com/tpope/vim-pathogen.git" \
  ["matchit"]="https://github.com/vim-scripts/matchit.zip.git" \
  ["nerdcommenter"]="https://github.com/preservim/nerdcommenter.git" \
  ["python-indent"]="https://github.com/vim-scripts/indentpython.vim.git" \
  ["syntastic"]="https://github.com/vim-syntastic/syntastic.git" \
  ["tagbar"]="https://github.com/majutsushi/tagbar.git" \
  ["vim-endwise"]="https://github.com/tpope/vim-endwise.git" \
  ["vim-fugitive"]="https://github.com/tpope/vim-fugitive.git" \
  ["vim-json"]="https://github.com/elzr/vim-json.git" \
  ["vim-markdown"]="https://github.com/plasticboy/vim-markdown.git" \
  ["vim-obession"]="https://github.com/tpope/vim-obsession.git" \
  ["vim-repeat"]="https://github.com/tpope/vim-repeat.git" \
  ["vim-surround"]="https://github.com/tpope/vim-surround.git" \
  ["vim-trailing-whitespace"]="https://github.com/bronson/vim-trailing-whitespace.git" \
  ["you-complete-me"]="https://github.com/ycm-core/YouCompleteMe.git" \
)

for plugin_dir_name in "${!plugins[@]}"; do
  if [ ! -d "$plugin_dir_name" ]; then
    plugin_repo="${plugins[$plugin_dir_name]}"
    echo "\nCloning $plugin_repo into $plugin_dir_name"
    git clone "$plugin_repo" "$plugin_dir_name"
  fi
done
