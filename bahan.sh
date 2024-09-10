# spam_tools.sh
install_brutal_w4() {
    echo "Installing Brutal-W4..."
    git clone https://github.com/Sxp-ID/Brutal-W4.git
    cd Brutal-W4
    git pull
    make install
    ./main
}

install_tzspam() {
    echo "Installing TZspam..."
    git clone https://github.com/TZSEC7/TZspam.git
    cd TZspam
    python TZsec7.py
}
