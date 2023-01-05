# Fix keyboard mappings
sudo cp -n /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.bck
sudo cp pc_keyboard_mapping.txt /usr/share/X11/xkb/symbols/pc

# Fix sound
git clone https://github.com/eupnea-linux/audio-scripts.git
cd audio-scripts
# Manual -- MODIFY setup-audio, comment out rmfile:
# -    rmfile("/lib/firmware/intel/avs/max98357a-tplg.bin")
# +    # rmfile("/lib/firmware/intel/avs/max98357a-tplg.bin")
./setup-audio
cd ..

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
  gbrainy \
  blinken \
  kanagram \
  klettres \
  xboard \
  tuxtype2 \
  klavaro \
  denemo \
  vmpk \
  rhythmbox \
  dia \
  gimp \
  inkscape \
  scribus \
  vym \
  -y

# Remove packages that don't work well without internet access or with limited compute/storage
sudo dnf remove gnome-boxes gnome-photos -y

# MANUAL: enable dash to dock, enable Applications menu, enable minimize and maximize buttons
