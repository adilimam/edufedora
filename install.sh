# Fix keyboard mappings
sudo cp -n /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.bck
sudo cp pc_keyboard_mapping.txt /usr/share/X11/xkb/symbols/pc

# Install necessary extensions
sudo dnf install \
  ffmpeg-free \
  gnome-extensions-app \
  gnome-shell-extension-dash-to-dock \
  gnome-tweaks \
  -y

# Install additional software
sudo dnf install \
  gcompris-qt \
  gbrainy \
  blinken \
  kanagram \
  klettres \
  khangman \
  xboard \
  tuxtype2 \
  klavaro \
  scratch \
  thonny \
  pymol \
  kalzium \
  step \
  kig \
  kmplot \
  kalgebra \
  kbruch \
  marble \
  kgeography \
  glglobe \
  kstars \
  stellarium \
  denemo \
  vmpk \
  rhythmbox \
  dia \
  gimp \
  inkscape \
  scribus \
  vym \
  java-17-openjdk-devel \
  -y

# Remove packages that don't work well without internet access or with limited compute/storage
sudo dnf remove gnome-boxes gnome-photos -y

# Fix sound -- the system will reboot
git clone https://github.com/eupnea-linux/audio-scripts.git

echo "COMMENT-OUT the following line in audio-scripts/setup-audio:"
echo '   rmfile("/lib/firmware/intel/avs/max98357a-tplg.bin")'
echo "PRESS ENTER WHEN DONE. Select the avs driver at the next prompt."
read

cd audio-scripts
./setup-audio
