fish_vi_key_bindings
eval (thefuck --alias | tr '\n' ';')
set -gx PATH ~/.npm-global/bin $PATH

function reloadconf 
  source ~/.config/fish/config.fish
end
function fconf 
  vim ~/.config/fish/config.fish
 end

set fish_greeting ""
