#!/usr/bin/env bash

# title created with: https://fsymbols.com/generators/carty/
echo -e "$(
cat <<EOF
\033[0;32m
╱╱╭╮╱╱╭╮╭━╮╭╮
╱╱┃┃╱╭╯╰┫╭╯┃┃
╭━╯┣━┻╮╭╯╰┳┫┃╭━━┳━━╮
┃╭╮┃╭╮┃┣╮╭╋┫┃┃┃━┫━━┫
┃╰╯┃╰╯┃╰┫┃┃┃╰┫┃━╋━━┃
╰━━┻━━┻━┻╯╰┻━┻━━┻━━╯
\033[0m
EOF
)"

echo "My personal dotfiles 🥸"
echo 

cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

# general stuff
xcode-select --install

# first thing to install is brew
if [ "$(uname)" == "Darwin" ]; then
	source ./brew/install.sh
    echo "🟢 brew" 
fi
if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "🟠 brew" 
fi

for folder in *; do
	install_file=$folder/install.sh
	if test -f "$install_file"; then
        if [ "$folder" == "brew" ]; then
            continue
        fi
	    echo $install_file
		source $folder/install.sh
        echo "🟢 $folder" 
        cd ..
	fi
done

