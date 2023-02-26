# ZSH Config

This config is used for CTFs on [HTB](https://www.hackthebox.com/) and [THM](https://tryhackme.com/)

Taken from [linuxmobile's config](https://github.com/linuxmobile/hyprland-dots)

## Things to note

[Exa](https://github.com/ogham/exa) is used here as an ```ls``` replacement.

To install: follow your package manager from [here](https://github.com/ogham/exa#installation).

[Wezterm](https://wezfurlong.org/wezterm/install/linux.html) is used as the terminal


---

Within the ```aliases.zsh ``` file:

### VPN
```sh
alias htbon='openvpn <PATH/TO/HTB/OVPN/FILE>1>/dev/null &' 
alias thmon='openvpn <PATH/TO/THM/OVPN/FILE>1>/dev/null &' 
```
Change the path to these.

### File hosting
```sh
alias hostit= 'python3 -m http.server -d ~/Documents/tools 80'
```

---

Under ```utility.zsh```:

```sh
# Make folders
function mkt(){
	mkdir {nmap,content,exploits,scripts}
}

# Extract nmap information
function extractPorts(){
	ports="$(cat $1 | grep -oP '\d{1,5}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')"
	ip_address="$(cat $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)"
	echo -e "\n[*] Extracting information...\n" > extractPorts.tmp
	echo -e "\t[*] IP Address: $ip_address"  >> extractPorts.tmp
	echo -e "\t[*] Open ports: $ports\n"  >> extractPorts.tmp
	echo $ports | tr -d '\n' | xclip -sel clip
	echo -e "[*] Ports copied to clipboard\n"  >> extractPorts.tmp
	cat extractPorts.tmp; rm extractPorts.tmp
}
```

