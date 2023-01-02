sudo dnf install gnome-extensions-app gnome-shell-extension-dash-to-dock
sudo dnf install gnome-tweaks

# enable dash to dock, enable Applications menu, enable minimize and maximize buttons

sudo dnf group install --with-optional "Educational Software"
sudo dnf install ffmpeg-free
sudo dnf install scratch -y
sudo dnf install thonny -y
sudo dnf install chemtool -y
sudo dnf install pymol -y
sudo dnf install dia -y
sudo dnf install gimp -y
sudo dnf install inkscape -y
sudo dnf install scribus -y    # 800 MB
sudo dnf install klavaro -y
sudo dnf install vym -y
sudo dnf install wordnet -y
sudo dnf install audacity -y
sudo dnf install denemo -y
sudo dnf install atomix -y
sudo dnf install gbrainy -y
sudo dnf install xboard -y
sudo dnf install gcompris-qt -y

sudo dnf remove gnome-boxes catgen gnome-photos kiten anki pairs ktouch fantasdic skychart corrida cantor parley kwordquiz
