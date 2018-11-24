function cdp() {
    portname=$1
    if [[ $portname == "" ]]; then
        echo "Provide a portname"
        return
    fi
    cd $(port dir ${portname})
}