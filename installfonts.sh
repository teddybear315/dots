FONTLIST=("FiraCode" "FiraMono" "Hack")

for ((i=0; i<3; i++)); do
    FILE=${FONTLIST[i]}.tar.xz
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/${FONTLIST[i]}.tar.xz
    mv ${FILE} ~
    mkdir ~/${FONTLIST[i]}
    tar -xf ~/${FILE} -C ~/${FONTLIST[i]}
    cp -r ~/${FONTLIST[i]} ~/.local/share/fonts/
    rm ~/${FILE}
    rm -rf ~/${FONTLIST[i]}
done
