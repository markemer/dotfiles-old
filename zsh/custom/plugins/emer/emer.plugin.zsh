function cdp() {
    portname=$1
    if [[ $portname == "" ]]; then
        echo "Provide a portname"
        return
    fi
    cd $(port dir ${portname})
}

function macver() {
    echo "macOS $(sw_vers -productVersion) $(sw_vers -buildVersion)" 
    echo "Xcode $(xcodebuild -version | awk '{print $NF}' | tr '\n' ' ')"
}

function cenv() {
    case "$1" in
    print)
        echo "ARCH=$ARCH"
        echo "CC=$CC"
        echo "CXX=$CXX"
        echo "CFLAGS=$CFLAGS"
        echo "CPPFLAGS=$CPPFLAGS"
        echo "LDFLAGS=$LDFLAGS"
        echo "DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH"
        ;;
    unset)
        unset CC
        unset CXX
        unset CFLAGS
        unset CPPFLAGS
        unset LDFLAGS
        unset DYLD_LIBRARY_PATH
        ;;
    *)
        echo "Usage: $0 {print|unset}"
        ;;
    esac
}

func cpsshkey() {
    SSH_PUBLIC=$HOME/.ssh/id_krypton.pub
    ssh $1 'cat >> .ssh/authorized_keys' < $SSH_PUBLIC
}

func xman() {
    case "$1" in
    pdf)
        man -t "$2" | open -f -a /Applications/Preview.app
        ;;
    text)
        MANWIDTH=160 
        MANPAGER='col -bx' 
        man $2 | bbedit -
        ;;
    *)
        echo "Usage: $0 {print|unset}"
        ;;
    esac
}