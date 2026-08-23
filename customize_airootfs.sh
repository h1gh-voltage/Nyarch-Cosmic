#!/bin/bash
# Enable services
systemctl enable bluetooth
systemctl enable grub-btrfsd

# Fix calamares policy
rm -rf /usr/share/polkit-1/actions/com.github.calamares.calamares.policy
mv /usr/share/polkit-1/actions/com.github.calamares.calamares.polic /usr/share/polkit-1/actions/com.github.calamares.calamares.policy
# Install Flatpaks
flatpak mask "org.freedesktop.Platform.GL.nvidia*"
flatpak install -y org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark
flatpak --remove mask "org.freedesktop.Platform.GL.nvidia*"

# Apply Nyarch Copy
wget https://nyarchlinux.moe/NyarchCopy.tar.gz && tar -xvf NyarchCopy.tar.gz && cd NyarchCopy && sudo bash ./apply_airoot.sh && rm -rf NyarchCopy*

chmod +x /etc/xdg/autostart/autostart.sh
