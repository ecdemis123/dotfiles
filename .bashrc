function findy() { find ./ -type f -name '*rb' | xargs grep $1 -in; }
function replacy() { find ./ -type f -name '*.rb' -exec gsed -i'' -e 's/'$1'/'$2'/g' {} \;; }
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
function findyyml() { find ./ -type f -name '*yml' | xargs grep $1; }
# function linty() { git ls-files -m | xargs ls -1 2>/dev/null | grep '\.rb$' | xargs bundle exec rubocop -a; }
function linty() { git diff --stat --cached origin/master | xargs bundle exec rubocop -a; }

export VAULT_ADDR=https://vault-prod.shave.io:8200
export GITHUB_TOKEN=blahblahblah
export EDITOR=vim
export CHEATCOLORS=true

export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

release-exec () {
  POD=$(kubectl --kubeconfig=$HOME/.kube/kube-uw2-release.config -n release get pods -l app=$1 | grep Running | awk '{print $1}' | tail -n 1)
  kubectl --kubeconfig=$HOME/.kube/kube-uw2-release.config -n release exec -it $POD bash
}

release-list-pods () {
  kubectl --kubeconfig=$HOME/.kube/kube-uw2-release.config -n release get pods -l app=$1
}

release-logs () {
  kubectl --kubeconfig=$HOME/.kube/kube-uw2-release.config -n release logs $1
}

release-crashing-logs() {
  POD=`release-list-pods $1 | grep CrashLoopBackOff | awk '{print $1}' | tail -n 1`
  if [ -z "$POD" ]
  then
    echo "No pods crashing"
  else
    release-logs $POD
  fi
}

production-exec () {
  POD=$(kubectl --kubeconfig=$HOME/.kube/kube-uw2-production.config -n production get pods -l app=$1 | grep Running | awk '{print $1}' | tail -n 1)
  kubectl --kubeconfig=$HOME/.kube/kube-uw2-production.config -n production exec -it $POD bash
}

production-list-pods () {
  kubectl --kubeconfig=$HOME/.kube/kube-uw2-production.config -n production get pods -l app=$1
}

production-logs () {
  kubectl --kubeconfig=$HOME/.kube/kube-uw2-production.config -n production logs $1
}

production-crashing-logs() {
  POD=`production-list-pods $1 | grep CrashLoopBackOff | awk '{print $1}' | tail -n 1`
  if [ -z "$POD" ]
  then
    echo "No pods crashing"
  else
    production-logs $POD
  fi
}

export PATH="/Users/edemis/bin/Sencha/Cmd:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
PATH=$PATH:/Users/edemis/code/scripts
