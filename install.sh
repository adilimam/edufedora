# Fix keyboard mappings
sudo cp -n /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.bck
sudo cp pc_keyboard_mapping.txt /usr/share/X11/xkb/symbols/pc

# Fix sound
# OLD
# from https://old.reddit.com/r/chrultrabook/comments/uc0b6i/howto_audio_on_apollolake_devices_under_linux/
# sudo cp sof-apl-da7219.tplg /lib/firmware/intel/sof-tplg/
# sudo cp inteldsp.conf /etc/modprobe.d/
#
# NEW
git clone https://github.com/eupnea-linux/audio-scripts.git
cd audio-scripts
./setup-audio
cd ..

# Install necessary extensions
sudo dnf install gnome-extensions-app gnome-shell-extension-dash-to-dock -y
sudo dnf install gnome-tweaks -y

# Install the Fedora Educational Software group:
sudo dnf group install --with-optional "Educational Software" -y

# Install additional useful software:
sudo dnf install ffmpeg-free gcompris-qt scratch thonny chemtool pymol dia gimp inkscape scribus klavaro vym wordnet audacity denemo atomix gbrainy -xboard -y

# Remove packages that don't work well without internet access or with limited compute/storage, or are duplicitive
sudo dnf remove gnome-boxes catgen gnome-photos kiten anki pairs ktouch fantasdic skychart corrida cantor parley kwordquiz

# MANUAL: enable dash to dock, enable Applications menu, enable minimize and maximize buttons
