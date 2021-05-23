# To install:
#   brew tap charlyzzz/awsetup https://github.com/cantino/mcfly
#   brew install mcfly
#
# To remove:
#   brew uninstall mcfly
#   brew untap cantino/mcfly

class Awsetup < Formula
    version 'v0.1'
    desc "Awsetup"
    homepage "https://github.com/charlyzzz/awsetup"
    url "https://github.com/Charlyzzz/awsetup/releases/download/v0.1/release.zip"
    sha256 "f7ca4f7272b1a235be7400f247c7568bf61e3f17bea90b23229721850a182f19"
  
    def install
      bin.install "awsetup"
    end
  
    def caveats
      <<~EOS
        ONE MORE STEP!
  
        Add the following to the end of your ~/.bashrc, ~/.zshrc, or ~/.config/fish/config.fish file.
  
        Bash:
          eval "$(mcfly init bash)"
  
        Zsh:
          eval "$(mcfly init zsh)"
  
        Fish:
          mcfly init fish | source
      EOS
    end
  end
  