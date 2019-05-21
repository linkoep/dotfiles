#Add any config from bashrc
source ~/.bashrc

#Homebrew path added elsewhere
#Add DrMemory to path
export PATH=$PATH:~/DrMemory-MacOS-1.11.0-2/bin

#Add ruby and ruby user to path
export PATH=$HOME/gems/bin:/usr/local/opt/ruby/bin/ruby:/Users/linuskoepfer/.gem/ruby/2.3.0/bin:$PATH
export GEM_HOME=$HOME/gems

#Add brew python packages to pythonpath
#export PYTHONPATH=/usr/local/Cellar/python@2/2.7.15_2/Frameworks/Python.framework/Versions/2.7/lib/python2.7:$PYTHONPATH
#Add pip python packages to pythonpath
#export PYTHONPATH=/usr/local/lib/python2.7:$PYTHONPATH
export PYTHONPATH=/usr/local/lib/python3

#aliases
alias cdclasses="cd /Volumes/Linus_SSD/College/2018-19/"
alias cdprojects="cd /Volumes/Linus_SSD/Side\ Projects/"
alias dohw="cp /Volumes/Linus_SSD/Templates/hw.tex ./hw.tex && vim hw.tex"
alias gl="git log --oneline --all --graph --decorate"
alias clearDns="networksetup -setdnsservers Wi-Fi empty"
alias joinPdf="python /System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py"

#Configure shell prompt
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\@ \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#alias dotfiles to use "side" repo
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfilesRepo/ --work-tree=$HOME"
